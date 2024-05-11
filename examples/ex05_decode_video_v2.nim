# https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/decode_video.c
# Read from an MPEG1 video file, decode frames, and generate PGM images as
# output.
import ffmpeg6
import std/[os,streams,strformat]
import system

proc main =
  var filename = "media/ROCKET.MPG"
  var outFilename = "prueba.pgm"
  if paramCount() != 2:
    var executable = paramStr(0).splitPath.tail
    echo &"""usage: ./{executable} <input file> <output file>
example: ./{executable} media/ROCKET.MPG media/frame
And check your input file is encoded by mpeg1video please.
If not specified, the example is run creating:
  media/frame.ppm
  media/frame_Y.pgm
  media/frame_U.pgm
  media/frame_V.pgm
"""
  else:
    filename = paramStr(1)
    outFilename = paramStr(2)

  # find the MPEG-1 video decoder (hardcoded, so this won't work with a .mp4 file)
  var codec = findDecoder(AV_CODEC_ID_MPEG1VIDEO)

  # initialize the parse for codec MPEG-1
  var parser = newParser(codec.id)
  var c = allocContext(codec)

  # For some codecs, such as msmpeg4 and mpeg4, width and height
  # MUST be initialized there because this information is not
  # available in the bitstream.
  #var ret = avcodec_parameters_to_context(c.handle, stream.handle.codecpar)
  if ret < 0:
    raise newException(ValueError, "failed copying parameters from stream to codec context")
  # open it
  open(c, codec)

  var f = newFileStream(filename, fmRead)

  for pkt in f.getPackets(parser, c):
    #if pkt.handle.streamindex == 
    var frame = pkt.decode(c)
    if frame != nil:
      if frame.handle.width > 0:
        (&"{outFilename}_Y.pgm").savePgm(frame, 0)
        (&"{outFilename}_U.pgm").savePgm2(frame, 1)
        (&"{outFilename}_V.pgm").savePgm2(frame, 2)
        (&"{outFilename}.ppm").savePpm(frame)
      else:
        echo "empty frame"

main()

# TODO: to take into account: if decCtx.pixfmt == Avpixfmtyuv420p: