#import ../../wrapper/libavcodec/avcodec
import ../../wrapperFuthark/libav
import parser_context, codec
import ../avutil/frame
import ../avformat/formatcontext
import std/[streams,posix]

const 
  AV_NOPTS_VALUE*:int64 = 0x80000000000# -92233720368547(valor mínimo que puede almacenarse)
  AVERROR_EOF* = -541478725

type
  PacketObj* = object
    handle*: ptr AvPacket
  PacketRef* = ref PacketObj

proc `destroy=`*(val:PacketRef) =
  if val.handle != nil:
    av_packet_free(val.handle.addr)

proc newPacket*():PacketRef =
  result = new PacketRef
  result.handle = av_packet_alloc()
  if result.handle == nil:
    raise newException(ValueError, "could not allocate AVPacket")


# proc parse*(data:seq[uint8]; parser: ParserContext; c:CodecContext): Packet =
#   # https://www.ffmpeg.org/doxygen/trunk/group__lavc__parsing.html#ga691ca0258e91f99297e7726f56d8c247
#   var pkt = newPacket() # stores the compressed data
#   var ret = av_parser_parse2( parser.handle, # this is the MPEG1 parser (parser context)
#                               c.handle,      # video codec context (codec context)
#                               pkt.handle.data.addr, pkt.handle.size.addr, # AvPacket stores compressed data
#                               data[ini].addr, (data_size - ini).cint, # data read from file
#                               AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0)


iterator getPackets*(f:FileStream; parser: ParserContextRef; c:CodecContext;
                     inbufSize:int = 4096): PacketRef =
  var pkt = newPacket() # stores the compressed data
  var inbuf = newSeq[uint8](inbufSize + AV_INPUT_BUFFER_PADDING_SIZE ) 

  while not f.atEnd:
    # read raw data from the input file
    var data_size = f.readData(inbuf[0].addr, inbufSize)  # we also have readUtf8

    # use the parser to split the data into frames
    var data = inbuf
    var ini = 0
    while (data_size - ini ) > 0 and not f.atEnd:
      var ret = av_parser_parse2( parser.handle, # this is the MPEG1 parser (parser context)
                                  c.handle,      # video codec context (codec context)
                                  pkt.handle.data.addr, pkt.handle.size.addr, # AvPacket stores compressed data
                                  data[ini].addr, (data_size - ini).cint, # data read from file
                                  AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0)
                                  
      # ret = the number of bytes of the input bitstream used.
      if ret < 0:
        raise newException(ValueError, "error while parsing") 

      ini += ret

      if pkt.handle.size > 0:
        yield pkt       
      elif f.atEnd:
        break



iterator getPackets2*(f:FileStream; parser: ParserContextRef; c:CodecContext;
                     inbufSize:int = 20480; refillThreshold:int = 4096): PacketRef =            
  var inbuf = newSeq[uint8](inbufSize + AV_INPUT_BUFFER_PADDING_SIZE ) 
  var data_size = f.readData(inbuf[0].addr, inbufSize)

  var data = inbuf

  var pkt = newPacket()
  var ini = 0  
  var remainingData = data_size - ini
  var nbytes = data_size
  while remainingData > 0:
    #echo "\n\n\nINI/remainingData/inbuf.high: ", (ini, remainingData, inbuf.high) 
    var ret = av_parser_parse2(parser.handle, c.handle, 
                                pkt.handle.data.addr, pkt.handle.size.addr,
                                inbuf[ini].addr, remainingData.cint,
                                AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0)
    if ret < 0:
      raise newException(ValueError, "error while parsing")                                  
    #echo "  the number of bytes of the input bitstream used: ", ret, " bytes"
    ini += ret
    #echo "  Tamaño comprimido: ", pkt.size, " bytes"
    if pkt.handle.size > 0:
      yield pkt#decode(c, pkt, outfile)
    #echo "  new Ini/data_size", (ini,data_size)
    remainingData = data_size - ini
    #echo "  remainingData vs AUDIO_REFILL: ", (remainingData, AUDIO_REFILL_THRESH)

    #if remainingData < 0:
    #  break

    if remainingData < refillThreshold and remainingData > 0: # threshold used to read more data
      #echo "  Need to refill!"
      # Copy the remaning data to the beginning
      for i in 0..<remainingData:
        inbuf[i] = inbuf[ini + i]
      ini = 0
      #var tmp = data_size - ini
      # cast[pointer](cast[int](inbuf[0]) + remainingData)
      var len = f.readData( inbuf[remainingData].addr, # refill without overwritting
                            inbufSize - remainingData)
      #echo "     read from file: ", len, " bytes"
      if len >= 0:
        data_size = remainingData + len
        remainingData = data_size
        nbytes += len
      else:
        raise newException(ValueError, "why negative len?")

  #echo "TOTAL bytes: ", nbytes  # I looks like the file is properly read
  # flush the decoder
  #pkt.data = nil
  #pkt.size = 0
  #decode(c, pkt, outfile)

  # INFO
  # print output pcm infomations, because there have no metadata of pcm
  #var samplingFormat = c.handle.sample_fmt
  
  #if av_sample_fmt_is_planar(samplingFormat) == 0:
  #  echo "Sampling format interleaved"
  #elif av_sample_fmt_is_planar(samplingFormat) == 1:
  #  echo "Sampling format planar"



