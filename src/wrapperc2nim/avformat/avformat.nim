import avio
import ../avcodec/[codec_id,packet]
# FIXME
const
  FF_API_AVIODIRCONTEXT* = false
  FF_API_LAVF_SHORTEST* = false
  FF_API_ALLOW_FLUSH* = false
#----

const
  AVFMT_NOFILE* = 0x0001
  AVFMT_NEEDNUMBER* = 0x0002


const
  AVFMT_EXPERIMENTAL* = 0x0004
  AVFMT_SHOW_IDS* = 0x0008
  AVFMT_GLOBALHEADER* = 0x0040
  AVFMT_NOTIMESTAMPS* = 0x0080
  AVFMT_GENERIC_INDEX* = 0x0100
  AVFMT_TS_DISCONT* = 0x0200
  AVFMT_VARIABLE_FPS* = 0x0400
  AVFMT_NODIMENSIONS* = 0x0800
  AVFMT_NOSTREAMS* = 0x1000
  AVFMT_NOBINSEARCH* = 0x2000
  AVFMT_NOGENSEARCH* = 0x4000
  AVFMT_NO_BYTE_SEEK* = 0x8000

when FF_API_ALLOW_FLUSH:
  const
    AVFMT_ALLOW_FLUSH* = 0x10000
const
  AVFMT_TS_NONSTRICT* = 0x20000
  AVFMT_TS_NEGATIVE* = 0x40000
  AVFMT_SEEK_TO_PTS* = 0x4000000

const
  AVPROBE_SCORE_MAX* = 100
  AVPROBE_SCORE_RETRY* = (AVPROBE_SCORE_MAX div 4)
  AVPROBE_SCORE_STREAM_RETRY* = (AVPROBE_SCORE_MAX div 4 - 1)
  AVPROBE_SCORE_EXTENSION* = 50
  AVPROBE_SCORE_MIME* = 75
  AVPROBE_PADDING_SIZE* = 32



discard "forward decl of AVFrame"
discard "forward decl of AVDeviceInfoList"
proc av_get_packet*(s: ptr AVIOContext; pkt: ptr AVPacket; size: cint): cint {.
    importc: "av_get_packet".}

when FF_API_LAVF_SHORTEST:
  const
    AVFMT_FLAG_SHORTEST* = 0x100000
proc av_append_packet*(s: ptr AVIOContext; pkt: ptr AVPacket; size: cint): cint {.
    importc: "av_append_packet".}

discard "forward decl of AVCodecTag"
type
  AVProbeData* {.importc: "AVProbeData", header: "avformat.h", bycopy.} = object
    filename* {.importc: "filename".}: cstring
    buf* {.importc: "buf".}: ptr cuchar
    buf_size* {.importc: "buf_size".}: cint
    mime_type* {.importc: "mime_type".}: cstring






type
  AVOutputFormat* {.importc: "AVOutputFormat", header: "avformat.h", bycopy.} = object
    name* {.importc: "name".}: cstring
    long_name* {.importc: "long_name".}: cstring
    mime_type* {.importc: "mime_type".}: cstring
    extensions* {.importc: "extensions".}: cstring
    audio_codec* {.importc: "audio_codec".}: AVCodecID
    video_codec* {.importc: "video_codec".}: AVCodecID
    subtitle_codec* {.importc: "subtitle_codec".}: AVCodecID
    flags* {.importc: "flags".}: cint
    codec_tag* {.importc: "codec_tag".}: ptr ptr AVCodecTag
    priv_class* {.importc: "priv_class".}: ptr AVClass



