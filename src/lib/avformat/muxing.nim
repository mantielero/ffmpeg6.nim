import ../../wrapperFuthark/libav
import formatcontext
import ../avcodec/packet

proc interleavedWriteFrame*(fmtCtx:FormatContext; pkt:PacketRef) =
  var ret = av_interleaved_write_frame(fmtCtx.handle, cast[ptr AvPacket](pkt.handle))
  # pkt is now blank (av_interleaved_write_frame() takes ownership of
  # its contents and resets pkt), so that no unreferencing is necessary.
  # This would be different if one used av_write_frame().
  if ret < 0:
    raise newException(ValueError, "Error muxing packet")