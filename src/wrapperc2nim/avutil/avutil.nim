




proc avutil_version*(): cuint {.importc: "avutil_version".}

proc av_version_info*(): cstring {.importc: "av_version_info".}

proc avutil_configuration*(): cstring {.importc: "avutil_configuration".}

proc avutil_license*(): cstring {.importc: "avutil_license".}

type
  AVMediaType* {.size: sizeof(cint).} = enum
    AVMEDIA_TYPE_UNKNOWN = -1, AVMEDIA_TYPE_VIDEO, AVMEDIA_TYPE_AUDIO,
    AVMEDIA_TYPE_DATA, AVMEDIA_TYPE_SUBTITLE, AVMEDIA_TYPE_ATTACHMENT,
    AVMEDIA_TYPE_NB



proc av_get_media_type_string*(media_type: AVMediaType): cstring {.
    importc: "av_get_media_type_string".}

const
  FF_LAMBDA_SHIFT* = 7
  FF_LAMBDA_SCALE* = (1 shl FF_LAMBDA_SHIFT)
  FF_QP2LAMBDA* = 118
  FF_LAMBDA_MAX* = (256 * 128 - 1)
  FF_QUALITY_SCALE* = FF_LAMBDA_SCALE


# const
#   AV_NOPTS_VALUE* = (cast[int64](UINT64_C(0x8000000000000000'u)))


const
  AV_TIME_BASE* = 1000000



type
  AVPictureType* {.size: sizeof(cint).} = enum
    AV_PICTURE_TYPE_NONE = 0, AV_PICTURE_TYPE_I, AV_PICTURE_TYPE_P,
    AV_PICTURE_TYPE_B, AV_PICTURE_TYPE_S, AV_PICTURE_TYPE_SI,
    AV_PICTURE_TYPE_SP, AV_PICTURE_TYPE_BI



proc av_get_picture_type_char*(pict_type: AVPictureType): char {.
    importc: "av_get_picture_type_char".}


# proc av_x_if_null*(p: pointer; x: pointer): pointer {.inline.} =
#   return cast[pointer]((intptr_t)(if p: p else: x))


proc av_int_list_length_for_size*(elsize: cuint; list: pointer; term: uint64): cuint {.
    importc: "av_int_list_length_for_size".}

template av_int_list_length*(list, term: untyped): untyped =
  av_int_list_length_for_size(sizeof(((list)[])), list, term)


proc av_get_time_base_q*(): AVRational {.importc: "av_get_time_base_q".}
const
  AV_FOURCC_MAX_STRING_SIZE* = 32

template av_fourcc2str*(fourcc: untyped): untyped =
  av_fourcc_make_string((char[AV_FOURCC_MAX_STRING_SIZE]), (0,), fourcc)


proc av_fourcc_make_string*(buf: cstring; fourcc: uint32): cstring {.
    importc: "av_fourcc_make_string".}
