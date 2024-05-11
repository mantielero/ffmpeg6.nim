import ../../wrapperFuthark/libav
import formatcontext
import std/[strformat]

type
  StreamObj* = object
    handle*:ptr AvStream
  StreamRef* = ref StreamObj

iterator streams*(f:FormatContext):StreamRef =
  # total number of streams
  let stream_mapping_size = f.streamsNumber   
  var tmpStreams = cast[ptr UncheckedArray[ptr AvStream]](f.handle.streams)
  for i in 0 ..< f.streamsNumber:
    var stm = new StreamRef
    stm.handle = tmpStreams[i]
    yield stm


proc newStream*(fmtCtx:FormatContext):StreamRef =
  # https://ffmpeg.org/doxygen/trunk/group__lavf__core.html#gaf2c94216a6a19144e86cac843a0a4409
  # Add a new stream to a media file.
  result = new StreamRef
  result.handle = avformat_new_stream(fmtCtx.handle, nil)
  if result.handle == nil:
    raise newException(ValueError, "failed allocating stream")  


proc copyParameters*(toStream,fromStream: StreamRef) =
    var ret = avcodec_parameters_copy(toStream.handle.codecpar, fromStream.handle.codecpar)
    if (ret < 0):
      raise newException(ValueError, "Failed to copy codec parameters")

proc getStream*(fmtCtx:FormatContext; idx:int):StreamRef =
  var streams = cast[ptr UncheckedArray[ptr AVStream]](fmtCtx.handle.streams)
  result = new StreamRef
  result.handle = streams[idx]
  if result.handle == nil:
    raise newException(ValueError, &"streams in format context do not have index: {idx}")

proc writeTrailer*(fmtCtx:FormatContext) =
  var ret = av_write_trailer(fmtCtx.handle)
  if ret != 0:
    raise newException(ValueError, &"error while running writeTrailer: {ret}" )