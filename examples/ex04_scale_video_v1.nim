# https://www.ffmpeg.org/doxygen/trunk/scale_video_8c-example.html
# Generate a synthetic video signal and use libswscale to perform rescaling.
# ./scale_video salida.raw 800x600
# mplayer -demuxer rawvideo -rawvideo w=800:h=600:format=rgb24 salida.raw -loop 0

import ffmpeg6
import std/streams

proc fillYUVimage( data:array[4,ptr uint8]; 
                   lineSize:array[4,cint];
                   width,height,frameIndex:int) =
  var x,y:int
  # Y
  for y in 0..<height:
    for x in 0..<width:
      var tmp = cast[ptr UncheckedArray[uint8]](data[0])
      tmp[y * linesize[0] + x] = (x + y + frame_index * 3).uint8

  # Cb and Cr
  var h2 = (height/2).int
  var w2 = (width/2).int
  for y in 0..<h2:
    for x in 0..<w2:
      var tmp = cast[ptr UncheckedArray[uint8]](data[1])
      tmp[y * linesize[1] + x] = (128 + y + frame_index * 2).uint8
      tmp = cast[ptr UncheckedArray[uint8]](data[2])
      tmp[y * linesize[2] + x] = (64 + x + frame_index * 5).uint8

proc main =
  var srcData, dstData:array[4,ptr uint8] # array[4,ptr uint8]
  var srcLinesize, dstLinesize: array[4, cint]
  var srcW = 320
  var srcH = 240
  var dstW, dstH: int
  var srcPixFmt:enumavpixelformat = Avpixfmtyuv420p # AVPixelFormat
  var dstPixFmt:enumavpixelformat = Avpixfmtrgb24   # AVPixelFormat

  #av_parse_video_size(dst_w.addr, dst_h.addr, dstSize)
  dstW = 800
  dstH = 600
  # create scaling context
  # https://ffmpeg.org/doxygen/6.0/group__libsws.html#gaf360d1a9e0e60f906f74d7d44f9abfdd 
  var sws_ctx = swsGetContext(srcW.cint, srcH.cint, srcPixFmt,
                              dstW.cint, dstH.cint, dstPixFmt,
                              SWS_BILINEAR.cint, 
                              nil, nil, nil)
  if sws_ctx == nil:
    raise newException(ValueError, "something went wrong")

  # allocate source and destination image buffers
  # https://ffmpeg.org/doxygen/trunk/group__lavu__picture.html#ga841e0a89a642e24141af1918a2c10448
  var ret = av_image_alloc( srcData, srcLinesize,
                            srcW.cint, srcH.cint, enumavpixelformat(srcPixFmt), 16)

  # buffer is going to be written to rawvideo file, no alignment
  ret = av_image_alloc( dstData, dstLinesize,
                        dstW.cint, dstH.cint, enumavpixelformat(dst_pix_fmt), 1)#)
  var dst_bufsize = ret

  let strm = newFileStream("media/scaled.raw", fmWrite)
  for i in 0..<100:
    # generate synthetic video
    fill_yuv_image(src_data, src_linesize, src_w, src_h, i)

    # convert to destination format
    var tmpSrcData = cast[ptr UncheckedArray[ptr uint8]](srcData[0].unsafeAddr)
    var tmpSrcLinesize = cast[ptr UncheckedArray[cint]](srcLinesize.unsafeAddr)
    var tmpDstData = cast[ptr UncheckedArray[ptr uint8]](dstData[0].unsafeAddr)   
    var tmpDstLinesize = cast[ptr UncheckedArray[cint]](dstLinesize.unsafeAddr)         
    var ret = sws_scale(sws_ctx, tmpSrcData,  # (const uint8_t * const*)
                        tmpSrcLinesize, 0, srcH.cint, tmpDstData, tmpDstLinesize);

    # write scaled image to file
    strm.writeData( cast[pointer](tmpDstData[0]), dst_bufsize ) 

  strm.close()

main()