iterator getPackets*(fmtCtx:FormatContext): PacketRef =
  let pkt = newPacket()
  while true:  
    var ret = av_read_frame(fmtCtx.handle, cast[ptr AvPacket](pkt.handle))
    if ret < 0:
      break
    yield pkt

proc decode*(pkt:PacketRef; 
             decCtx:CodecContext): Frame =
  # https://ffmpeg.org/doxygen/trunk/group__lavc__decoding.html#ga58bc4bf1e0ac59e27362597e467efff3
  # Supply raw packet data as input to a decoder.
  var ret = avcodec_send_packet(decCtx.handle, pkt.handle)
  if ret < 0:
    raise newException(ValueError, "error sending a packet for decoding")
  #echo "Receiving frame"

  var frame = newFrame() 
  
  while ret >= 0:
    ret = avcodec_receive_frame(decCtx.handle, frame.handle)
    if ret == -EAGAIN or ret == AVERROR_EOF:
      #break
      return frame
    elif ret < 0:
      raise newException(ValueError, "Error during decoding")

    return frame


#[
0	success
AVERROR(EAGAIN)	input is not accepted in the current state - user must read output with avcodec_receive_frame() (once all output is read, the packet should be resent, and the call will not fail with EAGAIN).
AVERROR_EOF	the decoder has been flushed, and no new packets can be sent to it (also returned if more than 1 flush packet is sent)
AVERROR(EINVAL)	codec not opened, it is an encoder, or requires flush
AVERROR(ENOMEM)	failed to add packet to internal queue, or similar
another negative error code	legitimate decoding errors
]#


proc getFrame*(pkt: PacketRef; decCtx: CodecContext):Frame =
  var frame = newFrame()

  # send the packet with the compressed data to the decoder
  var ret = avcodec_send_packet(dec_ctx.handle, pkt.handle) 
  if ret < 0:
    raise newException(ValueError, "Error submitting the packet to the decoder")

  # read all the output frames (in general there may be any number of them
  while ret >= 0:
    # https://www.ffmpeg.org/doxygen/trunk/group__lavc__decoding.html#ga11e6542c4e66d3028668788a1a74217c
    ret = avcodec_receive_frame(decCtx.handle, frame.handle) 
    if ret == -EAGAIN or ret == AVERROR_EOF: # 	output is not available in this state - user must try to send new input
      #raise newException(ValueError, "Error during decoding")
      #return frame
      break
    elif ret < 0:  # legitimate decoding errors
      raise newException(ValueError, "Error during decoding")
    if frame.handle.nb_samples > 0:
      return frame

proc decode2*(frame: Frame; decCtx: CodecContext; f:FileStream) =
  #echo "Sample_fmt: ", decCtx.handle.sample_fmt # AV_SAMPLE_FMT_U8 	unsigned 8 bits

  # https://www.ffmpeg.org/doxygen/trunk/group__lavu__sampfmts.html#ga0c3c218e1dd570ad4917c69a35a6c77d
  var data_size = av_get_bytes_per_sample( decCtx.handle.sample_fmt )
  #echo "Bytes per sample received: ", data_size
  if data_size < 0:
    # This should not occur, checking just for paranoia
    raise newException(ValueError, "Failed to calculate data size")

  for i in 0..<frame.handle.nb_samples:
    for ch in 0..<decCtx.handle.ch_layout.nb_channels:
      f.writeData(cast[ptr uint8](cast[int](frame.handle.data[ch]) + data_size*i), data_size )
      #echo cast[ptr uint8](cast[int](decodedFrame.data[ch]) + data_size*i)[]  


proc packetRescaleTS*(pkt:PacketRef; inStream,outStream:formatcontext.Stream) =
  # copy packet
  # https://ffmpeg.org/doxygen/trunk/group__lavc__packet.html#gae5c86e4d93f6e7aa62ef2c60763ea67e
  # av_packet_rescale_ts(pkt, in_stream->time_base, out_stream->time_base);
  av_packet_rescale_ts(cast[ptr AvPacket](pkt.handle), 
                        inStream.handle.time_base, outStream.handle.time_base);


proc getStream*(fmtCtx:FormatContext; pkt:PacketRef):formatcontext.Stream =
  fmtCtx.getStream(pkt.handle.stream_index)