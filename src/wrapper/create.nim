# nim c -d:noopaquetypes create
# nim c -d:nodeclguards create
# nim c create
# nim c -d:nodeclguards -d:noopaquetypes create

#[
cd FFmpeg
find ./ -name "*.h" -print
sed -i -e 's/^.\//  "/' -e 's/$/"/' files.txt
]#
import futhark,os

#[
libavc1394/   
libavdevice/  
libavformat/                          
libavcodec/   
libavfilter/  
libavutil/ 
]#

# proc renameCb(n, k: string, p = ""): string =
#   echo "----"
#   echo "n: ", n
#   echo "k: ", k
#   echo "p: ", p 
#   if k == "enum":
#     echo "************************"
#     case n
#     of "enum_VSColorFamily": "ColorFamily"
#     else: n
#   else:
#     n



# importc:
#   outputPath currentSourcePath.parentDir / "libavcodec.nim"
#   #renameCallback renameCb
#   path "/usr/include/libavcodec/"
#   "avcodec.h"


# libswscale ----------------
# importc:
#   outputPath currentSourcePath.parentDir / "libswscale" / "swscale.nim"
#   #renameCallback renameCb
#   path "./FFmpeg"
#   "libswscale/swscale.h"

# libavutil -----------------
importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "mathematics.nim"
  path "/usr/include/libavutil/"
  "mathematics.h"

importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "imgutils.nim"
  path "./FFmpeg"
  "libavutil/imgutils.h"

# importc:
#   outputPath currentSourcePath.parentDir / "libavutil" / "dict.nim"
#   #path "/usr/include/libavutil/"

#   path "./FFmpeg"
#   path "./FFmpeg/libavutil"
#   "libavutil/dict.h"
#var fileName:string
#fileName = currentSourcePath.parentDir / "libavutil" / "avutil.nim"
#discard tryRemoveFile(fileName)

#ok: nim c create
#[ importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "avutil.nim"
  path "./FFmpeg"
  path "./FFmpeg/libavutil"
  "libavutil/avutil.h"

importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "dict.nim"
  path "./FFmpeg"
  path "./FFmpeg/libavutil"
  "libavutil/dict.h"

importc:
  outputPath currentSourcePath.parentDir / "libavutil" / "mathematics.nim"
  path "./FFmpeg"
  path "./FFmpeg/libavutil"
  "libavutil/mathematics.h" ]#

# libavformat----------------
#[
importc:
  outputPath currentSourcePath.parentDir / "libavformat" / "version.nim"
  path "./FFmpeg"  
  #path "/usr/include/libavformat/"
  "libavformat/version.h"


# I had to add:   `structurlcontext* = object` in "avio.nim"

 importc:
  outputPath currentSourcePath.parentDir / "libavformat" / "url.nim"
  #path "/usr/include/libavformat/"
  path "./FFmpeg/"
  "libavformat/url.h"

importc:
  outputPath currentSourcePath.parentDir / "libavformat" / "avio.nim"
  path "./FFmpeg/"
  "libavformat/avio.h"

importc:
  outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
  path "./FFmpeg/"
  "libavformat/avformat.h" ]#


#[ importc:
  outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
  path "./FFmpeg/"
  "libavformat/version.h"
  "libavformat/url.h"
  "libavformat/avio.h"
  "libavformat/avformat.h"
 ]#
#[
avio.h
version.h
]#

# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
#   #path "/usr/include/libavformat/"
#   path "./FFmpeg/libavformat/"
#   "version.h"
#   "url.h"
#   "avio.h"
#   "avformat.h"
#   #"avformat.h"

#[
aiff.h           hls_sample_encryption.h  network.h         rtspcodes.h
apetag.h         httpauth.h               nut.h             rtsp.h
argo_asf.h       http.h                   oggdec.h          sauce.h
asfcrypt.h       iamf.h                   oma.h             smjpeg.h
asf.h            iamf_parse.h             options_table.h   sox.h
ast.h            iamf_reader.h            os_support.h      spdif.h
av1.h            iamf_writer.h            pcm.h             srtp.h
avc.h            id3v1.h                  qtpalette.h       subtitles.h
avformat.h       id3v2.h                  rawdec.h          swf.h
avi.h            imf.h                    rawenc.h          tee_common.h
avio.h           img2.h                   rawutils.h        tls.h
avio_internal.h  internal.h               rdt.h             ttmlenc.h
avlanguage.h     ip.h                     replaygain.h      urldecode.h
caf.h            ircam.h                  riff.h            url.h
dash.h           isom.h                   rm.h              version.h
demux.h          lrc.h                    rmsipr.h          version_major.h
dovi_isom.h      matroska.h               rso.h             voc.h
dvdclut.h        metadata.h               rtmpcrypt.h       vorbiscomment.h
dv.h             mms.h                    rtmpdh.h          vpcc.h
evc.h            mov_chan.h               rtmp.h            vvc.h
ffmeta.h         movenccenc.h             rtmppkt.h         w64.h
flacenc.h        movenc.h                 rtpdec_formats.h  wtv.h
flac_picture.h   movenc_ttml.h            rtpdec.h          wv.h
flv.h            mpeg.h                   rtpenc_chain.h    yuv4mpeg.h
gxf.h            mpegts.h                 rtpenc.h
hevc.h           mux.h                    rtp.h
hlsplaylist.h    mxf.h                    rtpproto.h

]#

