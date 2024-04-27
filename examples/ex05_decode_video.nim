# https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/decode_video.c
# Read from an MPEG1 video file, decode frames, and generate PGM images as
# output.
import ffmpeg6
import std/[streams,strformat]
import system

const INBUF_SIZE = 4096

proc clip[T:SomeNumber|uint8|int](n:T; lower:T = low(T); upper:T = high(T)):T =
  max(lower, min(n, upper))

proc clip(n:int; lower:int = 0; upper:int = 255):uint8 =
  max(lower, min(n, upper)).uint8

proc verticalUpsample(data:ptr uint8;wrap,width,height:int):seq[seq[uint8]] =
  for i in 0..<height:
    var line = newSeq[uint8](width)
    #if (i mod 2) == 0:
    var mySeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
    for j in 0..<width:
      line[j] = mySeqPrev[j]
    result &= line

    #else:
    #var line = newSeq[uint8](width)      
    var mySeq = cast[ptr UncheckedArray[uint8]](cast[int](data) + (i+1) * wrap)
    #var mySeq = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
    var tmp = i + 2
    if tmp == height:
      tmp = height - 1
    var mySeqNext = cast[ptr UncheckedArray[uint8]](cast[int](data) + tmp * wrap)
    tmp = i + 3
    if tmp == height:
      tmp = height - 1    
    var mySeqNext2 = cast[ptr UncheckedArray[uint8]](cast[int](data) + tmp * wrap)      
    for j in 0..<width:
      line[j] = clip( (9 * (mySeq[j].int + mySeqNext[j].int) - 
                        (mySeqPrev[j].int + mySeqNext2[j].int) + 8) shr 4)
    result &= line
  #echo result.shape
  #echo "Height: ", result.len
    #return uSeq[j]

proc horizontalUpsample(data:seq[seq[uint8]]):seq[seq[uint8]] =
  var height = data.len
  var width = data[0].len
  for i in 0..<height:
    var line = newSeq[uint8](width * 2)
    for j in 0..<width:
      #var mySeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
      #for j in 0..<width:
      var d0 = data[i][j]
      var tmp = j+1
      if tmp >= width:
        tmp = width - 1
      var d1 = data[i][tmp]
      tmp = j+2
      if tmp >= width:
        tmp = width - 1
      var d2 = data[i][tmp]
      tmp = j+3
      if tmp >= width:
        tmp = width - 1
      var d3 = data[i][tmp]      
      line[2*j] = d0
      #result &= line

      line[2*j+1] = clip( (9 * (d1.int + d2.int) - 
                          (d0.int + d3.int) + 8) shr 4)

    result &= line

# Future improvement:
# https://superuser.com/questions/1804837/extracting-frames-with-ffmpeg-yields-low-resolution-color
proc ppmSave(decCtx: ptr Avcodeccontext; 
             buf:array[0..7, ptr uint8]; 
             wrap:array[0..7, cint]; 
             xsize:int; ysize:int; 
             filename:string) =
  var f = newFileStream(filename, fmWrite)


  var data = verticalUpsample(buf[1], wrap[1], xsize, ysize)
  var dataU = horizontalUpsample(data)
  data = verticalUpsample(buf[2], wrap[2], xsize, ysize)
  var dataV = horizontalUpsample(data)


  # var outCol = newSeq[uint](ysize)
  # for i in 0..<ysize:
  #   # https://learn.microsoft.com/en-us/windows/win32/medfound/recommended-8-bit-yuv-formats-for-video-rendering
  #   # Chroma subsampling
  #   var k1 = (i/2).int
  #   var k2 = (i/2).int
  #   # if decCtx.pixfmt == Avpixfmtyuv420p:
  #   #   k2 = (i/4).int
  #   var ySeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[0]) + i * wrap[0])
  #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
  #   var vSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[2]) + k2 * wrap[2]) # Red Crominance
  #   #echo wrap[2]
  #   for j in 0..<xsize:
  #     var k3 = (j/2).int
  #     var k4 = (j/2).int



  f.write(&"P6\n{xsize} {ysize}\n255\n")
  for i in 0..<ysize:
    # https://learn.microsoft.com/en-us/windows/win32/medfound/recommended-8-bit-yuv-formats-for-video-rendering
    # Chroma subsampling
    # var k1 = (i/2).int
    # var k2 = (i/2).int
    # # if decCtx.pixfmt == Avpixfmtyuv420p:
    # #   k2 = (i/4).int
    var ySeq  = cast[ptr UncheckedArray[uint8]](cast[int](buf[0]) + i * wrap[0])

    # if (i mod 2) == 0:
    #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
    # else:
    #   var uSeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + ( - 1) * wrap[1]) # Blue Crominance
    #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
    #   var uSeqNext = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance




    #var vSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[2]) + k2 * wrap[2]) # Red Crominance
    #Cout[2*i]   = Cin[i]
    #Cout[2*i+1] = clip((9 * (Cin[i] + Cin[i+1]) - (Cin[i-1] + Cin[i+2]) + 8) >> 4);
    for j in 0..<xsize:
      # var k3 = (j/2).int
      # var k4 = (j/2).int

      #var y = 1.1643*(ySeq[j].float - 0.0625)
      #var u = uSeq[k3].float - 0.5
      #var v = vSeq[k4].float - 0.5
      # var y = ySeq[j].float
      # var u = (uSeq[k3] - 128).float
      # var v = (vSeq[k4] - 128).float




      # let r = y + 1.402 * v
      # let g = y - 0.344 * u - 0.714 * v
      # let b = y + 1.772 * u
      # Convert yuv420 to yuv422


      # Convert from yuv444 to rgb888
      var y = ySeq[j].int
      var u = dataU[i][j].int - 128
      var v = dataV[i][j].int - 128

      # let r = clip(( 298 * y           + 409 * v + 128) shr 8, 0, 255)
      # let g = clip(( 298 * y - 100 * u - 208 * v + 128) shr 8, 0, 255)
      # let b = clip(( 298 * y + 516 * u           + 128) shr 8, 0, 255)
      let r = clip(( 298 * y           + 409 * v + 128) shr 8, 0, 255)
      let g = clip(( 298 * y - 100 * u - 208 * v + 128) shr 8, 0, 255)
      let b = clip(( 298 * y + 516 * u           + 128) shr 8, 0, 255)

