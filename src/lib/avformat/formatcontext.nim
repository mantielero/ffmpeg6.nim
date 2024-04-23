import ../../wrapper/libavformat/libavformat
import ../../wrapper/libavutil/dict as d
import ../avutil/dict

type
  FormatContextObj* = object
    handle*: ptr Avformatcontext = nil
  FormatContext* = ref FormatContextObj

proc getFormatContext*(fileName:string): FormatContext =
  # https://ffmpeg.org/doxygen/trunk/group__lavf__decoding.html#gac05d61a2b492ae3985c658f34622c19d
  result = new FormatContext
  var ret:cint
  ret = avformatopeninput(result.handle.addr, filename.cstring, nil, nil)
  if ret != 0:
    raise newException(ValueError, "failed getting the FormatContext")


proc metadata*(val:FormatContext):Dict =
  result = new Dict
  result.handle = cast[ptr d.Avdictionary](val.handle[].metadata)

  # for k,v in pairs(metadata):
  #   echo k, ": ", v  
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