# importc:
#   outputPath currentSourcePath.parentDir / "libswscale.nim"
#   path "/usr/include/libswscale/"
#   "swscale.h"

#[
VapourSynth4.h  VSConstants4.h  VSHelper.h   VSScript.h
VapourSynth.h   VSHelper4.h     VSScript4.h

/usr/lib/libvapoursynth-script.so.0.0.0
/usr/lib/libvapoursynth.so
/usr/lib/vapoursynth/libbestaudiosource.so  /usr/lib/vapoursynth/libffms2.so

]#

#[
libavc1394/   libavdevice/  libavformat/  libavutil/                
libavcodec/   libavfilter/  libavrdude.h    
]#

#[
import os

# qsv is depend on intel media sdk library hence not included.
# in case of someone want to use it, they can directly import it
# like:
# import ffmpeg/libavcodec_qsv
# import ffmpeg/libavutil_hwcontext_qsv

const source = currentSourcePath.parentDir()
const includepath = "-I" & (source / "cinclude")
{.passC: includepath.}

import ffmpeg/libavcodec/[
  ac3_parser, adts_parser, avcodec,
  avdct, avfft, bsf, codec_desc,
  codec_id, codec_par, codec, dirac,
  dv_profile, jni, mediacodec,
  packet, vorbis_parser, defs
]
import ffmpeg/libavdevice/avdevice
import ffmpeg/libavfilter/[avfilter, buffersink, buffersrc]
import ffmpeg/libavformat/[avformat, avio]
import ffmpeg/libavutil/[
  adler32, aes_ctr, aes, attributes, audio_fifo,
  avassert, avconfig, avstring, avutil, base64,
  blowfish, bprint, bswap, buffer, camellia,
  cast5, channel_layout, common, cpu, crc, des,
  dict, display, dovi_meta, downmin_info, encryption_info,
  error, eval, fifo, file, frame, hash,
  hdr_dynamic_metadata, hmac, hwcontext_cuda,
  hwcontext_drm, hwcontext_mediacodec, hwcontext_opencl,
  hwcontext_vulkan, hwcontext, imgutils, intfloat,
  intreadwrite, lfg, log, lzo, macros,
  mastering_display_metadata, mathmatics, md5, mem,
  motion_vector, murmur3, opt, parseutils, pixdesc,
  pixelutils, pixfmt, random_seed, rational, rc4,
  replaygain, ripemd, samplefmt, sha, sha512,
  spherical, stereo3d, tea, threadmessage, time,
  timecode, timestamp, tree, tx, video_enc_params,
  film_grain_params, detection_bbox
]
import ffmpeg/libpostproc/postprocess
import ffmpeg/libpostproc/version as postprocVersion
import ffmpeg/libswresample/swresample
import ffmpeg/libswresample/version as swresampleVersion
import ffmpeg/libswscale/swscale
import ffmpeg/libswscale/version as swscaleVersion
import ffmpeg/types

when defined(windows):
  import ffmpeg/libavcodec/[d3d11va, dxva2]
  import ffmpeg/libavutil/[hwcontext_d3d11va, hwcontext_dxva2]
else:
  import ffmpeg/libavcodec/[vdpau, xvmc]
  import ffmpeg/libavutil/[hwcontext_vaapi, hwcontext_vdpau]

when defined(macosx):
  import ffmpeg/libavcodec/videotoolbox
  import ffmpeg/libavutil/hwcontext_videotoolbox