# R = clip(( 298 * C           + 409 * E + 128) >> 8)
# G = clip(( 298 * C - 100 * D - 208 * E + 128) >> 8)
# B = clip(( 298 * C + 516 * D           + 128) >> 8)

      #var r = y + 1.5958 * v
      #var g = y - 0.39173 * u - 0.81290 * v
      #var b = y + 2.017 * u
      #var n = (j/2).int
      #var r = (1.0 * y[j].float  + 0.0 * [j].float    + 1.402 * cR[j].float ).uint8
      #var g = (1.0 * y[j].float  - 0.344136 * cB[j].float  - 0.714136 * cR[j].float).uint8
      #var b = (1.0 * y[j].float  + 1.772 * cB[j].float     + 0 * cR[j].float).uint8 
      f.write(r.uint8)
      f.write(g.uint8)
      f.write(b.uint8)
    #var tmp = (xsize / 3).int
    #var vector = cast[ptr UncheckedArray[uint8]](cast[pointer](cast[int](buf) + i * wrap))
    #for j in 0..<tmp:
    #  f.write(&"{vector[j*3]} {vector[j*3+1]} {vector[j*3+2]}\n")
  f.close

proc pgmSave(buf:ptr uint8; wrap:int; xsize:int; ysize:int; filename:string) =
  var f = newFileStream(filename, fmWrite)
  f.write(&"P5\n{xsize} {ysize}\n255\n")
  for i in 0..<ysize:
    f.writeData(cast[pointer](cast[int](buf) + i * wrap),xsize)
  f.close

proc pgmSave2(buf:ptr uint8; wrap:int; xsize:int; ysize:int; filename:string) =
  var data = verticalUpsample(buf, wrap, xsize, ysize)
  var data2 = horizontalUpsample(data)
  #echo data[0].len, "x", data.len 


  var f = newFileStream(filename, fmWrite)
  f.write(&"P5\n{xsize*2} {ysize * 2}\n255\n")
  for i in 0..<(ysize*2):
    for j in 0..<(xsize * 2):
      #echo (i,j)
      f.write(data2[i][j])
  f.close

proc decode(decCtx:ptr AVCodecContext; 
            pkt:ptr avcodec.AVPacket;
            filename:string) =
  # https://ffmpeg.org/doxygen/trunk/group__lavc__decoding.html#ga58bc4bf1e0ac59e27362597e467efff3
  # Supply raw packet data as input to a decoder.
  var ret = avcodec_send_packet(decCtx, pkt)
  echo "frameNum: ", decCtx.frame_num
  echo "pixFmt: ", decCtx.pixfmt
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

  var frame: ptr avcodec.Avframe = avcodec.av_frame_alloc()  # avformat.av_frame_alloc()
  #result = avcodec.av_frame_alloc() 
  if frame == nil:
    raise newException(ValueError, "could not allocate video frame")   
  while ret >= 0:
    #echo ret
    # get decoded frame given compressed frame and codec.
    ret = avcodec_receive_frame(decCtx, frame)
    #if ret == AVERROR(EAGAIN) or ret == AVERROR_EOF:
    #echo "after avocodec_receive_frame: ", ret
    if ret < 0:
      #echo "$hit"
      break
      #raise newException(ValueError, "error during decoding")
