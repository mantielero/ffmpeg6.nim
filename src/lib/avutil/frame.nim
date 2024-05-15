#import ../../wrapper/libavutil/frame
import ../../wrapperFuthark/libav

type
  AvFrameObj* = object
    handle*:ptr AvFrame
    index*:int = -1

  Frame* = ref AvFrameObj

proc `destroy=`*(val:Frame) =
  if val.handle != nil:
    av_frame_free(val.handle.addr)


proc newFrame*():Frame =
  result = new Frame
  result.handle = av_frame_alloc()
  if result.handle == nil:
    raise newException(ValueError, "Could not allocate video frame")


proc getBuffer*(frame:Frame) =
  var ret = av_frame_get_buffer(frame.handle, 0)
  echo ret
  if ret < 0:
    raise newException(ValueError, "Could not allocate frame data")    

proc makeWritable*(frame:Frame) =
  var ret = av_frame_make_writable(frame.handle)
  if (ret < 0):
    raise newException(ValueError, "failed making the frame writable")
    #quit(QuitFailure)


# proc data0*(frame:Frame) =
#   var data0 = cast[ptr UncheckedArray[uint16]](frame.handle.data[0])