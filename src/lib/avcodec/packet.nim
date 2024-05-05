#import ../../wrapper/libavcodec/avcodec
import ../../wrapperFuthark/libav

type
  PacketObj* = object
    handle*: ptr AvPacket
  PacketRef* = ref PacketObj

proc `destroy=`*(val:PacketRef) =
  if val.handle != nil:
    av_packet_free(val.handle.addr)

proc newPacket*():PacketRef =
  result = new PacketRef
  result.handle = av_packet_alloc()
  if result.handle == nil:
    raise newException(ValueError, "could not allocate AVPacket")