



const
  AV_INPUT_BUFFER_PADDING_SIZE* = 64


const
  AV_EF_CRCCHECK* = (1 shl 0)
  AV_EF_BITSTREAM* = (1 shl 1)
  AV_EF_BUFFER* = (1 shl 2)
  AV_EF_EXPLODE* = (1 shl 3)
  AV_EF_IGNORE_ERR* = (1 shl 15)
  AV_EF_CAREFUL* = (1 shl 16)
  AV_EF_COMPLIANT* = (1 shl 17)
  AV_EF_AGGRESSIVE* = (1 shl 18)
  FF_COMPLIANCE_VERY_STRICT* = 2
  FF_COMPLIANCE_STRICT* = 1
  FF_COMPLIANCE_NORMAL* = 0
  FF_COMPLIANCE_UNOFFICIAL* = -1
  FF_COMPLIANCE_EXPERIMENTAL* = -2
  AV_PROFILE_UNKNOWN* = -99
  AV_PROFILE_RESERVED* = -100
  AV_PROFILE_AAC_MAIN* = 0
  AV_PROFILE_AAC_LOW* = 1
  AV_PROFILE_AAC_SSR* = 2
  AV_PROFILE_AAC_LTP* = 3
  AV_PROFILE_AAC_HE* = 4
  AV_PROFILE_AAC_HE_V2* = 28
  AV_PROFILE_AAC_LD* = 22
  AV_PROFILE_AAC_ELD* = 38
  AV_PROFILE_MPEG2_AAC_LOW* = 128
  AV_PROFILE_MPEG2_AAC_HE* = 131
  AV_PROFILE_DNXHD* = 0
  AV_PROFILE_DNXHR_LB* = 1
  AV_PROFILE_DNXHR_SQ* = 2
  AV_PROFILE_DNXHR_HQ* = 3
  AV_PROFILE_DNXHR_HQX* = 4
  AV_PROFILE_DNXHR_444* = 5
  AV_PROFILE_DTS* = 20
  AV_PROFILE_DTS_ES* = 30
  AV_PROFILE_DTS_96_24* = 40
  AV_PROFILE_DTS_HD_HRA* = 50
  AV_PROFILE_DTS_HD_MA* = 60
  AV_PROFILE_DTS_EXPRESS* = 70
  AV_PROFILE_DTS_HD_MA_X* = 61
  AV_PROFILE_DTS_HD_MA_X_IMAX* = 62
  AV_PROFILE_EAC3_DDP_ATMOS* = 30
  AV_PROFILE_TRUEHD_ATMOS* = 30
  AV_PROFILE_MPEG2_422* = 0
  AV_PROFILE_MPEG2_HIGH* = 1
  AV_PROFILE_MPEG2_SS* = 2
  AV_PROFILE_MPEG2_SNR_SCALABLE* = 3
  AV_PROFILE_MPEG2_MAIN* = 4
  AV_PROFILE_MPEG2_SIMPLE* = 5
  AV_PROFILE_H264_CONSTRAINED* = (1 shl 9)
  AV_PROFILE_H264_INTRA* = (1 shl 11)
  AV_PROFILE_H264_BASELINE* = 66
  AV_PROFILE_H264_CONSTRAINED_BASELINE* = (66 or AV_PROFILE_H264_CONSTRAINED)
  AV_PROFILE_H264_MAIN* = 77
  AV_PROFILE_H264_EXTENDED* = 88
  AV_PROFILE_H264_HIGH* = 100
  AV_PROFILE_H264_HIGH_10* = 110
  AV_PROFILE_H264_HIGH_10_INTRA* = (110 or AV_PROFILE_H264_INTRA)
  AV_PROFILE_H264_MULTIVIEW_HIGH* = 118
  AV_PROFILE_H264_HIGH_422* = 122
  AV_PROFILE_H264_HIGH_422_INTRA* = (122 or AV_PROFILE_H264_INTRA)
  AV_PROFILE_H264_STEREO_HIGH* = 128
  AV_PROFILE_H264_HIGH_444* = 144
  AV_PROFILE_H264_HIGH_444_PREDICTIVE* = 244
  AV_PROFILE_H264_HIGH_444_INTRA* = (244 or AV_PROFILE_H264_INTRA)
  AV_PROFILE_H264_CAVLC_444* = 44
  AV_PROFILE_VC1_SIMPLE* = 0
  AV_PROFILE_VC1_MAIN* = 1
  AV_PROFILE_VC1_COMPLEX* = 2
  AV_PROFILE_VC1_ADVANCED* = 3
  AV_PROFILE_MPEG4_SIMPLE* = 0
  AV_PROFILE_MPEG4_SIMPLE_SCALABLE* = 1
  AV_PROFILE_MPEG4_CORE* = 2
  AV_PROFILE_MPEG4_MAIN* = 3
  AV_PROFILE_MPEG4_N_BIT* = 4
  AV_PROFILE_MPEG4_SCALABLE_TEXTURE* = 5
  AV_PROFILE_MPEG4_SIMPLE_FACE_ANIMATION* = 6
  AV_PROFILE_MPEG4_BASIC_ANIMATED_TEXTURE* = 7
  AV_PROFILE_MPEG4_HYBRID* = 8
  AV_PROFILE_MPEG4_ADVANCED_REAL_TIME* = 9
  AV_PROFILE_MPEG4_CORE_SCALABLE* = 10
  AV_PROFILE_MPEG4_ADVANCED_CODING* = 11
  AV_PROFILE_MPEG4_ADVANCED_CORE* = 12
  AV_PROFILE_MPEG4_ADVANCED_SCALABLE_TEXTURE* = 13
  AV_PROFILE_MPEG4_SIMPLE_STUDIO* = 14
  AV_PROFILE_MPEG4_ADVANCED_SIMPLE* = 15
  AV_PROFILE_JPEG2000_CSTREAM_RESTRICTION_0* = 1
  AV_PROFILE_JPEG2000_CSTREAM_RESTRICTION_1* = 2
  AV_PROFILE_JPEG2000_CSTREAM_NO_RESTRICTION* = 32768
  AV_PROFILE_JPEG2000_DCINEMA_2K* = 3
  AV_PROFILE_JPEG2000_DCINEMA_4K* = 4
  AV_PROFILE_VP9_0* = 0
  AV_PROFILE_VP9_1* = 1
  AV_PROFILE_VP9_2* = 2
  AV_PROFILE_VP9_3* = 3
  AV_PROFILE_HEVC_MAIN* = 1
  AV_PROFILE_HEVC_MAIN_10* = 2
  AV_PROFILE_HEVC_MAIN_STILL_PICTURE* = 3
  AV_PROFILE_HEVC_REXT* = 4
  AV_PROFILE_HEVC_SCC* = 9
  AV_PROFILE_VVC_MAIN_10* = 1
  AV_PROFILE_VVC_MAIN_10_444* = 33
  AV_PROFILE_AV1_MAIN* = 0
  AV_PROFILE_AV1_HIGH* = 1
  AV_PROFILE_AV1_PROFESSIONAL* = 2
  AV_PROFILE_MJPEG_HUFFMAN_BASELINE_DCT* = 0xc0
  AV_PROFILE_MJPEG_HUFFMAN_EXTENDED_SEQUENTIAL_DCT* = 0xc1
  AV_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT* = 0xc2
  AV_PROFILE_MJPEG_HUFFMAN_LOSSLESS* = 0xc3
  AV_PROFILE_MJPEG_JPEG_LS* = 0xf7
  AV_PROFILE_SBC_MSBC* = 1
  AV_PROFILE_PRORES_PROXY* = 0
  AV_PROFILE_PRORES_LT* = 1
  AV_PROFILE_PRORES_STANDARD* = 2
  AV_PROFILE_PRORES_HQ* = 3
  AV_PROFILE_PRORES_4444* = 4
  AV_PROFILE_PRORES_XQ* = 5
  AV_PROFILE_ARIB_PROFILE_A* = 0
  AV_PROFILE_ARIB_PROFILE_C* = 1
  AV_PROFILE_KLVA_SYNC* = 0
  AV_PROFILE_KLVA_ASYNC* = 1
  AV_PROFILE_EVC_BASELINE* = 0
  AV_PROFILE_EVC_MAIN* = 1
  AV_LEVEL_UNKNOWN* = -99

