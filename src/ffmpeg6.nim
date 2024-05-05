{.passL:"-lavformat -lavutil -lswscale -lavcodec".}

#[ import wrapper/libavutil/[dict,rational,opt,mathematics,imgutils,frame, pixfmt, avutil]
export dict,rational,opt,mathematics,imgutils, frame, pixfmt,avutil

import wrapper/libavformat/libavformat
export libavformat


import wrapper/libswscale/swscale
export swscale

import wrapper/libavcodec/avcodec
export avcodec







]#

# import wrapperc2nim/[libavutil]
# export libavutil

# import wrapperc2nim/[libavcodec]
# export libavcodec
# #import wrapperc2nim/[libavcodec, libavformat, libavutil, libswscale]
# #export libavcodec, libavformat, libavutil, libswscale





import wrapperFuthark/libav
export libav

import lib/avutil/[dict, frame]
export dict,frame 

import lib/avcodec/[packet,codec, parser_context]
export packet,codec,parser_context

import lib/avformat/[avformat, formatcontext]
export avformat, formatcontext