type
  AVInputFormat* {.importc: "AVInputFormat", header: "avformat.h", bycopy.} = object
    name* {.importc: "name".}: cstring
    long_name* {.importc: "long_name".}: cstring
    flags* {.importc: "flags".}: cint
    extensions* {.importc: "extensions".}: cstring
    codec_tag* {.importc: "codec_tag".}: ptr ptr AVCodecTag
    priv_class* {.importc: "priv_class".}: ptr AVClass
    mime_type* {.importc: "mime_type".}: cstring
    raw_codec_id* {.importc: "raw_codec_id".}: cint
    priv_data_size* {.importc: "priv_data_size".}: cint
    flags_internal* {.importc: "flags_internal".}: cint
    read_probe* {.importc: "read_probe".}: proc (a1: ptr AVProbeData): cint
    read_header* {.importc: "read_header".}: proc (a1: ptr AVFormatContext): cint
    read_packet* {.importc: "read_packet".}: proc (a1: ptr AVFormatContext;
        pkt: ptr AVPacket): cint
    read_close* {.importc: "read_close".}: proc (a1: ptr AVFormatContext): cint
    read_seek* {.importc: "read_seek".}: proc (a1: ptr AVFormatContext;
        stream_index: cint; timestamp: int64_t; flags: cint): cint
    read_timestamp* {.importc: "read_timestamp".}: proc (s: ptr AVFormatContext;
        stream_index: cint; pos: ptr int64_t; pos_limit: int64_t): int64_t
    read_play* {.importc: "read_play".}: proc (a1: ptr AVFormatContext): cint
    read_pause* {.importc: "read_pause".}: proc (a1: ptr AVFormatContext): cint
    read_seek2* {.importc: "read_seek2".}: proc (s: ptr AVFormatContext;
        stream_index: cint; min_ts: int64_t; ts: int64_t; max_ts: int64_t; flags: cint): cint
    get_device_list* {.importc: "get_device_list".}: proc (s: ptr AVFormatContext;
        device_list: ptr AVDeviceInfoList): cint



type
  AVStreamParseType* {.size: sizeof(cint).} = enum
    AVSTREAM_PARSE_NONE, AVSTREAM_PARSE_FULL, AVSTREAM_PARSE_HEADERS,
    AVSTREAM_PARSE_TIMESTAMPS, AVSTREAM_PARSE_FULL_ONCE, AVSTREAM_PARSE_FULL_RAW


const
  AVINDEX_KEYFRAME* = 0x0001
  AVINDEX_DISCARD_FRAME* = 0x0002

type
  AVIndexEntry* {.importc: "AVIndexEntry", header: "avformat.h", bycopy.} = object
    pos* {.importc: "pos".}: int64_t
    timestamp* {.importc: "timestamp".}: int64_t
    flags* {.importc: "flags", bitsize: 2.}: cint
    size* {.importc: "size", bitsize: 30.}: cint
    min_distance* {.importc: "min_distance".}: cint



const
  AV_DISPOSITION_DEFAULT* = (1 shl 0)


const
  AV_DISPOSITION_DUB* = (1 shl 1)


const
  AV_DISPOSITION_ORIGINAL* = (1 shl 2)


const
  AV_DISPOSITION_COMMENT* = (1 shl 3)


const
  AV_DISPOSITION_LYRICS* = (1 shl 4)


const
  AV_DISPOSITION_KARAOKE* = (1 shl 5)


const
  AV_DISPOSITION_FORCED* = (1 shl 6)


const
  AV_DISPOSITION_HEARING_IMPAIRED* = (1 shl 7)


const
  AV_DISPOSITION_VISUAL_IMPAIRED* = (1 shl 8)


const
  AV_DISPOSITION_CLEAN_EFFECTS* = (1 shl 9)


const
  AV_DISPOSITION_ATTACHED_PIC* = (1 shl 10)


const
  AV_DISPOSITION_TIMED_THUMBNAILS* = (1 shl 11)


const
  AV_DISPOSITION_NON_DIEGETIC* = (1 shl 12)


const
  AV_DISPOSITION_CAPTIONS* = (1 shl 16)


const
  AV_DISPOSITION_DESCRIPTIONS* = (1 shl 17)


const
  AV_DISPOSITION_METADATA* = (1 shl 18)


const
  AV_DISPOSITION_DEPENDENT* = (1 shl 19)


const
  AV_DISPOSITION_STILL_IMAGE* = (1 shl 20)


proc av_disposition_from_string*(disp: cstring): cint {.
    importc: "av_disposition_from_string".}

proc av_disposition_to_string*(disposition: cint): cstring {.
    importc: "av_disposition_to_string".}

const
  AV_PTS_WRAP_IGNORE* = 0
  AV_PTS_WRAP_ADD_OFFSET* = 1
  AV_PTS_WRAP_SUB_OFFSET* = -1


const
  AVSTREAM_EVENT_FLAG_METADATA_UPDATED* = 0x0001

