import ../../wrapper/libavformat/libavformat
import formatcontext


proc findStreamInfo*(fmtCtx:FormatContext) =
  # https://ffmpeg.org/doxygen/trunk/group__lavf__decoding.html#gad42172e27cddafb81096939783b157bb
  var ret:cint  
  ret = avformatfindstreaminfo(fmtCtx.handle, nil)
  if ret < 0:
      #av_log(NULL, AV_LOG_ERROR, "Cannot find stream information\n");
      #raise newException(ValueError, "failed getting the FormatContext")
      discard