export types
export ac3_parser, adts_parser, avcodec, avdct, avfft
export bsf, codec_desc, codec_id, codec_par, codec, dirac, defs
export dv_profile, jni, mediacodec, packet, vorbis_parser
export avdevice, avfilter, buffersink, buffersrc, avformat, avio
export adler32, aes_ctr, aes, attributes, audio_fifo
export avassert, avconfig, avstring, avutil, base64
export blowfish, bprint, bswap, buffer, camellia
export cast5, channel_layout, common, cpu, crc, des
export dict, display, dovi_meta, downmin_info, encryption_info
export error, eval, fifo, file, frame, hash
export hdr_dynamic_metadata, hmac, hwcontext_cuda
export hwcontext_drm, hwcontext_mediacodec, hwcontext_opencl
export hwcontext_vulkan, hwcontext, imgutils, intfloat
export intreadwrite, lfg, log, lzo, macros
export mastering_display_metadata, mathmatics, md5, mem
export motion_vector, murmur3, opt, parseutils, pixdesc
export pixelutils, pixfmt, random_seed, rational, rc4
export replaygain, ripemd, samplefmt, sha, sha512
export spherical, stereo3d, tea, threadmessage, time
export timecode, timestamp, tree, tx, video_enc_params
export postprocess, postprocVersion, swresample, swresampleVersion
export swscale, swscaleVersion, film_grain_params, detection_bbox

when defined(windows):
  export d3d11va, dxva2, hwcontext_d3d11va, hwcontext_dxva2
else:
  export vdpau, xvmc, hwcontext_vaapi, hwcontext_vdpau

when defined(macosx):
  export videotoolbox, hwcontext_videotoolbox
]#



# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "version.nim"
#   path "./FFmpeg/libavformat/"
#   "version.h"

# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "url.nim"
#   path "./FFmpeg/"
#   path "./FFmpeg/libavformat/"
#   path "./FFmpeg/libavutil/"
#   "url.h"
  
# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
#   #sysPath "./FFmpeg/:/usr/include" 
#   #sysPath "/usr/include"
#   path "./FFmpeg"
#   # path "./FFmpeg/libavcodec/"
#   # path "./FFmpeg/libavdevice/"
#   # path "./FFmpeg/libavfilter/"  
#   #path "./FFmpeg/libavformat/"
#   #path "./FFmpeg/libavutil/" 
#   # path "./FFmpeg/libpostproc/"
#   # path "./FFmpeg/libswresample/"
#   # path "./FFmpeg/libswscale/"
#   "libavutil/dict.h"
#   "libavformat/avio.h"

#   #"url.h"
#   "libavformat/avformat.h"



# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "avio.nim"
#   path "./FFmpeg/libavformat/"
#   #path "./FFmpeg/libavutil/"
#   #"url.h"  
#   "avio.h"
#   #"avformat.h"

# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
#   path "./FFmpeg/libavformat/"
#   path "./FFmpeg/libavutil/"
#   #"url.h"  
#   "avio.h"
#   "avformat.h"


