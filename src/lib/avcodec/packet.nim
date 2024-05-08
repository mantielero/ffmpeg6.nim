#import ../../wrapper/libavcodec/avcodec
import ../../wrapperFuthark/libav
import parser_context, codec
import ../avutil/frame
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

proc decode*(pkt:PacketRef; 
            decCtx:CodecContext): Frame =
  # https://ffmpeg.org/doxygen/trunk/group__lavc__decoding.html#ga58bc4bf1e0ac59e27362597e467efff3
  # Supply raw packet data as input to a decoder.
  var ret = avcodec_send_packet(decCtx.handle, pkt.handle)
  #echo "frameNum: ", decCtx.frame_num
  #echo "pixFmt: ", decCtx.pixfmt
  #[
  0	success
AVERROR(EAGAIN)	input is not accepted in the current state - user must read output with avcodec_receive_frame() (once all output is read, the packet should be resent, and the call will not fail with EAGAIN).
AVERROR_EOF	the decoder has been flushed, and no new packets can be sent to it (also returned if more than 1 flush packet is sent)
AVERROR(EINVAL)	codec not opened, it is an encoder, or requires flush
AVERROR(ENOMEM)	failed to add packet to internal queue, or similar
another negative error code	legitimate decoding errors
  ]#
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

    #echo "saving frame: ", $decCtx[].frame_num # decCtx[].framenum.int
    #echo repr decCtx
    #echo frame.linesize[0]
    # pgmSave(frame.data[0], # data*: array[8'i64, ptr uint8]
    #         frame.linesize[0].int, 
    #         frame.width, 
    #         frame.height, 
    #         "frame_Y.pgm")
    # pgmSave2(frame.data[1], # data*: array[8'i64, ptr uint8]
    #         frame.linesize[1].int, 
    #         #frame.width, 
    #         (frame.width/2).int,
    #         (frame.height/2).int, 
    #         #frame.height,
    #         "frame_U.pgm")            
    # pgmSave2(frame.data[2], # data*: array[8'i64, ptr uint8]
    #         frame.linesize[2].int, 
    #         #frame.width, 
    #         (frame.width/2).int,
    #         (frame.height/2).int, 
    #         #frame.height,
    #         "frame_V.pgm")    
    # ppmSave(decCtx, frame.data, frame.linesize, frame.width, frame.height, "frame.ppm")
  #echo frame.handle.width
    return frame