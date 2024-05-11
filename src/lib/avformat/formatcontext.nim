#import ../../wrapper/libavformat/libavformat
#import ../../wrapperc2nim/avformat/libavformat
#import ../../wrapper/libavutil/dict as d
#import ../../wrapperc2nim/avutil/dict as d
import ../../wrapperFuthark/libav

import ../avutil/dict
#import ../avcodec/codec
import std/[strformat]

type
  FormatContextObj* = object
    handle*: ptr Avformatcontext = nil
    isInput*:bool
  FormatContext* = ref FormatContextObj


# proc `destroy=`*(fc:FormatContext) =
#   if fc.handle != nil:
#     if fc.isInput:
#       echo "OK"
#       #avformat_close_input(fc.handle.addr)
#     else:
    # /* close output */
    # if (ofmt_ctx && !(ofmt->flags & AVFMT_NOFILE))
    #     avio_closep(&ofmt_ctx->pb);

    # avformat_free_context(ofmt_ctx);

proc getFormatContext*(fileName:string): FormatContext =
  # https://ffmpeg.org/doxygen/trunk/group__lavf__decoding.html#gac05d61a2b492ae3985c658f34622c19d
  result = new FormatContext
  var ret:cint
  ret = avformatopeninput(result.handle.addr, filename.cstring, nil, nil)
  if ret != 0:
    raise newException(ValueError, "failed getting the FormatContext")

proc openInput*(fileName:string):FormatContext =
  result = new FormatContext
  result.isInput = true
  var ret = avformat_open_input(result.handle.addr, fileName.cstring, nil, nil)
  if ret < 0:
    raise newException(ValueError, &"Could not open input file '{fileName}'")

proc metadata*(val:FormatContext):Dict =
  result = new Dict
  result.handle = cast[ptr Avdictionary](val.handle[].metadata)

  # for k,v in pairs(metadata):
  #   echo k, ": ", v  

proc streamsNumber*(fc:FormatContext):int =
  fc.handle.nb_streams.int

proc allocOutputContext*(filename:string):FormatContext =
  result = new FormatContext

  # https://ffmpeg.org/doxygen/trunk/avformat_8h.html#af5930942120e38a4766dc0bb9e4cae74
  let ret = avformat_alloc_output_context2(result.handle.addr, nil, nil, filename.cstring)
  if ret < 0:
    raise newException(ValueError, "negative AVERROR code")    
  if result.handle == nil:
    raise newException(ValueError, "could not create output context")


 

#[
  structavformatcontext_520094281 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /usr/include/libavformat/avformat.h:1121:16
    iformat*: ptr structavinputformat_520094280
    oformat*: ptr structavoutputformat_520094276
    privdata*: pointer
    pb*: ptr Aviocontext_520094111
    ctxflags*: cint
    nbstreams*: cuint
    streams*: ptr ptr Avstream_520094294
    url*: cstring
    starttime*: int64
    duration*: int64
    bitrate*: int64
    packetsize*: cuint
    maxdelay*: cint
    flags*: cint
    probesize*: int64
    maxanalyzeduration*: int64
    key*: ptr uint8
    keylen*: cint
    nbprograms*: cuint
    programs*: ptr ptr Avprogram_520094298
    videocodecid*: enumavcodecid_520094174
    audiocodecid*: enumavcodecid_520094174
    subtitlecodecid*: enumavcodecid_520094174
    maxindexsize*: cuint
    maxpicturebuffer*: cuint
    nbchapters*: cuint
    chapters*: ptr ptr Avchapter_520094302
    metadata*: ptr Avdictionary_520094083
    starttimerealtime*: int64
    fpsprobesize*: cint
    errorrecognition*: cint
    interruptcallback*: Aviointerruptcb_520094097
    debug*: cint
    maxinterleavedelta*: int64
    strictstdcompliance*: cint
    eventflags*: cint
    maxtsprobe*: cint
    avoidnegativets*: cint
    tsid*: cint
    audiopreload*: cint
    maxchunkduration*: cint
    maxchunksize*: cint
    usewallclockastimestamps*: cint
    avioflags*: cint
    durationestimationmethod*: enumavdurationestimationmethod_520094308
    skipinitialbytes*: int64
    correcttsoverflow*: cuint
    seek2any*: cint
    flushpackets*: cint
    probescore*: cint
    formatprobesize*: cint
    codecwhitelist*: cstring
    formatwhitelist*: cstring
    iorepositioned*: cint
    videocodec*: ptr structavcodec_520094264
    audiocodec*: ptr structavcodec_520094264
    subtitlecodec*: ptr structavcodec_520094264
    datacodec*: ptr structavcodec_520094264
    metadataheaderpadding*: cint
    opaque*: pointer
    controlmessagecb*: avformatcontrolmessage_520094304
    outputtsoffset*: int64
    dumpseparator*: ptr uint8
    datacodecid*: enumavcodecid_520094174
    protocolwhitelist*: cstring
    ioopen*: proc (a0: ptr structavformatcontext_520094282;
                   a1: ptr ptr Aviocontext_520094111; a2: cstring; a3: cint;
                   a4: ptr ptr Avdictionary_520094083): cint {.cdecl.}
    protocolblacklist*: cstring
    maxstreams*: cint
    skipestimatedurationfrompts*: cint
    maxprobepackets*: cint
    ioclose2*: proc (a0: ptr structavformatcontext_520094282;
                     a1: ptr Aviocontext_520094111): cint {.cdecl.}
]#