const
  AVSTREAM_EVENT_FLAG_NEW_PACKETS* = (1 shl 1)

type
  AVStream* {.importc: "AVStream", header: "avformat.h", bycopy.} = object
    av_class* {.importc: "av_class".}: ptr AVClass
    index* {.importc: "index".}: cint
    id* {.importc: "id".}: cint
    codecpar* {.importc: "codecpar".}: ptr AVCodecParameters
    priv_data* {.importc: "priv_data".}: pointer
    time_base* {.importc: "time_base".}: AVRational
    start_time* {.importc: "start_time".}: int64_t
    duration* {.importc: "duration".}: int64_t
    nb_frames* {.importc: "nb_frames".}: int64_t
    disposition* {.importc: "disposition".}: cint
    `discard`* {.importc: "discard".}: AVDiscard
    sample_aspect_ratio* {.importc: "sample_aspect_ratio".}: AVRational
    metadata* {.importc: "metadata".}: ptr AVDictionary
    avg_frame_rate* {.importc: "avg_frame_rate".}: AVRational
    attached_pic* {.importc: "attached_pic".}: AVPacket
    when FF_API_AVSTREAM_SIDE_DATA:
      side_data* {.importc: "side_data".}: ptr AVPacketSideData
      nb_side_data* {.importc: "nb_side_data".}: cint
    event_flags* {.importc: "event_flags".}: cint
    r_frame_rate* {.importc: "r_frame_rate".}: AVRational
    pts_wrap_bits* {.importc: "pts_wrap_bits".}: cint


proc av_stream_get_parser*(s: ptr AVStream): ptr AVCodecParserContext {.
    importc: "av_stream_get_parser".}
when FF_API_GET_END_PTS:
  proc av_stream_get_end_pts*(st: ptr AVStream): int64_t {.
      importc: "av_stream_get_end_pts".}
const
  AV_PROGRAM_RUNNING* = 1


type
  AVProgram* {.importc: "AVProgram", header: "avformat.h", bycopy.} = object
    id* {.importc: "id".}: cint
    flags* {.importc: "flags".}: cint
    `discard`* {.importc: "discard".}: AVDiscard
    stream_index* {.importc: "stream_index".}: ptr cuint
    nb_stream_indexes* {.importc: "nb_stream_indexes".}: cuint
    metadata* {.importc: "metadata".}: ptr AVDictionary
    program_num* {.importc: "program_num".}: cint
    pmt_pid* {.importc: "pmt_pid".}: cint
    pcr_pid* {.importc: "pcr_pid".}: cint
    pmt_version* {.importc: "pmt_version".}: cint
    start_time* {.importc: "start_time".}: int64_t
    end_time* {.importc: "end_time".}: int64_t
    pts_wrap_reference* {.importc: "pts_wrap_reference".}: int64_t
    pts_wrap_behavior* {.importc: "pts_wrap_behavior".}: cint


const
  AVFMTCTX_NOHEADER* = 0x0001
  AVFMTCTX_UNSEEKABLE* = 0x0002

type
  AVChapter* {.importc: "AVChapter", header: "avformat.h", bycopy.} = object
    id* {.importc: "id".}: int64_t
    time_base* {.importc: "time_base".}: AVRational
    start* {.importc: "start".}: int64_t
    `end`* {.importc: "end".}: int64_t
    metadata* {.importc: "metadata".}: ptr AVDictionary



type
  av_format_control_message* = proc (s: ptr AVFormatContext; `type`: cint;
                                  data: pointer; data_size: csize_t): cint
  AVOpenCallback* = proc (s: ptr AVFormatContext; pb: ptr ptr AVIOContext; url: cstring;
                       flags: cint; int_cb: ptr AVIOInterruptCB;
                       options: ptr ptr AVDictionary): cint


type
  AVDurationEstimationMethod* {.size: sizeof(cint).} = enum
    AVFMT_DURATION_FROM_PTS, AVFMT_DURATION_FROM_STREAM,
    AVFMT_DURATION_FROM_BITRATE


when FF_API_LAVF_SHORTEST:
  const
    AVFMT_FLAG_SHORTEST* = 0x100000

