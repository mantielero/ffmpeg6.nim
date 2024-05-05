import ../libavutil
# import ../avutil/buffer  # To remove once AVMUtex available
# import ../avutil/buffer_internal

# FIXME
const
  FF_API_INIT_PACKET* = false
#-----


type
  AVPacketSideDataType* {.size: sizeof(cint).} = enum
    AV_PKT_DATA_PALETTE, AV_PKT_DATA_NEW_EXTRADATA, AV_PKT_DATA_PARAM_CHANGE,
    AV_PKT_DATA_H263_MB_INFO, AV_PKT_DATA_REPLAYGAIN, AV_PKT_DATA_DISPLAYMATRIX,
    AV_PKT_DATA_STEREO3D, AV_PKT_DATA_AUDIO_SERVICE_TYPE,
    AV_PKT_DATA_QUALITY_STATS, AV_PKT_DATA_FALLBACK_TRACK,
    AV_PKT_DATA_CPB_PROPERTIES, AV_PKT_DATA_SKIP_SAMPLES, AV_PKT_DATA_JP_DUALMONO,
    AV_PKT_DATA_STRINGS_METADATA, AV_PKT_DATA_SUBTITLE_POSITION,
    AV_PKT_DATA_MATROSKA_BLOCKADDITIONAL, AV_PKT_DATA_WEBVTT_IDENTIFIER,
    AV_PKT_DATA_WEBVTT_SETTINGS, AV_PKT_DATA_METADATA_UPDATE,
    AV_PKT_DATA_MPEGTS_STREAM_ID, AV_PKT_DATA_MASTERING_DISPLAY_METADATA,
    AV_PKT_DATA_SPHERICAL, AV_PKT_DATA_CONTENT_LIGHT_LEVEL, AV_PKT_DATA_A53_CC,
    AV_PKT_DATA_ENCRYPTION_INIT_INFO, AV_PKT_DATA_ENCRYPTION_INFO,
    AV_PKT_DATA_AFD, AV_PKT_DATA_PRFT, AV_PKT_DATA_ICC_PROFILE,
    AV_PKT_DATA_DOVI_CONF, AV_PKT_DATA_S12M_TIMECODE,
    AV_PKT_DATA_DYNAMIC_HDR10_PLUS, AV_PKT_DATA_NB


const
  AV_PKT_DATA_QUALITY_FACTOR* = AV_PKT_DATA_QUALITY_STATS


