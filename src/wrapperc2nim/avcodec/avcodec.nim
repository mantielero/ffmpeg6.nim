{.experimental: "codereordering".}
type # FIXME
  AVClass* = object
  AVMediaType* = object
  AVCodec* = object
  AVCodecID* = object
  AVCodecInternal* = object
  AVPixelFormat* = object
  AVFrame* = object
  AVFieldOrder* = object
  AVAudioServiceType* = object
  #RcOverride* = object
  #AVHWAccel* = object
  AVDiscard* = object
  AVCodecDescriptor* = object
  AVPacketSideData* = object
  AVBufferRef* = object
  AVPacket* = object
  AVCodecParameters* = object

  

import ../libavutil

const
  av_Num_Data_Pointers = 4
  ff_Api_Slice_Offset = false
  ff_Api_Old_Channel_Layout = false
  ff_Api_Avctx_Frame_Number = false
  ff_Api_Reordered_Opaque = false
  ff_Api_Dropchanged = false
  av_Parser_Pts_Nb* = 10
# ------------------------------------
const
  FF_COMPRESSION_DEFAULT* = -1

const
  FF_CMP_SAD* = 0
  FF_CMP_SSE* = 1
  FF_CMP_SATD* = 2
  FF_CMP_DCT* = 3
  FF_CMP_PSNR* = 4
  FF_CMP_BIT* = 5
  FF_CMP_RD* = 6
  FF_CMP_ZERO* = 7
  FF_CMP_VSAD* = 8
  FF_CMP_VSSE* = 9
  FF_CMP_NSSE* = 10
  FF_CMP_W53* = 11
  FF_CMP_W97* = 12
  FF_CMP_DCTMAX* = 13
  FF_CMP_DCT264* = 14
  FF_CMP_MEDIAN_SAD* = 15
  FF_CMP_CHROMA* = 256

const
  SLICE_FLAG_CODED_ORDER* = 0x0001
  SLICE_FLAG_ALLOW_FIELD* = 0x0002
  SLICE_FLAG_ALLOW_PLANE* = 0x0004

const
  FF_MB_DECISION_SIMPLE* = 0
  FF_MB_DECISION_BITS* = 1
  FF_MB_DECISION_RD* = 2

const
  FF_BUG_AUTODETECT* = 1
  FF_BUG_XVID_ILACE* = 4
  FF_BUG_UMP4* = 8
  FF_BUG_NO_PADDING* = 16
  FF_BUG_AMV* = 32
  FF_BUG_QPEL_CHROMA* = 64
  FF_BUG_STD_QPEL* = 128
  FF_BUG_QPEL_CHROMA2* = 256
  FF_BUG_DIRECT_BLOCKSIZE* = 512
  FF_BUG_EDGE* = 1024
  FF_BUG_HPEL_CHROMA* = 2048
  FF_BUG_DC_CLIP* = 4096
  FF_BUG_MS* = 8192
  FF_BUG_TRUNCATED* = 16384
  FF_BUG_IEDGE* = 32768

const
  FF_EC_GUESS_MVS* = 1
  FF_EC_DEBLOCK* = 2
  FF_EC_FAVOR_INTER* = 256

const
  FF_DEBUG_PICT_INFO* = 1
  FF_DEBUG_RC* = 2
  FF_DEBUG_BITSTREAM* = 4
  FF_DEBUG_MB_TYPE* = 8
  FF_DEBUG_QP* = 16
  FF_DEBUG_DCT_COEFF* = 0x00000040
  FF_DEBUG_SKIP* = 0x00000080
  FF_DEBUG_STARTCODE* = 0x00000100
  FF_DEBUG_ER* = 0x00000400
  FF_DEBUG_MMCO* = 0x00000800
  FF_DEBUG_BUGS* = 0x00001000
  FF_DEBUG_BUFFERS* = 0x00008000
  FF_DEBUG_THREADS* = 0x00010000
  FF_DEBUG_GREEN_MD* = 0x00800000
  FF_DEBUG_NOMC* = 0x01000000

const
  FF_DCT_AUTO* = 0
  FF_DCT_FASTINT* = 1
  FF_DCT_INT* = 2
  FF_DCT_MMX* = 3
  FF_DCT_ALTIVEC* = 5
  FF_DCT_FAAN* = 6

const
  FF_IDCT_AUTO* = 0
  FF_IDCT_INT* = 1
  FF_IDCT_SIMPLE* = 2
  FF_IDCT_SIMPLEMMX* = 3
  FF_IDCT_ARM* = 7
  FF_IDCT_ALTIVEC* = 8
  FF_IDCT_SIMPLEARM* = 10
  FF_IDCT_XVID* = 14
  FF_IDCT_SIMPLEARMV5TE* = 16
  FF_IDCT_SIMPLEARMV6* = 17
  FF_IDCT_FAAN* = 20
  FF_IDCT_SIMPLENEON* = 22

const
  FF_IDCT_SIMPLEAUTO* = 128

const
  FF_THREAD_FRAME* = 1
  FF_THREAD_SLICE* = 2

const
  FF_SUB_CHARENC_MODE_DO_NOTHING* = -1
  FF_SUB_CHARENC_MODE_AUTOMATIC* = 0
  FF_SUB_CHARENC_MODE_PRE_DECODER* = 1
  FF_SUB_CHARENC_MODE_IGNORE* = 2

