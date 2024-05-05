{.passC:"-I /usr/include/libavutil".}
{.passL:"-lavcodec".}
{.experimental: "codeReordering".}
# import avutil/[avutil, dict, dict_internal, imgutils, mathematics, opt, pixfmt, rational, log]
# export avutil, dict, dict_internal, imgutils, mathematics, opt, pixfmt, rational, log

type  # FIX ALL THIS TYPES
  #typedef struct AVDictionary AVDictionary;
  AVDictionary* {.bycopy.} = object
  AVClassCategory* {.bycopy.} = object
  va_list* {.bycopy.} = object
  AVSampleFormat* {.bycopy.} = object
  AVChannelLayout* {.bycopy.} = object
  AVPixFmtDescriptor* {.bycopy.} = object
  ptrdiff_t* {.bycopy.} = object

#import avutil/log
#export log
include "avutil/version"
include "avutil/thread"
include "avutil/buffer_internal"
include "avutil/buffer"
include "avutil/dict"
include "avutil/dict_internal"
include "avutil/log"
include "avutil/opt"
include "avutil/rational"
include "avutil/imgutils"
include "avutil/mathematics"

include "avutil/pixfmt"


include "avutil/avutil"