type
  AVPacketSideData* {.importc: "AVPacketSideData", header: "packet.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8
    size* {.importc: "size".}: csize_t
    `type`* {.importc: "type".}: AVPacketSideDataType



proc av_packet_side_data_new*(psd: ptr ptr AVPacketSideData; pnb_sd: ptr cint;
                             `type`: AVPacketSideDataType; size: csize_t;
                             flags: cint): ptr AVPacketSideData {.
    importc: "av_packet_side_data_new", header: "packet.h".}

proc av_packet_side_data_add*(sd: ptr ptr AVPacketSideData; nb_sd: ptr cint;
                             `type`: AVPacketSideDataType; data: pointer;
                             size: csize_t; flags: cint): ptr AVPacketSideData {.
    importc: "av_packet_side_data_add", header: "packet.h".}

proc av_packet_side_data_get*(sd: ptr AVPacketSideData; nb_sd: cint;
                             `type`: AVPacketSideDataType): ptr AVPacketSideData {.
    importc: "av_packet_side_data_get", header: "packet.h".}

proc av_packet_side_data_remove*(sd: ptr AVPacketSideData; nb_sd: ptr cint;
                                `type`: AVPacketSideDataType) {.
    importc: "av_packet_side_data_remove", header: "packet.h".}

proc av_packet_side_data_free*(sd: ptr ptr AVPacketSideData; nb_sd: ptr cint) {.
    importc: "av_packet_side_data_free", header: "packet.h".}
proc av_packet_side_data_name*(`type`: AVPacketSideDataType): cstring {.
    importc: "av_packet_side_data_name", header: "packet.h".}

type
  AVPacket* {.importc: "AVPacket", header: "packet.h", bycopy.} = object
    buf* {.importc: "buf".}: ptr AVBufferRef
    pts* {.importc: "pts".}: int64
    dts* {.importc: "dts".}: int64
    data* {.importc: "data".}: ptr uint8
    size* {.importc: "size".}: cint
    stream_index* {.importc: "stream_index".}: cint
    flags* {.importc: "flags".}: cint
    side_data* {.importc: "side_data".}: ptr AVPacketSideData
    side_data_elems* {.importc: "side_data_elems".}: cint
    duration* {.importc: "duration".}: int64
    pos* {.importc: "pos".}: int64
    opaque* {.importc: "opaque".}: pointer
    opaque_ref* {.importc: "opaque_ref".}: ptr AVBufferRef
    time_base* {.importc: "time_base".}: AVRational


when FF_API_INIT_PACKET:
  type
    AVPacketList* {.importc: "AVPacketList", header: "packet.h", bycopy.} = object
      pkt* {.importc: "pkt".}: AVPacket
      next* {.importc: "next".}: ptr AVPacketList

const
  AV_PKT_FLAG_KEY* = 0x0001
  AV_PKT_FLAG_CORRUPT* = 0x0002
  AV_PKT_FLAG_DISCARD* = 0x0004


const
  AV_PKT_FLAG_TRUSTED* = 0x0008


const
  AV_PKT_FLAG_DISPOSABLE* = 0x0010

type
  AVSideDataParamChangeFlags* {.size: sizeof(cint).} = enum
    AV_SIDE_DATA_PARAM_CHANGE_SAMPLE_RATE = 0x0004,
    AV_SIDE_DATA_PARAM_CHANGE_DIMENSIONS = 0x0008



proc av_packet_alloc*(): ptr AVPacket {.importc: "av_packet_alloc", header: "packet.h".}

proc av_packet_clone*(src: ptr AVPacket): ptr AVPacket {.importc: "av_packet_clone",
    header: "packet.h".}

proc av_packet_free*(pkt: ptr ptr AVPacket) {.importc: "av_packet_free",
    header: "packet.h".}
when FF_API_INIT_PACKET:
  proc av_init_packet*(pkt: ptr AVPacket) {.importc: "av_init_packet",
                                        header: "packet.h".}

proc av_new_packet*(pkt: ptr AVPacket; size: cint): cint {.importc: "av_new_packet",
    header: "packet.h".}

proc av_shrink_packet*(pkt: ptr AVPacket; size: cint) {.importc: "av_shrink_packet",
    header: "packet.h".}

proc av_grow_packet*(pkt: ptr AVPacket; grow_by: cint): cint {.
    importc: "av_grow_packet", header: "packet.h".}

proc av_packet_from_data*(pkt: ptr AVPacket; data: ptr uint8; size: cint): cint {.
    importc: "av_packet_from_data", header: "packet.h".}

proc av_packet_new_side_data*(pkt: ptr AVPacket; `type`: AVPacketSideDataType;
                             size: csize_t): ptr uint8 {.
    importc: "av_packet_new_side_data", header: "packet.h".}

proc av_packet_add_side_data*(pkt: ptr AVPacket; `type`: AVPacketSideDataType;
                             data: ptr uint8; size: csize_t): cint {.
    importc: "av_packet_add_side_data", header: "packet.h".}

proc av_packet_shrink_side_data*(pkt: ptr AVPacket; `type`: AVPacketSideDataType;
                                size: csize_t): cint {.
    importc: "av_packet_shrink_side_data", header: "packet.h".}

proc av_packet_get_side_data*(pkt: ptr AVPacket; `type`: AVPacketSideDataType;
                             size: ptr csize_t): ptr uint8 {.
    importc: "av_packet_get_side_data", header: "packet.h".}

proc av_packet_pack_dictionary*(dict: ptr AVDictionary; size: ptr csize_t): ptr uint8 {.
    importc: "av_packet_pack_dictionary", header: "packet.h".}

proc av_packet_unpack_dictionary*(data: ptr uint8; size: csize_t;
                                 dict: ptr ptr AVDictionary): cint {.
    importc: "av_packet_unpack_dictionary", header: "packet.h".}

proc av_packet_free_side_data*(pkt: ptr AVPacket) {.
    importc: "av_packet_free_side_data", header: "packet.h".}

proc av_packet_ref*(dst: ptr AVPacket; src: ptr AVPacket): cint {.
    importc: "av_packet_ref", header: "packet.h".}

proc av_packet_unref*(pkt: ptr AVPacket) {.importc: "av_packet_unref",
                                       header: "packet.h".}

proc av_packet_move_ref*(dst: ptr AVPacket; src: ptr AVPacket) {.
    importc: "av_packet_move_ref", header: "packet.h".}

proc av_packet_copy_props*(dst: ptr AVPacket; src: ptr AVPacket): cint {.
    importc: "av_packet_copy_props", header: "packet.h".}

proc av_packet_make_refcounted*(pkt: ptr AVPacket): cint {.
    importc: "av_packet_make_refcounted", header: "packet.h".}

proc av_packet_make_writable*(pkt: ptr AVPacket): cint {.
    importc: "av_packet_make_writable", header: "packet.h".}

proc av_packet_rescale_ts*(pkt: ptr AVPacket; tb_src: AVRational; tb_dst: AVRational) {.
    importc: "av_packet_rescale_ts", header: "packet.h".}