const
  AVFMT_FLAG_GENPTS* = 0x0001
  AVFMT_FLAG_IGNIDX* = 0x0002
  AVFMT_FLAG_NONBLOCK* = 0x0004
  AVFMT_FLAG_IGNDTS* = 0x0008
  AVFMT_FLAG_NOFILLIN* = 0x0010
  AVFMT_FLAG_NOPARSE* = 0x0020
  AVFMT_FLAG_NOBUFFER* = 0x0040
  AVFMT_FLAG_CUSTOM_IO* = 0x0080
  AVFMT_FLAG_DISCARD_CORRUPT* = 0x0100
  AVFMT_FLAG_FLUSH_PACKETS* = 0x0200
  AVFMT_FLAG_BITEXACT* = 0x0400
  AVFMT_FLAG_SORT_DTS* = 0x10000
  AVFMT_FLAG_FAST_SEEK* = 0x80000

const
  AVFMT_FLAG_AUTO_BSF* = 0x200000

const
  FF_FDEBUG_TS* = 0x0001

const
  AVFMT_EVENT_FLAG_METADATA_UPDATED* = 0x0001

const
  AVFMT_AVOID_NEG_TS_AUTO* = -1
  AVFMT_AVOID_NEG_TS_DISABLED* = 0
  AVFMT_AVOID_NEG_TS_MAKE_NON_NEGATIVE* = 1
  AVFMT_AVOID_NEG_TS_MAKE_ZERO* = 2

type
  AVFormatContext* {.importc: "AVFormatContext", header: "avformat.h", bycopy.} = object
    av_class* {.importc: "av_class".}: ptr AVClass
    iformat* {.importc: "iformat".}: ptr AVInputFormat
    oformat* {.importc: "oformat".}: ptr AVOutputFormat
    priv_data* {.importc: "priv_data".}: pointer
    pb* {.importc: "pb".}: ptr AVIOContext
    ctx_flags* {.importc: "ctx_flags".}: cint
    nb_streams* {.importc: "nb_streams".}: cuint
    streams* {.importc: "streams".}: ptr ptr AVStream
    url* {.importc: "url".}: cstring
    start_time* {.importc: "start_time".}: int64_t
    duration* {.importc: "duration".}: int64_t
    bit_rate* {.importc: "bit_rate".}: int64_t
    packet_size* {.importc: "packet_size".}: cuint
    max_delay* {.importc: "max_delay".}: cint
    flags* {.importc: "flags".}: cint

    probesize* {.importc: "probesize".}: int64_t
    max_analyze_duration* {.importc: "max_analyze_duration".}: int64_t
    key* {.importc: "key".}: ptr uint8_t
    keylen* {.importc: "keylen".}: cint
    nb_programs* {.importc: "nb_programs".}: cuint
    programs* {.importc: "programs".}: ptr ptr AVProgram
    video_codec_id* {.importc: "video_codec_id".}: AVCodecID
    audio_codec_id* {.importc: "audio_codec_id".}: AVCodecID
    subtitle_codec_id* {.importc: "subtitle_codec_id".}: AVCodecID
    max_index_size* {.importc: "max_index_size".}: cuint
    max_picture_buffer* {.importc: "max_picture_buffer".}: cuint
    nb_chapters* {.importc: "nb_chapters".}: cuint
    chapters* {.importc: "chapters".}: ptr ptr AVChapter
    metadata* {.importc: "metadata".}: ptr AVDictionary
    start_time_realtime* {.importc: "start_time_realtime".}: int64_t
    fps_probe_size* {.importc: "fps_probe_size".}: cint
    error_recognition* {.importc: "error_recognition".}: cint
    interrupt_callback* {.importc: "interrupt_callback".}: AVIOInterruptCB
    debug* {.importc: "debug".}: cint
    max_interleave_delta* {.importc: "max_interleave_delta".}: int64_t
    strict_std_compliance* {.importc: "strict_std_compliance".}: cint
    event_flags* {.importc: "event_flags".}: cint
    max_ts_probe* {.importc: "max_ts_probe".}: cint
    avoid_negative_ts* {.importc: "avoid_negative_ts".}: cint
    ts_id* {.importc: "ts_id".}: cint
    audio_preload* {.importc: "audio_preload".}: cint
    max_chunk_duration* {.importc: "max_chunk_duration".}: cint
    max_chunk_size* {.importc: "max_chunk_size".}: cint
    use_wallclock_as_timestamps* {.importc: "use_wallclock_as_timestamps".}: cint
    avio_flags* {.importc: "avio_flags".}: cint
    duration_estimation_method* {.importc: "duration_estimation_method".}: AVDurationEstimationMethod
    skip_initial_bytes* {.importc: "skip_initial_bytes".}: int64_t
    correct_ts_overflow* {.importc: "correct_ts_overflow".}: cuint
    seek2any* {.importc: "seek2any".}: cint
    flush_packets* {.importc: "flush_packets".}: cint
    probe_score* {.importc: "probe_score".}: cint
    format_probesize* {.importc: "format_probesize".}: cint
    codec_whitelist* {.importc: "codec_whitelist".}: cstring
    format_whitelist* {.importc: "format_whitelist".}: cstring
    io_repositioned* {.importc: "io_repositioned".}: cint
    video_codec* {.importc: "video_codec".}: ptr AVCodec
    audio_codec* {.importc: "audio_codec".}: ptr AVCodec
    subtitle_codec* {.importc: "subtitle_codec".}: ptr AVCodec
    data_codec* {.importc: "data_codec".}: ptr AVCodec
    metadata_header_padding* {.importc: "metadata_header_padding".}: cint
    opaque* {.importc: "opaque".}: pointer
    control_message_cb* {.importc: "control_message_cb".}: av_format_control_message
    output_ts_offset* {.importc: "output_ts_offset".}: int64_t
    dump_separator* {.importc: "dump_separator".}: ptr uint8_t
    data_codec_id* {.importc: "data_codec_id".}: AVCodecID
    protocol_whitelist* {.importc: "protocol_whitelist".}: cstring
    io_open* {.importc: "io_open".}: proc (s: ptr AVFormatContext;
                                       pb: ptr ptr AVIOContext; url: cstring;
                                       flags: cint; options: ptr ptr AVDictionary): cint
    when FF_API_AVFORMAT_IO_CLOSE:
      AVFormatContextio_close* = proc (s: ptr AVFormatContext; pb: ptr AVIOContext)
    protocol_blacklist* {.importc: "protocol_blacklist".}: cstring
    max_streams* {.importc: "max_streams".}: cint
    skip_estimate_duration_from_pts* {.importc: "skip_estimate_duration_from_pts".}: cint
    max_probe_packets* {.importc: "max_probe_packets".}: cint
    io_close2* {.importc: "io_close2".}: proc (s: ptr AVFormatContext;
        pb: ptr AVIOContext): cint



