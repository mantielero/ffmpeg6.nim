# https://www.ffmpeg.org/doxygen/trunk/scale_video_8c-example.html
# Generate a synthetic video signal and use libswscale to perform rescaling.
# ./scale_video salida.raw 800x600
# mplayer -demuxer rawvideo -rawvideo w=800:h=600:format=rgb24 salida.raw -loop 0
# For the original video it would be:
# mplayer -demuxer rawvideo -rawvideo w=320:h=240:format=i420 media/scaled.raw -loop 0
import ffmpeg6
import std/[os,streams,strformat]

proc fillYUVimage( data:array[4,ptr uint8]; 
                   lineSize:array[4,cint];
                   width,height,frameIndex:int) =
  # Y
  for y in 0..<height:
    var lumi = cast[ptr UncheckedArray[uint8]](cast[int](data[0]) + y * linesize[0])
    for x in 0..<width:
      lumi[x] = (x + y + frame_index * 3).uint8

  # Cb and Cr
  for y in 0.. (height div 2):
    var blue = cast[ptr UncheckedArray[uint8]](cast[int](data[1]) + y * linesize[1])
    var red  = cast[ptr UncheckedArray[uint8]](cast[int](data[2]) + y * linesize[2])
    for x in 0..< (width div 2):
      blue[x] = (128 + y + frame_index * 2).uint8
      red[x] = (64 + x + frame_index * 5).uint8

proc main =
  var dstFilename = "media/scaled.raw"
  var dstSize = (width:800,height:600)
  if paramCount() != 2:
    var executable = paramStr(0).splitPath.tail
    echo &"""usage: ./{executable} <output_file> <output_size>
example: ./{executable} media/scaled.raw 800x600
API example program to show how to scale an image with libswscale.
This program generates a series of pictures, rescales them to the given
output_size and saves them to an output file named output_file.
If not specified, the example is run.
"""
  else:
    dstFilename = paramStr(1)
    dstSize = parseVideoSize(paramStr(2))

  let srcSize = (width:320,height:240)

  var srcPixFmt = Avpixfmtyuv420p 
  var dstPixFmt = Avpixfmtrgb24   

  var sws_ctx = newScalingContext(srcSize, srcPixFmt,
                                  dstSize, dstPixFmt,
                                  SWS_BILINEAR)

  var srcImg = newImageBuffer(srcSize, srcPixFmt, 16)

  # buffer is going to be written to rawvideo file, no alignment
  var dstImg = newImageBuffer(dstSize, srcPixFmt, 1)

  let strm = newFileStream(dstFilename, fmWrite)
  for i in 0..<100:  # 100 frames are created
    # generate synthetic video
    fill_yuv_image(srcImg.data, srcImg.lineSize, srcSize.width, srcSize.height, i)

    # convert to destination format
    scale(sws_ctx, srcImg, dstImg)

    # write scaled image to file
    strm.write(dstImg)

  strm.close()

  echo "[INFO] scaled succesfully"
  echo "Execute:"
  echo &"mplayer -demuxer rawvideo -rawvideo w={dstSize.width}:h={dstSize.height}:format=rgb24 {dstFilename} -loop 0"
  # ffplay -f rawvideo -pix_fmt %s -video_size %dx%d %s

main()
