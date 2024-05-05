{.passC:"-I /usr/include/libavcodec".}
{.passL:"-lavcodec".}
#import avutil/[rational, opt,log]

import libavutil
import avcodec/[defs,avcodec,version, packet]
export defs,avcodec, version, packet