# importc:
#   outputPath currentSourcePath.parentDir / "libavformat" / "avformat.nim"
#   path "./FFmpeg/libavformat/"
#   path "./FFmpeg/libavutil/"  
#   "sauce.h"
#   "rtmpcrypt.h"
#   "dv.h"
#   "movenccenc.h"
#   "iamf_reader.h"
#   "urldecode.h"
#   "asf.h"
#   "id3v1.h"
#   "yuv4mpeg.h"
#   "url.h"
#   "evc.h"
#   "dovi_isom.h"
#   "version_major.h"
#   "isom.h"
#   "http.h"
#   "tee_common.h"
#   "hevc.h"
#   "hls_sample_encryption.h"
#   "dash.h"
#   "caf.h"
#   "apetag.h"
#   "rtmp.h"
#   "imf.h"
#   "internal.h"
#   "spdif.h"
#   "mms.h"
#   "smjpeg.h"
#   "replaygain.h"
#   "rtp.h"
#   "id3v2.h"
#   "lrc.h"
#   "ip.h"
#   "wv.h"
#   "flv.h"
#   "version.h"
#   "img2.h"
#   "swf.h"
#   "avio.h"
#   "rtmppkt.h"
#   "mux.h"
#   "hlsplaylist.h"
#   "httpauth.h"
#   "subtitles.h"
#   "flac_picture.h"
#   "nut.h"
#   "rso.h"
#   "wtv.h"
#   "os_support.h"
#   "gxf.h"
#   "rm.h"
#   "w64.h"
#   "rtspcodes.h"
#   "dvdclut.h"
#   "movenc_ttml.h"
#   "metadata.h"
#   "rtpdec_formats.h"
#   "flacenc.h"
#   "voc.h"
#   "ircam.h"
#   "rtpproto.h"
#   "sox.h"
#   "iamf_writer.h"
#   "rawdec.h"
#   "rmsipr.h"
#   "vpcc.h"
#   "network.h"
#   "srtp.h"
#   "vorbiscomment.h"
#   "mpeg.h"
#   "rtpenc.h"
#   "rtpdec.h"
#   "oma.h"
#   "matroska.h"
#   "options_table.h"
#   "movenc.h"
#   "pcm.h"
#   "avlanguage.h"
#   "mpegts.h"
#   "avformat.h"
#   "avi.h"
#   "rawutils.h"
#   "riff.h"
#   "ast.h"
#   "demux.h"
#   "iamf_parse.h"
#   "rdt.h"
#   "tls.h"
#   "qtpalette.h"
#   "aiff.h"
#   "iamf.h"
#   "argo_asf.h"
#   "ttmlenc.h"
#   "av1.h"
#   "avc.h"
#   "rtpenc_chain.h"
#   "asfcrypt.h"
#   "rtsp.h"
#   "rawenc.h"
#   "mxf.h"
#   "vvc.h"
#   "avio_internal.h"
#   "mov_chan.h"
#   "rtmpdh.h"
#   "oggdec.h"
#   "ffmeta.h"
#[ importc:
  outputPath currentSourcePath.parentDir / "libavformat.nim"
  path "./FFmpeg/"
  "libavformat/sauce.h"
  "libavformat/rtmpcrypt.h"
  "libavformat/dv.h"
  "libavformat/movenccenc.h"
  "libavformat/iamf_reader.h"
  "libavformat/urldecode.h"
  "libavformat/asf.h"
  "libavformat/id3v1.h"
  "libavformat/yuv4mpeg.h"
  "libavformat/url.h"
  "libavformat/evc.h"
  "libavformat/dovi_isom.h"
  "libavformat/version_major.h"
  "libavformat/isom.h"
  "libavformat/http.h"
  "libavformat/tee_common.h"
  "libavformat/hevc.h"
  "libavformat/hls_sample_encryption.h"
  "libavformat/dash.h"
  "libavformat/caf.h"
  "libavformat/apetag.h"
  "libavformat/rtmp.h"
  "libavformat/imf.h"
  "libavformat/internal.h"
  "libavformat/spdif.h"
  "libavformat/mms.h"
  "libavformat/smjpeg.h"
  "libavformat/replaygain.h"
  "libavformat/rtp.h"
  "libavformat/id3v2.h"
  "libavformat/lrc.h"
  "libavformat/ip.h"
  "libavformat/wv.h"
  "libavformat/flv.h"
  "libavformat/version.h"
  "libavformat/img2.h"
  "libavformat/swf.h"
  "libavformat/avio.h"
  "libavformat/rtmppkt.h"
  "libavformat/mux.h"
  "libavformat/hlsplaylist.h"
  "libavformat/httpauth.h"
  "libavformat/subtitles.h"
  "libavformat/flac_picture.h"
  "libavformat/nut.h"
  "libavformat/rso.h"
  "libavformat/wtv.h"
  "libavformat/os_support.h"
  "libavformat/gxf.h"
  "libavformat/rm.h"
  "libavformat/w64.h"
  "libavformat/rtspcodes.h"
  "libavformat/dvdclut.h"
  "libavformat/movenc_ttml.h"
  "libavformat/metadata.h"
  "libavformat/rtpdec_formats.h"
  "libavformat/flacenc.h"
  "libavformat/voc.h"
  "libavformat/ircam.h"
  "libavformat/rtpproto.h"
  "libavformat/sox.h"
  "libavformat/iamf_writer.h"
  "libavformat/rawdec.h"
  "libavformat/rmsipr.h"
  "libavformat/vpcc.h"
  "libavformat/network.h"
  "libavformat/srtp.h"
  "libavformat/vorbiscomment.h"
  "libavformat/mpeg.h"
  "libavformat/rtpenc.h"
  "libavformat/rtpdec.h"
  "libavformat/oma.h"
  "libavformat/matroska.h"
  "libavformat/options_table.h"
  "libavformat/movenc.h"
  "libavformat/pcm.h"
  "libavformat/avlanguage.h"
  "libavformat/mpegts.h"
  "libavformat/avi.h"
  "libavformat/rawutils.h"
  "libavformat/riff.h"
  "libavformat/ast.h"
  "libavformat/demux.h"
  "libavformat/iamf_parse.h"
  "libavformat/rdt.h"
  "libavformat/tls.h"
  "libavformat/qtpalette.h"
  "libavformat/aiff.h"
  "libavformat/iamf.h"
  "libavformat/argo_asf.h"
  "libavformat/ttmlenc.h"
  "libavformat/av1.h"
  "libavformat/avc.h"
  "libavformat/rtpenc_chain.h"
  "libavformat/asfcrypt.h"
  "libavformat/rtsp.h"
  "libavformat/rawenc.h"
  "libavformat/mxf.h"
  "libavformat/vvc.h"
  "libavformat/avio_internal.h"
  "libavformat/mov_chan.h"
  "libavformat/rtmpdh.h"
  "libavformat/oggdec.h"
  "libavformat/ffmeta.h" ]#