import ../../wrapperFuthark/libav
#import ../../wrapper/libavcodec/avcodec
import ../avutil/frame
import std/strformat
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

proc findEncoderByName*(codecName:string):AvCodecRef =
  result = new AvCodecRef
  result.handle = avcodec_find_encoder_by_name(codec_name.cstring)
  if result.handle == nil:
    raise newException(ValueError, &"Codec '{codecName}' not found")


# Codec Context
type
  AvCodecContextObj* = object
    handle*:ptr AvCodecContext
  CodecContext* = ref AvCodecContextObj

proc `destroy=`*(val:CodecContext) =
  if val.handle != nil:
    avcodec_free_context(val.handle.addr)

proc allocContext*(codec: AvCodecRef):CodecContext =
  result = new CodecContext
  result.handle = avcodec_alloc_context3(codec.handle)
  if result.handle == nil:
    raise newException(ValueError, "Could not allocate video codec context")


proc open*(codecContext: CodecContext; codec: AvCodecRef ) = # ; options:ptr ptr dict.Avdictionary = nil
  ## Initialize the AVCodecContext to use the given AVCodec.
  ## https://ffmpeg.org/doxygen/trunk/group__lavc__core.html#ga11f785a188d7d9df71621001465b0f1d
  echo codecContext.handle.pix_fmt
  var ret = avcodec_open2(codecContext.handle, codec.handle, nil)
  if ret < 0:
    raise newException(ValueError, "could not open codec")  


proc sendFrame*(frame:Frame; codecContext:CodecContext) =
  var ret = avcodec_send_frame(codecContext.handle, cast[ptr AvFrame](frame.handle))
  if ret < 0:
    raise newException(ValueError, "Error sending a frame for encoding")