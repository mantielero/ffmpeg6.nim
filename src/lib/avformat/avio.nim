import ../../wrapperFuthark/libav
import std/strformat
import formatcontext

#if (outFormat.flags and AVFMT_NOFILE) == 0:  # (!(ofmt->flags & AVFMT_NOFILE))


proc openOutputFile*(fmtCtx:FormatContext; fname:string) = 
  # https://ffmpeg.org/doxygen/trunk/avio_8c.html#ab1b99c5b70aa59f15ab7cd4cbb40381e
  var ret = avio_open(fmtCtx.handle.pb.addr, fname.cstring, AVIO_FLAG_WRITE)
  if ret < 0:
    raise newException(ValueError, &"Could not open output file '{fname}'")  


#[
if (ret < 0 && ret != AVERROR_EOF) {
    fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
    return 1;
}
]#