const
  FF_CODEC_PROPERTY_LOSSLESS* = 0x00000001
  FF_CODEC_PROPERTY_CLOSED_CAPTIONS* = 0x00000002
  FF_CODEC_PROPERTY_FILM_GRAIN* = 0x00000004

type
  AVCodecContext* {.importc: "AVCodecContext",  bycopy.} = object
    avClass* {.importc: "av_class".}: ptr AVClass
    logLevelOffset* {.importc: "log_level_offset".}: cint
    codecType* {.importc: "codec_type".}: AVMediaType
    codec* {.importc: "codec".}: ptr AVCodec
    codecId* {.importc: "codec_id".}: AVCodecID
    codecTag* {.importc: "codec_tag".}: cuint
    privData* {.importc: "priv_data".}: pointer
    internal* {.importc: "internal".}: ptr AVCodecInternal
    opaque* {.importc: "opaque".}: pointer
    bitRate* {.importc: "bit_rate".}: int64
    bitRateTolerance* {.importc: "bit_rate_tolerance".}: cint
    globalQuality* {.importc: "global_quality".}: cint
    compressionLevel* {.importc: "compression_level".}: cint
    flags* {.importc: "flags".}: cint
    flags2* {.importc: "flags2".}: cint
    extradata* {.importc: "extradata".}: ptr uint8
    extradataSize* {.importc: "extradata_size".}: cint
    timeBase* {.importc: "time_base".}: AVRational
    # when ff_Api_Ticks_Per_Frame:
    #   ticksPerFrame* {.importc: "ticks_per_frame", header: "a.h".}: cint
    delay* {.importc: "delay".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint
    codedWidth* {.importc: "coded_width".}: cint
    codedHeight* {.importc: "coded_height".}: cint
    gopSize* {.importc: "gop_size".}: cint
    pixFmt* {.importc: "pix_fmt".}: AVPixelFormat
    drawHorizBand* {.importc: "draw_horiz_band".}: proc (s: ptr AVCodecContext;
        src: ptr AVFrame; offset: array[av_Num_Data_Pointers, cint]; y: cint;
        `type`: cint; height: cint)
    getFormat* {.importc: "get_format".}: proc (s: ptr AVCodecContext;
        fmt: ptr AVPixelFormat): AVPixelFormat
    maxBFrames* {.importc: "max_b_frames".}: cint
    bQuantFactor* {.importc: "b_quant_factor".}: cfloat
    bQuantOffset* {.importc: "b_quant_offset".}: cfloat
    hasBFrames* {.importc: "has_b_frames".}: cint
    iQuantFactor* {.importc: "i_quant_factor".}: cfloat
    iQuantOffset* {.importc: "i_quant_offset".}: cfloat
    lumiMasking* {.importc: "lumi_masking".}: cfloat
    temporalCplxMasking* {.importc: "temporal_cplx_masking".}: cfloat
    spatialCplxMasking* {.importc: "spatial_cplx_masking".}: cfloat
    pMasking* {.importc: "p_masking".}: cfloat
    darkMasking* {.importc: "dark_masking".}: cfloat
    when ff_Api_Slice_Offset:
      sliceCount* {.importc: "slice_count", header: "a.h".}: cint
      sliceOffset* {.importc: "slice_offset", header: "a.h".}: ptr cint
    sampleAspectRatio* {.importc: "sample_aspect_ratio".}: AVRational
    meCmp* {.importc: "me_cmp".}: cint
    meSubCmp* {.importc: "me_sub_cmp".}: cint
    mbCmp* {.importc: "mb_cmp".}: cint
    ildctCmp* {.importc: "ildct_cmp".}: cint
    diaSize* {.importc: "dia_size".}: cint
    lastPredictorCount* {.importc: "last_predictor_count".}: cint
    mePreCmp* {.importc: "me_pre_cmp".}: cint
    preDiaSize* {.importc: "pre_dia_size".}: cint
    meSubpelQuality* {.importc: "me_subpel_quality".}: cint
    meRange* {.importc: "me_range".}: cint
    sliceFlags* {.importc: "slice_flags".}: cint
    mbDecision* {.importc: "mb_decision".}: cint
    intraMatrix* {.importc: "intra_matrix".}: ptr uint16
    interMatrix* {.importc: "inter_matrix".}: ptr uint16
    intraDcPrecision* {.importc: "intra_dc_precision".}: cint
    skipTop* {.importc: "skip_top".}: cint
    skipBottom* {.importc: "skip_bottom".}: cint
    mbLmin* {.importc: "mb_lmin".}: cint
    mbLmax* {.importc: "mb_lmax".}: cint
    bidirRefine* {.importc: "bidir_refine".}: cint
    keyintMin* {.importc: "keyint_min".}: cint
    refs* {.importc: "refs".}: cint
    mv0Threshold* {.importc: "mv0_threshold".}: cint
    colorPrimaries* {.importc: "color_primaries".}: AVColorPrimaries
    colorTrc* {.importc: "color_trc".}: AVColorTransferCharacteristic
    colorspace* {.importc: "colorspace".}: AVColorSpace
    colorRange* {.importc: "color_range".}: AVColorRange
    chromaSampleLocation* {.importc: "chroma_sample_location".}: AVChromaLocation
    slices* {.importc: "slices".}: cint
    fieldOrder* {.importc: "field_order".}: AVFieldOrder
    sampleRate* {.importc: "sample_rate".}: cint
    when ff_Api_Old_Channel_Layout:
      channels* {.importc: "channels", header: "a.h".}: cint
    sampleFmt* {.importc: "sample_fmt".}: AVSampleFormat
    frameSize* {.importc: "frame_size".}: cint
    when ff_Api_Avctx_Frame_Number:
      frameNumber* {.importc: "frame_number", header: "a.h".}: cint
    blockAlign* {.importc: "block_align".}: cint
    cutoff* {.importc: "cutoff".}: cint
    when ff_Api_Old_Channel_Layout:
      channelLayout* {.importc: "channel_layout", header: "a.h".}: uint64
      requestChannelLayout* {.importc: "request_channel_layout", header: "a.h".}: uint64
    audioServiceType* {.importc: "audio_service_type".}: AVAudioServiceType
    requestSampleFmt* {.importc: "request_sample_fmt".}: AVSampleFormat
    getBuffer2* {.importc: "get_buffer2".}: proc (s: ptr AVCodecContext;
        frame: ptr AVFrame; flags: cint): cint
    qcompress* {.importc: "qcompress".}: cfloat
    qblur* {.importc: "qblur".}: cfloat
    qmin* {.importc: "qmin".}: cint
    qmax* {.importc: "qmax".}: cint
    maxQdiff* {.importc: "max_qdiff".}: cint
    rcBufferSize* {.importc: "rc_buffer_size".}: cint
    rcOverrideCount* {.importc: "rc_override_count".}: cint
    rcOverride* {.importc: "rc_override".}: ptr RcOverride
    rcMaxRate* {.importc: "rc_max_rate".}: int64
    rcMinRate* {.importc: "rc_min_rate".}: int64
    rcMaxAvailableVbvUse* {.importc: "rc_max_available_vbv_use".}: cfloat
    rcMinVbvOverflowUse* {.importc: "rc_min_vbv_overflow_use".}: cfloat
    rcInitialBufferOccupancy* {.importc: "rc_initial_buffer_occupancy".}: cint
    trellis* {.importc: "trellis".}: cint
    statsOut* {.importc: "stats_out".}: cstring
    statsIn* {.importc: "stats_in".}: cstring
    workaroundBugs* {.importc: "workaround_bugs".}: cint
    strictStdCompliance* {.importc: "strict_std_compliance".}: cint
    errorConcealment* {.importc: "error_concealment".}: cint
    debug* {.importc: "debug".}: cint
    errRecognition* {.importc: "err_recognition".}: cint
    when ff_Api_Reordered_Opaque:
      reorderedOpaque* {.importc: "reordered_opaque", header: "a.h".}: int64
    hwaccel* {.importc: "hwaccel".}: ptr AVHWAccel
    hwaccelContext* {.importc: "hwaccel_context".}: pointer
    error* {.importc: "error".}: array[av_Num_Data_Pointers, uint64]
    dctAlgo* {.importc: "dct_algo".}: cint
    idctAlgo* {.importc: "idct_algo".}: cint
    # when ff_Api_Idct_None:
    #   const
    #     FF_IDCT_NONE* = 24
    bitsPerCodedSample* {.importc: "bits_per_coded_sample".}: cint
    bitsPerRawSample* {.importc: "bits_per_raw_sample".}: cint
    lowres* {.importc: "lowres".}: cint
    threadCount* {.importc: "thread_count".}: cint
    threadType* {.importc: "thread_type".}: cint
    activeThreadType* {.importc: "active_thread_type".}: cint
    execute* {.importc: "execute".}: proc (c: ptr AVCodecContext; `func`: proc (
        c2: ptr AVCodecContext; arg: pointer): cint; arg2: pointer; ret: ptr cint;
                                       count: cint; size: cint): cint
    execute2* {.importc: "execute2".}: proc (c: ptr AVCodecContext; `func`: proc (
        c2: ptr AVCodecContext; arg: pointer; jobnr: cint; threadnr: cint): cint;
        arg2: pointer; ret: ptr cint; count: cint): cint
    nsseWeight* {.importc: "nsse_weight".}: cint
    profile* {.importc: "profile".}: cint
    # when ff_Api_Ff_Profile_Level:
    #   const
    #     FF_PROFILE_UNKNOWN* = -99
    #     FF_PROFILE_RESERVED* = -100
    #     FF_PROFILE_AAC_MAIN* = 0
    #     FF_PROFILE_AAC_LOW* = 1
    #     FF_PROFILE_AAC_SSR* = 2
    #     FF_PROFILE_AAC_LTP* = 3
    #     FF_PROFILE_AAC_HE* = 4
    #     FF_PROFILE_AAC_HE_V2* = 28
    #     FF_PROFILE_AAC_LD* = 22
    #     FF_PROFILE_AAC_ELD* = 38
    #     FF_PROFILE_MPEG2_AAC_LOW* = 128
    #     FF_PROFILE_MPEG2_AAC_HE* = 131
    #     FF_PROFILE_DNXHD* = 0
    #     FF_PROFILE_DNXHR_LB* = 1
    #     FF_PROFILE_DNXHR_SQ* = 2
    #     FF_PROFILE_DNXHR_HQ* = 3
    #     FF_PROFILE_DNXHR_HQX* = 4
    #     FF_PROFILE_DNXHR_444* = 5
    #     FF_PROFILE_DTS* = 20
    #     FF_PROFILE_DTS_ES* = 30
    #     FF_PROFILE_DTS_96_24* = 40
    #     FF_PROFILE_DTS_HD_HRA* = 50
    #     FF_PROFILE_DTS_HD_MA* = 60
    #     FF_PROFILE_DTS_EXPRESS* = 70
    #     FF_PROFILE_DTS_HD_MA_X* = 61
    #     FF_PROFILE_DTS_HD_MA_X_IMAX* = 62
    #     FF_PROFILE_EAC3_DDP_ATMOS* = 30
    #     FF_PROFILE_TRUEHD_ATMOS* = 30
    #     FF_PROFILE_MPEG2_422* = 0
    #     FF_PROFILE_MPEG2_HIGH* = 1
    #     FF_PROFILE_MPEG2_SS* = 2
    #     FF_PROFILE_MPEG2_SNR_SCALABLE* = 3
    #     FF_PROFILE_MPEG2_MAIN* = 4
    #     FF_PROFILE_MPEG2_SIMPLE* = 5
    #     FF_PROFILE_H264_CONSTRAINED* = (1 shl 9)
    #     FF_PROFILE_H264_INTRA* = (1 shl 11)
    #     FF_PROFILE_H264_BASELINE* = 66
    #     FF_PROFILE_H264_CONSTRAINED_BASELINE* = (66 or ff_Profile_H264Constrained)
    #     FF_PROFILE_H264_MAIN* = 77
    #     FF_PROFILE_H264_EXTENDED* = 88
    #     FF_PROFILE_H264_HIGH* = 100
    #     FF_PROFILE_H264_HIGH_10* = 110
    #     FF_PROFILE_H264_HIGH_10_INTRA* = (110 or ff_Profile_H264Intra)
    #     FF_PROFILE_H264_MULTIVIEW_HIGH* = 118
    #     FF_PROFILE_H264_HIGH_422* = 122
    #     FF_PROFILE_H264_HIGH_422_INTRA* = (122 or ff_Profile_H264Intra)
    #     FF_PROFILE_H264_STEREO_HIGH* = 128
    #     FF_PROFILE_H264_HIGH_444* = 144
    #     FF_PROFILE_H264_HIGH_444_PREDICTIVE* = 244
    #     FF_PROFILE_H264_HIGH_444_INTRA* = (244 or ff_Profile_H264Intra)
    #     FF_PROFILE_H264_CAVLC_444* = 44
    #     FF_PROFILE_VC1_SIMPLE* = 0
    #     FF_PROFILE_VC1_MAIN* = 1
    #     FF_PROFILE_VC1_COMPLEX* = 2
    #     FF_PROFILE_VC1_ADVANCED* = 3
    #     FF_PROFILE_MPEG4_SIMPLE* = 0
    #     FF_PROFILE_MPEG4_SIMPLE_SCALABLE* = 1
    #     FF_PROFILE_MPEG4_CORE* = 2
    #     FF_PROFILE_MPEG4_MAIN* = 3
    #     FF_PROFILE_MPEG4_N_BIT* = 4
    #     FF_PROFILE_MPEG4_SCALABLE_TEXTURE* = 5
    #     FF_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION* = 6
    #     FF_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE* = 7
    #     FF_PROFILE_MPEG4_HYBRID* = 8
    #     FF_PROFILE_MPEG4_ADVANCED_REAL_TIME* = 9
    #     FF_PROFILE_MPEG4_CORE_SCALABLE* = 10
    #     FF_PROFILE_MPEG4_ADVANCED_CODING* = 11
    #     FF_PROFILE_MPEG4_ADVANCED_CORE* = 12
    #     FF_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE* = 13
    #     FF_PROFILE_MPEG4_SIMPLE_STUDIO* = 14
    #     FF_PROFILE_MPEG4_ADVANCED_SIMPLE* = 15
    #     FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0* = 1
    #     FF_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1* = 2
    #     FF_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION* = 32768
    #     FF_PROFILE_JPEG2000_DCINEMA_2K* = 3
    #     FF_PROFILE_JPEG2000_DCINEMA_4K* = 4
    #     FF_PROFILE_VP9_0* = 0
    #     FF_PROFILE_VP9_1* = 1
    #     FF_PROFILE_VP9_2* = 2
    #     FF_PROFILE_VP9_3* = 3
    #     FF_PROFILE_HEVC_MAIN* = 1
    #     FF_PROFILE_HEVC_MAIN_10* = 2
    #     FF_PROFILE_HEVC_MAIN_STILL_PICTURE* = 3
    #     FF_PROFILE_HEVC_REXT* = 4
    #     FF_PROFILE_HEVC_SCC* = 9
    #     FF_PROFILE_VVC_MAIN_10* = 1
    #     FF_PROFILE_VVC_MAIN_10_444* = 33
    #     FF_PROFILE_AV1_MAIN* = 0
    #     FF_PROFILE_AV1_HIGH* = 1
    #     FF_PROFILE_AV1_PROFESSIONAL* = 2
    #     FF_PROFILE_MJPEG_HUFFMAN_BASELINE_DCT* = 0xc0
    #     FF_PROFILE_MJPEG_HUFFMAN_EXTENDED_SEQUENTIAL_DCT* = 0xc1
    #     FF_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT* = 0xc2
    #     FF_PROFILE_MJPEG_HUFFMAN_LOSSLESS* = 0xc3
    #     FF_PROFILE_MJPEG_JPEG_LS* = 0xf7
    #     FF_PROFILE_SBC_MSBC* = 1
    #     FF_PROFILE_PRORES_PROXY* = 0
    #     FF_PROFILE_PRORES_LT* = 1
    #     FF_PROFILE_PRORES_STANDARD* = 2
    #     FF_PROFILE_PRORES_HQ* = 3
    #     FF_PROFILE_PRORES_4444* = 4
    #     FF_PROFILE_PRORES_XQ* = 5
    #     FF_PROFILE_ARIB_PROFILE_A* = 0
    #     FF_PROFILE_ARIB_PROFILE_C* = 1
    #     FF_PROFILE_KLVA_SYNC* = 0
    #     FF_PROFILE_KLVA_ASYNC* = 1
    #     FF_PROFILE_EVC_BASELINE* = 0
    #     FF_PROFILE_EVC_MAIN* = 1
    level* {.importc: "level".}: cint
    # when ff_Api_Ff_Profile_Level:
    #   const
    #     FF_LEVEL_UNKNOWN* = -99
    skipLoopFilter* {.importc: "skip_loop_filter".}: AVDiscard
    skipIdct* {.importc: "skip_idct".}: AVDiscard
    skipFrame* {.importc: "skip_frame".}: AVDiscard
    subtitleHeader* {.importc: "subtitle_header".}: ptr uint8
    subtitleHeaderSize* {.importc: "subtitle_header_size".}: cint
    initialPadding* {.importc: "initial_padding".}: cint
    framerate* {.importc: "framerate".}: AVRational
    swPixFmt* {.importc: "sw_pix_fmt".}: AVPixelFormat
    pktTimebase* {.importc: "pkt_timebase".}: AVRational
    codecDescriptor* {.importc: "codec_descriptor".}: ptr AVCodecDescriptor
    ptsCorrectionNumFaultyPts* {.importc: "pts_correction_num_faulty_pts".}: int64
    ptsCorrectionNumFaultyDts* {.importc: "pts_correction_num_faulty_dts".}: int64
    ptsCorrectionLastPts* {.importc: "pts_correction_last_pts".}: int64
    ptsCorrectionLastDts* {.importc: "pts_correction_last_dts".}: int64
    subCharenc* {.importc: "sub_charenc".}: cstring
    subCharencMode* {.importc: "sub_charenc_mode".}: cint
    skipAlpha* {.importc: "skip_alpha".}: cint
    seekPreroll* {.importc: "seek_preroll".}: cint
    chromaIntraMatrix* {.importc: "chroma_intra_matrix".}: ptr uint16
    dumpSeparator* {.importc: "dump_separator".}: ptr uint8
    codecWhitelist* {.importc: "codec_whitelist".}: cstring
    properties* {.importc: "properties".}: cuint
    codedSideData* {.importc: "coded_side_data".}: ptr AVPacketSideData
    nbCodedSideData* {.importc: "nb_coded_side_data".}: cint
    hwFramesCtx* {.importc: "hw_frames_ctx".}: ptr AVBufferRef
    trailingPadding* {.importc: "trailing_padding".}: cint
    maxPixels* {.importc: "max_pixels".}: int64
    hwDeviceCtx* {.importc: "hw_device_ctx".}: ptr AVBufferRef
    hwaccelFlags* {.importc: "hwaccel_flags".}: cint
    applyCropping* {.importc: "apply_cropping".}: cint
    extraHwFrames* {.importc: "extra_hw_frames".}: cint
    discardDamagedPercentage* {.importc: "discard_damaged_percentage".}: cint
    maxSamples* {.importc: "max_samples".}: int64
    exportSideData* {.importc: "export_side_data".}: cint
    getEncodeBuffer* {.importc: "get_encode_buffer".}: proc (s: ptr AVCodecContext;
        pkt: ptr AVPacket; flags: cint): cint
    chLayout* {.importc: "ch_layout".}: AVChannelLayout
    frameNum* {.importc: "frame_num".}: int64



# import
#   libavutil/samplefmt, libavutil/attributes, libavutil/avutil, libavutil/buffer,
#   libavutil/channelLayout, libavutil/dict, libavutil/frame, libavutil/log,
#   libavutil/pixfmt, libavutil/rational, codec, codecId, defs, packet, versionMajor

# when not defined(HAVE_AV_CONFIG_H):
#   import
#     version, codecDesc, codecPar

discard "forward decl of AVCodecParameters"
const
  AV_INPUT_BUFFER_MIN_SIZE* = 16384


type
  RcOverride* {.importc: "RcOverride",  bycopy.} = object
    startFrame* {.importc: "start_frame".}: cint
    endFrame* {.importc: "end_frame".}: cint
    qscale* {.importc: "qscale".}: cint
    qualityFactor* {.importc: "quality_factor".}: cfloat



const
  AV_CODEC_FLAG_UNALIGNED* = (1 shl 0)


const
  AV_CODEC_FLAG_QSCALE* = (1 shl 1)


const
  AV_CODEC_FLAG_4MV* = (1 shl 2)


const
  AV_CODEC_FLAG_OUTPUT_CORRUPT* = (1 shl 3)


const
  AV_CODEC_FLAG_QPEL* = (1 shl 4)

when ff_Api_Dropchanged:
  const
    AV_CODEC_FLAG_DROPCHANGED* = (1 shl 5)

const
  AV_CODEC_FLAG_RECON_FRAME* = (1 shl 6)


const
  AV_CODEC_FLAG_COPY_OPAQUE* = (1 shl 7)


const
  AV_CODEC_FLAG_FRAME_DURATION* = (1 shl 8)


const
  AV_CODEC_FLAG_PASS1* = (1 shl 9)


const
  AV_CODEC_FLAG_PASS2* = (1 shl 10)


const
  AV_CODEC_FLAG_LOOP_FILTER* = (1 shl 11)


const
  AV_CODEC_FLAG_GRAY* = (1 shl 13)


const
  AV_CODEC_FLAG_PSNR* = (1 shl 15)


const
  AV_CODEC_FLAG_INTERLACED_DCT* = (1 shl 18)


const
  AV_CODEC_FLAG_LOW_DELAY* = (1 shl 19)


const
  AV_CODEC_FLAG_GLOBAL_HEADER* = (1 shl 22)


const
  AV_CODEC_FLAG_BITEXACT* = (1 shl 23)


const
  AV_CODEC_FLAG_AC_PRED* = (1 shl 24)


const
  AV_CODEC_FLAG_INTERLACED_ME* = (1 shl 29)
  AV_CODEC_FLAG_CLOSED_GOP* = (1'u shl 31)


const
  AV_CODEC_FLAG2_FAST* = (1 shl 0)


const
  AV_CODEC_FLAG2_NO_OUTPUT* = (1 shl 2)


const
  AV_CODEC_FLAG2_LOCAL_HEADER* = (1 shl 3)


const
  AV_CODEC_FLAG2_CHUNKS* = (1 shl 15)


const
  AV_CODEC_FLAG2_IGNORE_CROP* = (1 shl 16)


const
  AV_CODEC_FLAG2_SHOW_ALL* = (1 shl 22)


const
  AV_CODEC_FLAG2_EXPORT_MVS* = (1 shl 28)


const
  AV_CODEC_FLAG2_SKIP_MANUAL* = (1 shl 29)


const
  AV_CODEC_FLAG2_RO_FLUSH_NOOP* = (1 shl 30)


const
  AV_CODEC_FLAG2_ICC_PROFILES* = (1'u shl 31)


const
  AV_CODEC_EXPORT_DATA_MVS* = (1 shl 0)


const
  AV_CODEC_EXPORT_DATA_PRFT* = (1 shl 1)


const
  AV_CODEC_EXPORT_DATA_VIDEO_ENC_PARAMS* = (1 shl 2)


const
  AV_CODEC_EXPORT_DATA_FILM_GRAIN* = (1 shl 3)


const
  AV_GET_BUFFER_FLAG_REF* = (1 shl 0)


const
  AV_GET_ENCODE_BUFFER_FLAG_REF* = (1 shl 0)


type
  AVHWAccel* {.importc: "AVHWAccel",  bycopy.} = object
    name* {.importc: "name".}: cstring
    `type`* {.importc: "type".}: AVMediaType
    id* {.importc: "id".}: AVCodecID
    pixFmt* {.importc: "pix_fmt".}: AVPixelFormat
    capabilities* {.importc: "capabilities".}: cint



const
  AV_HWACCEL_CODEC_CAP_EXPERIMENTAL* = 0x0200


const
  AV_HWACCEL_FLAG_IGNORE_LEVEL* = (1 shl 0)


const
  AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH* = (1 shl 1)


const
  AV_HWACCEL_FLAG_ALLOW_PROFILE_MISMATCH* = (1 shl 2)


const
  AV_HWACCEL_FLAG_UNSAFE_OUTPUT* = (1 shl 3)


type
  AVSubtitleType* {.size: sizeof(cint).} = enum
    SUBTITLE_NONE, SUBTITLE_BITMAP, SUBTITLE_TEXT, SUBTITLE_ASS


const
  AV_SUBTITLE_FLAG_FORCED* = 0x00000001

type
  AVSubtitleRect* {.importc: "AVSubtitleRect",  bycopy.} = object
    x* {.importc: "x".}: cint
    y* {.importc: "y".}: cint
    w* {.importc: "w".}: cint
    h* {.importc: "h".}: cint
    nbColors* {.importc: "nb_colors".}: cint
    data* {.importc: "data".}: array[4, ptr uint8]
    linesize* {.importc: "linesize".}: array[4, cint]
    `type`* {.importc: "type".}: AVSubtitleType
    text* {.importc: "text".}: cstring
    ass* {.importc: "ass".}: cstring
    flags* {.importc: "flags".}: cint

  AVSubtitle* {.importc: "AVSubtitle",  bycopy.} = object
    format* {.importc: "format".}: uint16
    startDisplayTime* {.importc: "start_display_time".}: uint32
    endDisplayTime* {.importc: "end_display_time".}: uint32
    numRects* {.importc: "num_rects".}: cuint
    rects* {.importc: "rects".}: ptr ptr AVSubtitleRect
    pts* {.importc: "pts".}: int64



proc avcodecVersion*(): cuint {.importc: "avcodec_version", header: "a.h".}

proc avcodecConfiguration*(): cstring {.importc: "avcodec_configuration",
                                     header: "a.h".}

proc avcodecLicense*(): cstring {.importc: "avcodec_license", header: "a.h".}

proc avcodecAllocContext3*(codec: ptr AVCodec): ptr AVCodecContext {.
    importc: "avcodec_alloc_context3", header: "a.h".}

proc avcodecFreeContext*(avctx: ptr ptr AVCodecContext) {.
    importc: "avcodec_free_context", header: "a.h".}

proc avcodecGetClass*(): ptr AVClass {.importc: "avcodec_get_class", header: "a.h".}

proc avcodecGetSubtitleRectClass*(): ptr AVClass {.
    importc: "avcodec_get_subtitle_rect_class", header: "a.h".}

proc avcodecParametersFromContext*(par: ptr AVCodecParameters;
                                  codec: ptr AVCodecContext): cint {.
    importc: "avcodec_parameters_from_context", header: "a.h".}

proc avcodecParametersToContext*(codec: ptr AVCodecContext;
                                par: ptr AVCodecParameters): cint {.
    importc: "avcodec_parameters_to_context", header: "a.h".}

proc avcodecOpen2*(avctx: ptr AVCodecContext; codec: ptr AVCodec;
                  options: ptr ptr AVDictionary): cint {.importc: "avcodec_open2",
    header: "a.h".}

proc avcodecClose*(avctx: ptr AVCodecContext): cint {.importc: "avcodec_close",
    header: "a.h".}

proc avsubtitleFree*(sub: ptr AVSubtitle) {.importc: "avsubtitle_free", header: "a.h".}

proc avcodecDefaultGetBuffer2*(s: ptr AVCodecContext; frame: ptr AVFrame; flags: cint): cint {.
    importc: "avcodec_default_get_buffer2", header: "a.h".}

proc avcodecDefaultGetEncodeBuffer*(s: ptr AVCodecContext; pkt: ptr AVPacket;
                                   flags: cint): cint {.
    importc: "avcodec_default_get_encode_buffer", header: "a.h".}

proc avcodecAlignDimensions*(s: ptr AVCodecContext; width: ptr cint; height: ptr cint) {.
    importc: "avcodec_align_dimensions", header: "a.h".}

proc avcodecAlignDimensions2*(s: ptr AVCodecContext; width: ptr cint; height: ptr cint;
                             linesizeAlign: array[av_Num_Data_Pointers, cint]) {.
    importc: "avcodec_align_dimensions2", header: "a.h".}
when defined(FF_API_AVCODEC_CHROMA_POS):
  proc avcodecEnumToChromaPos*(xpos: ptr cint; ypos: ptr cint; pos: AVChromaLocation): cint {.
      importc: "avcodec_enum_to_chroma_pos", header: "a.h".}
  proc avcodecChromaPosToEnum*(xpos: cint; ypos: cint): AVChromaLocation {.
      importc: "avcodec_chroma_pos_to_enum", header: "a.h".}

proc avcodecDecodeSubtitle2*(avctx: ptr AVCodecContext; sub: ptr AVSubtitle;
                            gotSubPtr: ptr cint; avpkt: ptr AVPacket): cint {.
    importc: "avcodec_decode_subtitle2", header: "a.h".}

proc avcodecSendPacket*(avctx: ptr AVCodecContext; avpkt: ptr AVPacket): cint {.
    importc: "avcodec_send_packet", header: "a.h".}

proc avcodecReceiveFrame*(avctx: ptr AVCodecContext; frame: ptr AVFrame): cint {.
    importc: "avcodec_receive_frame", header: "a.h".}

proc avcodecSendFrame*(avctx: ptr AVCodecContext; frame: ptr AVFrame): cint {.
    importc: "avcodec_send_frame", header: "a.h".}

proc avcodecReceivePacket*(avctx: ptr AVCodecContext; avpkt: ptr AVPacket): cint {.
    importc: "avcodec_receive_packet", header: "a.h".}

proc avcodecGetHwFramesParameters*(avctx: ptr AVCodecContext;
                                  deviceRef: ptr AVBufferRef;
                                  hwPixFmt: AVPixelFormat;
                                  outFramesRef: ptr ptr AVBufferRef): cint {.
    importc: "avcodec_get_hw_frames_parameters", header: "a.h".}



type
  AVPictureStructure* {.size: sizeof(cint).} = enum
    AV_PICTURE_STRUCTURE_UNKNOWN, AV_PICTURE_STRUCTURE_TOP_FIELD,
    AV_PICTURE_STRUCTURE_BOTTOM_FIELD, AV_PICTURE_STRUCTURE_FRAME


const
  AV_PARSER_PTS_NB* = 4

const
  PARSER_FLAG_COMPLETE_FRAMES* = 0x0001
  PARSER_FLAG_ONCE* = 0x0002

const
  PARSER_FLAG_FETCHED_OFFSET* = 0x0004
  PARSER_FLAG_USE_CODEC_TS* = 0x1000

type
  AVCodecParserContext* {.importc: "AVCodecParserContext",  bycopy.} = object
    privData* {.importc: "priv_data".}: pointer
    parser* {.importc: "parser".}: ptr AVCodecParser
    frameOffset* {.importc: "frame_offset".}: int64
    curOffset* {.importc: "cur_offset".}: int64
    nextFrameOffset* {.importc: "next_frame_offset".}: int64
    pictType* {.importc: "pict_type".}: cint
    repeatPict* {.importc: "repeat_pict".}: cint
    pts* {.importc: "pts".}: int64
    dts* {.importc: "dts".}: int64
    lastPts* {.importc: "last_pts".}: int64
    lastDts* {.importc: "last_dts".}: int64
    fetchTimestamp* {.importc: "fetch_timestamp".}: cint
    curFrameStartIndex* {.importc: "cur_frame_start_index".}: cint
    curFrameOffset* {.importc: "cur_frame_offset".}: array[av_Parser_Pts_Nb, int64]
    curFramePts* {.importc: "cur_frame_pts".}: array[av_Parser_Pts_Nb, int64]
    curFrameDts* {.importc: "cur_frame_dts".}: array[av_Parser_Pts_Nb, int64]
    flags* {.importc: "flags".}: cint
    offset* {.importc: "offset".}: int64
    curFrameEnd* {.importc: "cur_frame_end".}: array[av_Parser_Pts_Nb, int64]
    keyFrame* {.importc: "key_frame".}: cint
    dtsSyncPoint* {.importc: "dts_sync_point".}: cint
    dtsRefDtsDelta* {.importc: "dts_ref_dts_delta".}: cint
    ptsDtsDelta* {.importc: "pts_dts_delta".}: cint
    curFramePos* {.importc: "cur_frame_pos".}: array[av_Parser_Pts_Nb, int64]
    pos* {.importc: "pos".}: int64
    lastPos* {.importc: "last_pos".}: int64
    duration* {.importc: "duration".}: cint
    fieldOrder* {.importc: "field_order".}: AVFieldOrder
    pictureStructure* {.importc: "picture_structure".}: AVPictureStructure
    outputPictureNumber* {.importc: "output_picture_number".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint
    codedWidth* {.importc: "coded_width".}: cint
    codedHeight* {.importc: "coded_height".}: cint
    format* {.importc: "format".}: cint

type
  AVCodecParser* {.importc: "AVCodecParser",  bycopy.} = object
    codecIds* {.importc: "codec_ids".}: array[7, cint]
    privDataSize* {.importc: "priv_data_size".}: cint
    parserInit* {.importc: "parser_init".}: proc (s: ptr AVCodecParserContext): cint
    parserParse* {.importc: "parser_parse".}: proc (s: ptr AVCodecParserContext;
        avctx: ptr AVCodecContext; poutbuf: ptr ptr uint8; poutbufSize: ptr cint;
        buf: ptr uint8; bufSize: cint): cint
    parserClose* {.importc: "parser_close".}: proc (s: ptr AVCodecParserContext)
    split* {.importc: "split".}: proc (avctx: ptr AVCodecContext; buf: ptr uint8;
                                   bufSize: cint): cint



proc avParserIterate*(opaque: ptr pointer): ptr AVCodecParser {.
    importc: "av_parser_iterate", header: "a.h".}
proc avParserInit*(codecId: cint): ptr AVCodecParserContext {.
    importc: "av_parser_init", header: "a.h".}

proc avParserParse2*(s: ptr AVCodecParserContext; avctx: ptr AVCodecContext;
                    poutbuf: ptr ptr uint8; poutbufSize: ptr cint; buf: ptr uint8;
                    bufSize: cint; pts: int64; dts: int64; pos: int64): cint {.
    importc: "av_parser_parse2", header: "a.h".}
proc avParserClose*(s: ptr AVCodecParserContext) {.importc: "av_parser_close",
    header: "a.h".}

proc avcodecEncodeSubtitle*(avctx: ptr AVCodecContext; buf: ptr uint8; bufSize: cint;
                           sub: ptr AVSubtitle): cint {.
    importc: "avcodec_encode_subtitle", header: "a.h".}

proc avcodecPixFmtToCodecTag*(pixFmt: AVPixelFormat): cuint {.
    importc: "avcodec_pix_fmt_to_codec_tag", header: "a.h".}

proc avcodecFindBestPixFmtOfList*(pixFmtList: ptr AVPixelFormat;
                                 srcPixFmt: AVPixelFormat; hasAlpha: cint;
                                 lossPtr: ptr cint): AVPixelFormat {.
    importc: "avcodec_find_best_pix_fmt_of_list", header: "a.h".}
proc avcodecDefaultGetFormat*(s: ptr AVCodecContext; fmt: ptr AVPixelFormat): AVPixelFormat {.
    importc: "avcodec_default_get_format", header: "a.h".}

proc avcodecString*(buf: cstring; bufSize: cint; enc: ptr AVCodecContext; encode: cint) {.
    importc: "avcodec_string", header: "a.h".}
proc avcodecDefaultExecute*(c: ptr AVCodecContext; `func`: proc (
    c2: ptr AVCodecContext; arg2: pointer): cint; arg: pointer; ret: ptr cint; count: cint;
                           size: cint): cint {.importc: "avcodec_default_execute",
    header: "a.h".}
proc avcodecDefaultExecute2*(c: ptr AVCodecContext; `func`: proc (
    c2: ptr AVCodecContext; arg2: pointer; a3: cint; a4: cint): cint; arg: pointer;
                            ret: ptr cint; count: cint): cint {.
    importc: "avcodec_default_execute2", header: "a.h".}

proc avcodecFillAudioFrame*(frame: ptr AVFrame; nbChannels: cint;
                           sampleFmt: AVSampleFormat; buf: ptr uint8; bufSize: cint;
                           align: cint): cint {.
    importc: "avcodec_fill_audio_frame", header: "a.h".}

proc avcodecFlushBuffers*(avctx: ptr AVCodecContext) {.
    importc: "avcodec_flush_buffers", header: "a.h".}

proc avGetAudioFrameDuration*(avctx: ptr AVCodecContext; frameBytes: cint): cint {.
    importc: "av_get_audio_frame_duration", header: "a.h".}

proc avFastPaddedMalloc*(`ptr`: pointer; size: ptr cuint; minSize: csize_t) {.
    importc: "av_fast_padded_malloc", header: "a.h".}

proc avFastPaddedMallocz*(`ptr`: pointer; size: ptr cuint; minSize: csize_t) {.
    importc: "av_fast_padded_mallocz", header: "a.h".}

proc avcodecIsOpen*(s: ptr AVCodecContext): cint {.importc: "avcodec_is_open",
    header: "a.h".}    