# nim --maxLoopIterationsVM:10000000000 c -d:futharkRebuild  create
# nim c -d:futharkRebuild -d:nodeclguards -d:noopaquetypes create
import futhark,os


importc:
  outputPath currentSourcePath.parentDir / "libav.nim"
  path "../FFmpeg-release-6.1/"
  # libavutil:
  #"libavutil/version.h"   
  #"libavutil/thread.h"   
  #"libavutil/buffer_internal.h"   
  #"libavutil/buffer.h" 
  "libavutil/error.h"
  "libavutil/channel_layout.h"
  "libavutil/samplefmt.h"  
  "libavutil/log.h"  
  #"libavutil/dict_internal.h"  
  "libavutil/dict.h"
  "libavutil/rational.h"
  "libavutil/opt.h"
  "libavutil/mathematics.h"
  "libavutil/imgutils.h"
  "libavutil/pixfmt.h"
  "libavutil/frame.h"
  "libavutil/avutil.h"


  # libavcodec:
  #"libavformat/avio.h"
  "libavcodec/avcodec.h"

  # libavformat:
  "libavformat/avio.h"
  "libavformat/avformat.h"

  # libswscale:
  "libswscale/swscale.h"

  # libavfilter:
  "libavfilter/buffersink.h"
  "libavfilter/buffersrc.h"
  
# FIX
# sed -i 's/structavchannellayout_u_t\ {/structavchannellayout_u_t\*\ {/' libav.nim 


# c2nim --header libavutil/error.h