proc av_format_inject_global_side_data*(s: ptr AVFormatContext) {.
    importc: "av_format_inject_global_side_data".}

proc av_fmt_ctx_get_duration_estimation_method*(ctx: ptr AVFormatContext): AVDurationEstimationMethod {.
    importc: "av_fmt_ctx_get_duration_estimation_method".}

proc avformat_version*(): cuint {.importc: "avformat_version".}

proc avformat_configuration*(): cstring {.importc: "avformat_configuration",
                                       dynlib: libavformat.}

proc avformat_license*(): cstring {.importc: "avformat_license".}

proc avformat_network_init*(): cint {.importc: "avformat_network_init",
                                   dynlib: libavformat.}

proc avformat_network_deinit*(): cint {.importc: "avformat_network_deinit",
                                     dynlib: libavformat.}

proc av_muxer_iterate*(opaque: ptr pointer): ptr AVOutputFormat {.
    importc: "av_muxer_iterate".}

proc av_demuxer_iterate*(opaque: ptr pointer): ptr AVInputFormat {.
    importc: "av_demuxer_iterate".}

proc avformat_alloc_context*(): ptr AVFormatContext {.
    importc: "avformat_alloc_context".}

proc avformat_free_context*(s: ptr AVFormatContext) {.
    importc: "avformat_free_context".}

proc avformat_get_class*(): ptr AVClass {.importc: "avformat_get_class",
                                      dynlib: libavformat.}

proc av_stream_get_class*(): ptr AVClass {.importc: "av_stream_get_class",
                                       dynlib: libavformat.}

