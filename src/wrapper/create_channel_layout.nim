# nim c -d:futharkRebuild -d:noopaquetypes create
# nim c -d:futharkRebuild -d:nodeclguards create
# nim c -d:futharkRebuild create
# nim c -d:futharkRebuild -d:nodeclguards -d:noopaquetypes create

import futhark,os

importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "channel_layout.nim"
  path "../FFmpeg-release-6.1/libavutil"
  "channel_layout.h"
