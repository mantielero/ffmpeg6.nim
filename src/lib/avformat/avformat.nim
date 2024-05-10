#import ../../wrapper/libavformat/libavformat
#import ../../wrapperc2nim/libavformat
import ../../wrapperFuthark/libav
import formatcontext


# proc findStreamInfo*(fmtCtx:FormatContext) =
#   # https://ffmpeg.org/doxygen/trunk/group__lavf__decoding.html#gad42172e27cddafb81096939783b157bb
#   var ret:cint  
#   ret = avformatfindstreaminfo(fmtCtx.handle, nil)
#   if ret < 0:
#       #av_log(NULL, AV_LOG_ERROR, "Cannot find stream information\n");
#       #raise newException(ValueError, "failed getting the FormatContext")
#       discard

proc findStreamInfo*(formatContext:FormatContext) =
  var ret = avformat_find_stream_info(formatContext.handle, nil)
  if ret < 0:
    raise newException(ValueError, "failed to retrieve input stream information")

proc dumpInputFormat*(formatContext: FormatContext; filename:string) =
  av_dump_format(formatContext.handle, 0.cint, filename.cstring, 0.cint)

proc dumpOutputFormat*(formatContext: FormatContext; filename:string) =
  av_dump_format(formatContext.handle, 0.cint, filename.cstring, 1.cint)


proc writeHeader*(fmtCtx:FormatContext) =
  # https://ffmpeg.org/doxygen/trunk/group__lavf__encoding.html#ga18b7b10bb5b94c4842de18166bc677cb
  # Allocate the stream private data and write the stream header to an output media file.
  var ret = avformat_write_header(fmtCtx.handle, nil)
  if ret < 0:
    raise newException(ValueError, "Error occurred when opening output file")