proc avformat_new_stream*(s: ptr AVFormatContext; c: ptr AVCodec): ptr AVStream {.
    importc: "avformat_new_stream".}
when FF_API_AVSTREAM_SIDE_DATA:
  proc av_stream_add_side_data*(st: ptr AVStream; `type`: AVPacketSideDataType;
                               data: ptr uint8_t; size: csize_t): cint {.
      importc: "av_stream_add_side_data".}
  proc av_stream_new_side_data*(stream: ptr AVStream; `type`: AVPacketSideDataType;
                               size: csize_t): ptr uint8_t {.
      importc: "av_stream_new_side_data".}
  proc av_stream_get_side_data*(stream: ptr AVStream; `type`: AVPacketSideDataType;
                               size: ptr csize_t): ptr uint8_t {.
      importc: "av_stream_get_side_data".}
proc av_new_program*(s: ptr AVFormatContext; id: cint): ptr AVProgram {.
    importc: "av_new_program".}

proc avformat_alloc_output_context2*(ctx: ptr ptr AVFormatContext;
                                    oformat: ptr AVOutputFormat;
                                    format_name: cstring; filename: cstring): cint {.
    importc: "avformat_alloc_output_context2".}

proc av_find_input_format*(short_name: cstring): ptr AVInputFormat {.
    importc: "av_find_input_format".}

proc av_probe_input_format*(pd: ptr AVProbeData; is_opened: cint): ptr AVInputFormat {.
    importc: "av_probe_input_format".}

proc av_probe_input_format2*(pd: ptr AVProbeData; is_opened: cint; score_max: ptr cint): ptr AVInputFormat {.
    importc: "av_probe_input_format2".}

proc av_probe_input_format3*(pd: ptr AVProbeData; is_opened: cint; score_ret: ptr cint): ptr AVInputFormat {.
    importc: "av_probe_input_format3".}

proc av_probe_input_buffer2*(pb: ptr AVIOContext; fmt: ptr ptr AVInputFormat;
                            url: cstring; logctx: pointer; offset: cuint;
                            max_probe_size: cuint): cint {.
    importc: "av_probe_input_buffer2".}

proc av_probe_input_buffer*(pb: ptr AVIOContext; fmt: ptr ptr AVInputFormat;
                           url: cstring; logctx: pointer; offset: cuint;
                           max_probe_size: cuint): cint {.
    importc: "av_probe_input_buffer".}

proc avformat_open_input*(ps: ptr ptr AVFormatContext; url: cstring;
                         fmt: ptr AVInputFormat; options: ptr ptr AVDictionary): cint {.
    importc: "avformat_open_input".}

proc avformat_find_stream_info*(ic: ptr AVFormatContext;
                               options: ptr ptr AVDictionary): cint {.
    importc: "avformat_find_stream_info".}

proc av_find_program_from_stream*(ic: ptr AVFormatContext; last: ptr AVProgram; s: cint): ptr AVProgram {.
    importc: "av_find_program_from_stream".}
proc av_program_add_stream_index*(ac: ptr AVFormatContext; progid: cint; idx: cuint) {.
    importc: "av_program_add_stream_index".}

proc av_find_best_stream*(ic: ptr AVFormatContext; `type`: AVMediaType;
                         wanted_stream_nb: cint; related_stream: cint;
                         decoder_ret: ptr ptr AVCodec; flags: cint): cint {.
    importc: "av_find_best_stream".}

proc av_read_frame*(s: ptr AVFormatContext; pkt: ptr AVPacket): cint {.
    importc: "av_read_frame".}

proc av_seek_frame*(s: ptr AVFormatContext; stream_index: cint; timestamp: int64_t;
                   flags: cint): cint {.importc: "av_seek_frame".}

proc avformat_seek_file*(s: ptr AVFormatContext; stream_index: cint; min_ts: int64_t;
                        ts: int64_t; max_ts: int64_t; flags: cint): cint {.
    importc: "avformat_seek_file".}

proc avformat_flush*(s: ptr AVFormatContext): cint {.importc: "avformat_flush",
    dynlib: libavformat.}

proc av_read_play*(s: ptr AVFormatContext): cint {.importc: "av_read_play",
    dynlib: libavformat.}

