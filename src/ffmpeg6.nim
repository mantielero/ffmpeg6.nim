{.passL:"-lavformat -lavutil -lswscale -lavcodec -lavfilter".}

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

import lib/avutil/[dict, frame, image, pgm, ppm]
export dict, frame, image, pgm, ppm

import lib/avcodec/[packet,codec, parser_context]
export packet,codec,parser_context

import lib/avformat/[avformat, formatcontext, muxing, avio]
export avformat, formatcontext, muxing, avio

import lib/avfilter/[filter]
export filter

import lib/swscale/[swscale]
export swscale

# template AV_CHANNEL_LAYOUT_MASK*(nb, m: untyped): untyped =
#   [AV_CHANNEL_ORDER_NATIVE.cint, nb.cint, m.cint, nil.cint]

# const
#   AV_CH_FRONT_LEFT* = (1'u64 shl AV_CHAN_FRONT_LEFT.uint64)
#   AV_CH_FRONT_RIGHT* = (1'u64 shl AV_CHAN_FRONT_RIGHT.uint64)
#   AV_CH_FRONT_CENTER* = (1'u64 shl AV_CHAN_FRONT_CENTER.uint64)  

# const
#   AV_CH_LAYOUT_MONO* = (AV_CH_FRONT_CENTER)
#   AV_CH_LAYOUT_STEREO* = (AV_CH_FRONT_LEFT or AV_CH_FRONT_RIGHT)

# const
#   AV_CHANNEL_LAYOUT_MONO* = AV_CHANNEL_LAYOUT_MASK(1, AV_CH_LAYOUT_MONO)
#   AV_CHANNEL_LAYOUT_STEREO* = AV_CHANNEL_LAYOUT_MASK(2, AV_CH_LAYOUT_STEREO)