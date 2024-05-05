# nim c -d:futharkRebuild -d:nodeclguards -d:noopaquetypes create_with_futhark
import futhark
import std/os

importc:
  outputPath "avutil" / "version.nim"
  path "../FFmpeg-release-6.1/libavutil"
  "version.h"