proc av_read_pause*(s: ptr AVFormatContext): cint {.importc: "av_read_pause",
    dynlib: libavformat.}

proc avformat_close_input*(s: ptr ptr AVFormatContext) {.
    importc: "avformat_close_input".}

const
  AVSEEK_FLAG_BACKWARD* = 1
  AVSEEK_FLAG_BYTE* = 2
  AVSEEK_FLAG_ANY* = 4
  AVSEEK_FLAG_FRAME* = 8


const
  AVSTREAM_INIT_IN_WRITE_HEADER* = 0
  AVSTREAM_INIT_IN_INIT_OUTPUT* = 1


proc avformat_write_header*(s: ptr AVFormatContext; options: ptr ptr AVDictionary): cint {.
    importc: "avformat_write_header".}

proc avformat_init_output*(s: ptr AVFormatContext; options: ptr ptr AVDictionary): cint {.
    importc: "avformat_init_output".}

proc av_write_frame*(s: ptr AVFormatContext; pkt: ptr AVPacket): cint {.
    importc: "av_write_frame".}

proc av_interleaved_write_frame*(s: ptr AVFormatContext; pkt: ptr AVPacket): cint {.
    importc: "av_interleaved_write_frame".}

proc av_write_uncoded_frame*(s: ptr AVFormatContext; stream_index: cint;
                            frame: ptr AVFrame): cint {.
    importc: "av_write_uncoded_frame".}

proc av_interleaved_write_uncoded_frame*(s: ptr AVFormatContext; stream_index: cint;
                                        frame: ptr AVFrame): cint {.
    importc: "av_interleaved_write_uncoded_frame".}

proc av_write_uncoded_frame_query*(s: ptr AVFormatContext; stream_index: cint): cint {.
    importc: "av_write_uncoded_frame_query".}

proc av_write_trailer*(s: ptr AVFormatContext): cint {.importc: "av_write_trailer",
    dynlib: libavformat.}

proc av_guess_format*(short_name: cstring; filename: cstring; mime_type: cstring): ptr AVOutputFormat {.
    importc: "av_guess_format".}

proc av_guess_codec*(fmt: ptr AVOutputFormat; short_name: cstring; filename: cstring;
                    mime_type: cstring; `type`: AVMediaType): AVCodecID {.
    importc: "av_guess_codec".}

proc av_get_output_timestamp*(s: ptr AVFormatContext; stream: cint; dts: ptr int64_t;
                             wall: ptr int64_t): cint {.
    importc: "av_get_output_timestamp".}

proc av_hex_dump*(f: ptr FILE; buf: ptr uint8_t; size: cint) {.importc: "av_hex_dump",
    dynlib: libavformat.}

proc av_hex_dump_log*(avcl: pointer; level: cint; buf: ptr uint8_t; size: cint) {.
    importc: "av_hex_dump_log".}

proc av_pkt_dump2*(f: ptr FILE; pkt: ptr AVPacket; dump_payload: cint; st: ptr AVStream) {.
    importc: "av_pkt_dump2".}

proc av_pkt_dump_log2*(avcl: pointer; level: cint; pkt: ptr AVPacket;
                      dump_payload: cint; st: ptr AVStream) {.
    importc: "av_pkt_dump_log2".}

proc av_codec_get_id*(tags: ptr ptr AVCodecTag; tag: cuint): AVCodecID {.
    importc: "av_codec_get_id".}

proc av_codec_get_tag*(tags: ptr ptr AVCodecTag; id: AVCodecID): cuint {.
    importc: "av_codec_get_tag".}

proc av_codec_get_tag2*(tags: ptr ptr AVCodecTag; id: AVCodecID; tag: ptr cuint): cint {.
    importc: "av_codec_get_tag2".}
proc av_find_default_stream_index*(s: ptr AVFormatContext): cint {.
    importc: "av_find_default_stream_index".}

proc av_index_search_timestamp*(st: ptr AVStream; timestamp: int64_t; flags: cint): cint {.
    importc: "av_index_search_timestamp".}

proc avformat_index_get_entries_count*(st: ptr AVStream): cint {.
    importc: "avformat_index_get_entries_count".}

proc avformat_index_get_entry*(st: ptr AVStream; idx: cint): ptr AVIndexEntry {.
    importc: "avformat_index_get_entry".}