type
  AVFieldOrder* {.size: sizeof(cint).} = enum
    AV_FIELD_UNKNOWN, AV_FIELD_PROGRESSIVE, AV_FIELD_TT, AV_FIELD_BB, AV_FIELD_TB,
    AV_FIELD_BT



type
  AVDiscard* {.size: sizeof(cint).} = enum
    AVDISCARD_NONE = -16, AVDISCARD_DEFAULT = 0, AVDISCARD_NONREF = 8,
    AVDISCARD_BIDIR = 16, AVDISCARD_NONINTRA = 24, AVDISCARD_NONKEY = 32,
    AVDISCARD_ALL = 48


type
  AVAudioServiceType* {.size: sizeof(cint).} = enum
    AV_AUDIO_SERVICE_TYPE_MAIN = 0, AV_AUDIO_SERVICE_TYPE_EFFECTS = 1,
    AV_AUDIO_SERVICE_TYPE_VISUALLY_IMPAIRED = 2,
    AV_AUDIO_SERVICE_TYPE_HEARING_IMPAIRED = 3, AV_AUDIO_SERVICE_TYPE_DIALOGUE = 4,
    AV_AUDIO_SERVICE_TYPE_COMMENTARY = 5, AV_AUDIO_SERVICE_TYPE_EMERGENCY = 6,
    AV_AUDIO_SERVICE_TYPE_VOICE_OVER = 7, AV_AUDIO_SERVICE_TYPE_KARAOKE = 8,
    AV_AUDIO_SERVICE_TYPE_NB



type
  AVPanScan* {.importc: "AVPanScan", header: "defs.h", bycopy.} = object
    id* {.importc: "id".}: cint
    width* {.importc: "width".}: cint
    height* {.importc: "height".}: cint
    position* {.importc: "position".}: array[3, array[2, int16]]



type
  AVCPBProperties* {.importc: "AVCPBProperties", header: "defs.h", bycopy.} = object
    max_bitrate* {.importc: "max_bitrate".}: int64
    min_bitrate* {.importc: "min_bitrate".}: int64
    avg_bitrate* {.importc: "avg_bitrate".}: int64
    buffer_size* {.importc: "buffer_size".}: int64
    vbv_delay* {.importc: "vbv_delay".}: uint64



proc av_cpb_properties_alloc*(size: ptr csize_t): ptr AVCPBProperties {.
    importc: "av_cpb_properties_alloc", header: "defs.h".}

type
  AVProducerReferenceTime* {.importc: "AVProducerReferenceTime", header: "defs.h",
                            bycopy.} = object
    wallclock* {.importc: "wallclock".}: int64
    flags* {.importc: "flags".}: cint



proc av_xiphlacing*(s: ptr cuchar; v: cuint): cuint {.importc: "av_xiphlacing",
    header: "defs.h".}