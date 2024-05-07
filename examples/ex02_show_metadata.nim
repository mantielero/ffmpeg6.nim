# https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/show_metadata.c
# Show metadata from an input file.
import ffmpeg6
import std/os

proc main =
  let filename = "media/sample-5s.mp4"
  if paramCount() != 1:
    echo """usage: %s <input_file>
      example program to demonstrate the use of the libavformat metadata API."""
  else:
    filename = paramStr(1)   

  var fmtCtx = getFormatContext(filename)
  fmtCtx.findStreamInfo()

  var metadata = fmtCtx.metadata
  echo $metadata

main()