proc avformat_index_get_entry_from_timestamp*(st: ptr AVStream;
    wanted_timestamp: int64_t; flags: cint): ptr AVIndexEntry {.
    importc: "avformat_index_get_entry_from_timestamp".}

proc av_add_index_entry*(st: ptr AVStream; pos: int64_t; timestamp: int64_t; size: cint;
                        distance: cint; flags: cint): cint {.
    importc: "av_add_index_entry".}

proc av_url_split*(proto: cstring; proto_size: cint; authorization: cstring;
                  authorization_size: cint; hostname: cstring; hostname_size: cint;
                  port_ptr: ptr cint; path: cstring; path_size: cint; url: cstring) {.
    importc: "av_url_split".}

proc av_dump_format*(ic: ptr AVFormatContext; index: cint; url: cstring; is_output: cint) {.
    importc: "av_dump_format".}
const
  AV_FRAME_FILENAME_FLAGS_MULTIPLE* = 1


proc av_get_frame_filename2*(buf: cstring; buf_size: cint; path: cstring; number: cint;
                            flags: cint): cint {.importc: "av_get_frame_filename2",
    dynlib: libavformat.}
proc av_get_frame_filename*(buf: cstring; buf_size: cint; path: cstring; number: cint): cint {.
    importc: "av_get_frame_filename".}

proc av_filename_number_test*(filename: cstring): cint {.
    importc: "av_filename_number_test".}

proc av_sdp_create*(ac: ptr ptr AVFormatContext; n_files: cint; buf: cstring; size: cint): cint {.
    importc: "av_sdp_create".}

proc av_match_ext*(filename: cstring; extensions: cstring): cint {.
    importc: "av_match_ext".}

proc avformat_query_codec*(ofmt: ptr AVOutputFormat; codec_id: AVCodecID;
                          std_compliance: cint): cint {.
    importc: "avformat_query_codec".}

proc avformat_get_riff_video_tags*(): ptr AVCodecTag {.
    importc: "avformat_get_riff_video_tags".}

proc avformat_get_riff_audio_tags*(): ptr AVCodecTag {.
    importc: "avformat_get_riff_audio_tags".}

proc avformat_get_mov_video_tags*(): ptr AVCodecTag {.
    importc: "avformat_get_mov_video_tags".}

proc avformat_get_mov_audio_tags*(): ptr AVCodecTag {.
    importc: "avformat_get_mov_audio_tags".}

proc av_guess_sample_aspect_ratio*(format: ptr AVFormatContext;
                                  stream: ptr AVStream; frame: ptr AVFrame): AVRational {.
    importc: "av_guess_sample_aspect_ratio".}

proc av_guess_frame_rate*(ctx: ptr AVFormatContext; stream: ptr AVStream;
                         frame: ptr AVFrame): AVRational {.
    importc: "av_guess_frame_rate".}

proc avformat_match_stream_specifier*(s: ptr AVFormatContext; st: ptr AVStream;
                                     spec: cstring): cint {.
    importc: "avformat_match_stream_specifier".}
proc avformat_queue_attached_pictures*(s: ptr AVFormatContext): cint {.
    importc: "avformat_queue_attached_pictures".}
## !!!Ignored construct:  enum AVTimebaseSource { AVFMT_TBCF_AUTO = - 1 , AVFMT_TBCF_DECODER , AVFMT_TBCF_DEMUXER , # TRUE [NewLine] AVFMT_TBCF_R_FRAMERATE , # [NewLine] } ;
## Error: did not expect #!!!


proc avformat_transfer_internal_stream_timing_info*(ofmt: ptr AVOutputFormat;
    ost: ptr AVStream; ist: ptr AVStream; copy_tb: AVTimebaseSource): cint {.
    importc: "avformat_transfer_internal_stream_timing_info".}

proc av_stream_get_codec_timebase*(st: ptr AVStream): AVRational {.
    importc: "av_stream_get_codec_timebase".}

type
  AVTimebaseSource* {.size: sizeof(cint).} = enum
    AVFMT_TBCF_AUTO = -1, AVFMT_TBCF_DECODER, AVFMT_TBCF_DEMUXER,
    AVFMT_TBCF_R_FRAMERATE