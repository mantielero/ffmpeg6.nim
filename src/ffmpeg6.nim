{.passL:"-lavformat -lavutil -lswscale".}

import wrapper/libavutil/libavutil
export libavutil

import wrapper/libavformat/libavformat
export libavformat



# {.passL:"/usr/lib/".}
# import wrapper/[libavcodec]
# export libavcodec

import lib/avutil/[dict]
export dict

import lib/avformat/[avformat, formatcontext]
export avformat, formatcontext

import wrapper/libswscale/swscale
export swscale