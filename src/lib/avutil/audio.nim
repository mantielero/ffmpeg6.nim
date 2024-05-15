import ../../wrapperFuthark/libav
import frame
import ../avcodec/codec

proc channelLayoutCopy*(frame: Frame, c:CodecContext) =
  let ret = av_channel_layout_copy(frame.handle.ch_layout.addr, c.handle.ch_layout.addr)
  if ret < 0:
    raise newException(ValueError, "failed to copy the channel layout")
    #quit(QuitFailure)