#     while (ret >= 0) {
#         ret = avcodec_receive_frame(dec_ctx, frame);
#         if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
#             return;
#         else if (ret < 0) {
#             fprintf(stderr, "Error during decoding\n");
#             exit(1);
#         }
    echo "saving frame: ", $decCtx[].frame_num # decCtx[].framenum.int
    #echo repr decCtx
    echo frame.linesize[0]
    pgmSave(frame.data[0], # data*: array[8'i64, ptr uint8]
            frame.linesize[0].int, 
            frame.width, 
            frame.height, 
            "frame_Y.pgm")
    pgmSave2(frame.data[1], # data*: array[8'i64, ptr uint8]
            frame.linesize[1].int, 
            #frame.width, 
            (frame.width/2).int,
            (frame.height/2).int, 
            #frame.height,
            "frame_U.pgm")            
    pgmSave2(frame.data[2], # data*: array[8'i64, ptr uint8]
            frame.linesize[2].int, 
            #frame.width, 
            (frame.width/2).int,
            (frame.height/2).int, 
            #frame.height,
            "frame_V.pgm")    
    ppmSave(decCtx, frame.data, frame.linesize, frame.width, frame.height, "frame.ppm")
    #raise newException(ValueError, "first frame")
#         printf("saving frame %3"PRId64"\n", dec_ctx->frame_num);
#         fflush(stdout);

#         /* the picture is allocated by the decoder. no need to
#            free it */
#         snprintf(buf, sizeof(buf), "%s-%"PRId64, filename, dec_ctx->frame_num);
#         pgm_save(frame->data[0], frame->linesize[0],
#                  frame->width, frame->height, buf);
#     }
# }


# #define AV_NOPTS_VALUE          ((int64_t)UINT64_C(0x8000000000000000))
const 
  AV_NOPTS_VALUE:int64 = 0x80000000000# -92233720368547(valor mínimo que puede almacenarse)

proc main =
  let filename = "/home/jose/src/nimlang/ffmpeg.nim/examples/media/ROCKET.MPG"
  #let filename = "/home/jose/src/nimlang/ffmpeg.nim/examples/media/sample_640x360.mpeg"
  let outFilename = "prueba.pgm"

  # It allocates memory for an AVPacket (pkt) to hold video data.
  # https://ffmpeg.org/doxygen/trunk/structAVPacket.html#details
  # https://ffmpeg.org/doxygen/trunk/group__lavc__packet.html#gaaf85aa950695631e0217a16062289b66
  # AvPacket stores compressed data
  var pkt = avcodec.av_packet_alloc() # avformat.av_packet_alloc()
  if pkt == nil:
    quit(QuitFailure) 


  # find the MPEG-1 video decoder
  var codec = avcodec.avcodec_find_decoder(AV_CODEC_ID_MPEG1VIDEO) 
  if codec == nil:
    raise newException(ValueError, "codec not found")

  # initialize the parse for codec MPEG-1
  var parser:ptr AVCodecParserContext = av_parser_init(codec.id.cint)
  if parser == nil:
    raise newException(ValueError, "parser not found")


  #var c: ptr AVCodecContext = nil
  var c = avcodec_alloc_context3(codec)
  if c == nil:
    raise newException(ValueError, "could not allocate video codec context")


  # For some codecs, such as msmpeg4 and mpeg4, width and height
  # MUST be initialized there because this information is not
  # available in the bitstream.

  # open it
  var ret = avcodec_open2(c, codec, nil)
  if ret < 0:
    raise newException(ValueError, "could not open codec")
  #echo ret

  var f = newFileStream(filename, fmRead)



  # =============================================================
  # set end of buffer to 0 (this ensures that no overreading happens for damaged MPEG streams)
  var inbuf = newSeq[uint8](INBUF_SIZE + avcodec.AV_INPUT_BUFFER_PADDING_SIZE ) 
  # 4096+64 = 4160
  var n = 0
  while not f.atEnd:
    #echo "File position: ", f.getPosition()
    # read raw data from the input file
    var data_size = f.readData(inbuf[0].addr, INBUF_SIZE)  # we also have readUtf8
    #echo ">>",data_size  # 4096
    # use the parser to split the data into frames
    var data = inbuf
    #echo len(data)       # 4160
    #echo data[4100]
    var ini = 0
    while (data_size - ini ) > 0 and not f.atEnd:
      #echo "   DATA_SIZE: ", data_size
      #echo "   INI: ", ini
      #echo "   data_size - ini: ", (data_size - ini )
      # https://www.ffmpeg.org/doxygen/trunk/group__lavc__parsing.html#ga691ca0258e91f99297e7726f56d8c247
      var ret = av_parser_parse2( parser, # this is the MPEG1 parser (parser context)
                                  c,      # video codec context (codec context)
                                  pkt.data.addr, pkt.size.addr, # AvPacket stores compressed data
                                  data[ini].addr, (data_size - ini).cint, # data read from file
                                  AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0)
      # ret = the number of bytes of the input bitstream used.
      if ret < 0:
        raise newException(ValueError, "error while parsing") 
      # =================================================================
      ini += ret

      if pkt.size > 0:
        echo "new frame: ", n
        decode(c, pkt, outFilename)
        # pgmSave(frame.data[0], # data*: array[8'i64, ptr uint8]
        #         frame.linesize[0].int, 
        #         frame.width, 
        #         frame.height, 
        #         "frame.pgm")        
        n += 1
      elif f.atEnd:
        break

main()

# https://github.com/mashingan/nimffmpeg/blob/master/examples/ftut.nim