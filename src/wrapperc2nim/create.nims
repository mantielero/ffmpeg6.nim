#!/usr/bin/env nim
import std/strformat
#[
#ifdef C2NIM
#  dynlib iupdll
#  cdecl
#  if defined(windows)
#    define iupdll "iup.dll"
#  elif defined(macosx)
#    define iupdll "libiup.dylib"
#  else
#    define iupdll "libiup.so"
#  endif
#endif
]#

var command = ""
# let files = @["rational", "dict"]
# for fname in files:
#   let command = &"c2nim --header --skipcomments --out:avutil/{fname}.nim ../wrapper/FFmpeg/libavutil/{fname}.h"
#   echo command
#   exec(command)

# --def:av_const='' --def:av_always_inline=''
# command = "c2nim --strict   --dynlib:libavutil --header --skipcomments --out:avutil/attributes.nim ../wrapper/FFmpeg/libavutil/attributes.h"
# echo command
# exec(command)

# command = "c2nim --strict  --def:av_const='' --def:av_always_inline='' --dynlib:libavutil --header --skipcomments --out:avutil/rational.nim ../wrapper/FFmpeg/libavutil/rational.h"
# echo command
# exec(command)

# libavutil -----------------
var ffmpegFolder = "../FFmpeg-release-6.1"

var files:seq[string]

files = @["rational", "dict", "dict_internal", "opt", "imgutils", 
              "mathematics", "avutil"]
for fname in files:
  command = &"c2nim --strict  --skipinclude --dynlib:libavutil --header --skipcomments "
  command &= &"--out:avutil/{fname}.nim ffmpeg.c2nim "
  command &= &"{ffmpegFolder}/libavutil/{fname}.h"
  echo command
  exec(command)

# c2nim --strict  --skipinclude --dynlib:libavutil --def:AV_HAVE_BIGENDIAN=0 --header --skipcomments --out:avutil/pixfmt.nim ../wrapper/FFmpeg/libavutil/pixfmt.h 
# c2nim --strict  --skipinclude --header --skipcomments --out:avutil/version.nim ../wrapper/FFmpeg/libavutil/version.h 
# c2nim --strict  --skipinclude --header --skipcomments --out:avutil/version.nim ../FFmpeg-release-6.1/libavutil/version.h
# c2nim --strict  --skipinclude --header --skipcomments --out:avcodec/version.nim ../FFmpeg-release-6.1/libavcodec/version.h

# c2nim  --def:attribute_deprecated='' --skipinclude --header --skipcomments --out:avutil/log.nim ../FFmpeg-release-6.1/libavutil/log.h


# find avutil/ -type f -name '*.nim' -exec sed -i 's/\([u]\{0,1\}int\(8\|16\|32\|64\)\)_t/\1/' {} \;
# find avutil/ -type f -name '*.nim' -exec sed -i '/./{H;$!d} ; x ; s/,\n[ ]*dynlib: libavutil//' {} \;
# find avutil/ -type f -name '*.nim' -exec sed -i 's/, dynlib: libavutil//' {} \;


# sed -i 's/\([u]\{0,1\}int\(16\|32\|64\)\)_t/\1/' avutil/rational.nim
# 
# sed -i '/./{H;$!d} ; x ; s/,\n[ ]*dynlib: libavutil//' avutil/rational.nim

# sed -i '/./{H;$!d} ; x ; s/,\n[ ]*dynlib: libavutil//' avutil/*.nim
# sed -i 's/, dynlib: libavutil//' avutil/*.nim   
# sed -i 's/\([u]\{0,1\}int\(8\|16\|32\|64\)\)_t/\1/' avutil/opt.nim
#[
➜  wrapperc2nim git:(main) ✗ sed -i '/./{H;$!d} ; x ; s/,\n[ ]*dynlib: libavutil//' avutil/opt.nim
➜  wrapperc2nim git:(main) ✗ sed -i 's/, dynlib: libavutil//' avutil/opt.nim   
]#


#[
template AV_PIX_FMT_NE*(be, le: untyped):untyped  =
  `AV_PIX_FMT le`
]#


# files = @["avformat"]
# for fname in files:
#   command = &"c2nim --strict  --skipinclude --dynlib:libavformat --header --skipcomments --out:avformat/{fname}.nim ffmpeg.c2nim ../wrapper/FFmpeg/libavformat/{fname}.h"
#   echo command
#   exec(command)

command = "c2nim --skipinclude --dynlib:libavformat --header --skipcomments --out:avformat/avformat.nim ffmpeg.c2nim ../FFmpeg-release-6.1/libavformat/avformat.h"
exec(command)

#var f = readFile("avformat/avformat.nim")
#echo f
# c2nim --strict  --skipinclude --dynlib:libswsscale --header --skipcomments --out:swscale/swscale.nim ffmpeg.c2nim ../FFmpeg-release-6.1/libswscale/swscale.h
#[
type
  AVTimebaseSource* {.size: sizeof(cint).} = enum
    AVFMT_TBCF_AUTO = -1, AVFMT_TBCF_DECODER, AVFMT_TBCF_DEMUXER,
    AVFMT_TBCF_R_FRAMERATE
]#


# libavcodec ------------------
# c2nim --strict  --skipinclude --header --skipcomments --out:avcodec/version_major.nim ../wrapper/FFmpeg/libavcodec/version_major.h 

# c2nim --strict  --skipinclude --dynlib:libavcodec --header --skipcomments --out:avcodec/avcodec.nim ffmpeg.c2nim ../FFmpeg-release-6.1/libavcodec/avcodec.h

# command = "c2nim  --skipinclude --header --skipcomments --out:avcodec/defs.nim ../FFmpeg-release-6.1/libavcodec/defs.h"
# echo command 
# exec(command)

# c2nim --def:attribute_deprecated='' --header --skipcomments --strict --nep1 a.h
# En a.h meto líneas 441-2119 de avcodec.h


# sed -i 's/int16_t/int16/' avcodec/defs.nim
# sed -i 's/int64_t/int64/' avcodec/defs.nim
# sed -i 's/var //' avcodec/avcodec.nim  


# FIX: avcodec.nim
#[
    when ff_Api_Idct_None:
      const
        FF_IDCT_NONE* = 24
]#

# FIX: FF_PROFILE_...
# sed -i 's/header: "a.h",//' avcodec/avcodec.nim 


# OK
# c2nim --strict  --skipinclude --header --skipcomments --out:avutil/buffer.nim ../FFmpeg-release-6.1/libavutil/buffer.h 
# c2nim --strict  --skipinclude --header --skipcomments --out:avutil/buffer_internal.nim ../FFmpeg-release-6.1/libavutil/buffer_internal.h
# c2nim --strict  --skipinclude --header --skipcomments --out:avutil/thread.nim ../FFmpeg-release-6.1/libavutil/thread.h 
# c2nim --strict  --skipinclude --header --skipcomments --out:avcodec/codec_id.nim ../FFmpeg-release-6.1/libavcodec/codec_id.h
