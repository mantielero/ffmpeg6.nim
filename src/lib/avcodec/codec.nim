import ../../wrapper/libavcodec/avcodec

type
  AvCodecObj* = object
    handle*:ptr Avcodec

  AvCodecRef* = ref AvCodecObj

proc findDecoder*(typ:enumavcodecid):AvCodecRef =
  result = new AvCodecRef
  result.handle = avcodec_find_decoder(AV_CODEC_ID_MP2)
  if result.handle == nil:
    raise newException(ValueError, "codec not found")

proc id*(val:AvCodecRef):enumavcodecid =
  return val.handle.id
