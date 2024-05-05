






type
  AVOptionType* {.size: sizeof(cint).} = enum
    AV_OPT_TYPE_FLAGS = 1, AV_OPT_TYPE_INT, AV_OPT_TYPE_INT64,
    AV_OPT_TYPE_DOUBLE, AV_OPT_TYPE_FLOAT, AV_OPT_TYPE_STRING,
    AV_OPT_TYPE_RATIONAL, AV_OPT_TYPE_BINARY, AV_OPT_TYPE_DICT,
    AV_OPT_TYPE_UINT64, AV_OPT_TYPE_CONST, AV_OPT_TYPE_IMAGE_SIZE,
    AV_OPT_TYPE_PIXEL_FMT, AV_OPT_TYPE_SAMPLE_FMT, AV_OPT_TYPE_VIDEO_RATE,
    AV_OPT_TYPE_DURATION, AV_OPT_TYPE_COLOR, AV_OPT_TYPE_BOOL,
    AV_OPT_TYPE_CHLAYOUT, AV_OPT_TYPE_FLAG_ARRAY = (1 shl 16)



const
  AV_OPT_FLAG_ENCODING_PARAM* = (1 shl 0)


const
  AV_OPT_FLAG_DECODING_PARAM* = (1 shl 1)
  AV_OPT_FLAG_AUDIO_PARAM* = (1 shl 3)
  AV_OPT_FLAG_VIDEO_PARAM* = (1 shl 4)
  AV_OPT_FLAG_SUBTITLE_PARAM* = (1 shl 5)


const
  AV_OPT_FLAG_EXPORT* = (1 shl 6)


const
  AV_OPT_FLAG_READONLY* = (1 shl 7)


const
  AV_OPT_FLAG_BSF_PARAM* = (1 shl 8)


const
  AV_OPT_FLAG_RUNTIME_PARAM* = (1 shl 15)


const
  AV_OPT_FLAG_FILTERING_PARAM* = (1 shl 16)


const
  AV_OPT_FLAG_DEPRECATED* = (1 shl 17)


const
  AV_OPT_FLAG_CHILD_CONSTS* = (1 shl 18)


type
  AVOptionArrayDef* {.importc: "AVOptionArrayDef", header: "opt.h", bycopy.} = object
    def* {.importc: "def".}: cstring
    size_min* {.importc: "size_min".}: cuint
    size_max* {.importc: "size_max".}: cuint
    sep* {.importc: "sep".}: char



type
  INNER_C_UNION_opt_1* {.importc: "AVOption::no_name", header: "opt.h", bycopy,
                         union.} = object
    i64* {.importc: "i64".}: int64
    dbl* {.importc: "dbl".}: cdouble
    str* {.importc: "str".}: cstring
    q* {.importc: "q".}: AVRational
    arr* {.importc: "arr".}: ptr AVOptionArrayDef

  AVOption* {.importc: "AVOption", header: "opt.h", bycopy.} = object
    name* {.importc: "name".}: cstring
    help* {.importc: "help".}: cstring
    offset* {.importc: "offset".}: cint
    `type`* {.importc: "type".}: AVOptionType
    default_val* {.importc: "default_val".}: INNER_C_UNION_opt_1
    min* {.importc: "min".}: cdouble
    max* {.importc: "max".}: cdouble
    flags* {.importc: "flags".}: cint
    unit* {.importc: "unit".}: cstring



type
  AVOptionRange* {.importc: "AVOptionRange", header: "opt.h", bycopy.} = object
    str* {.importc: "str".}: cstring
    value_min* {.importc: "value_min".}: cdouble
    value_max* {.importc: "value_max".}: cdouble
    component_min* {.importc: "component_min".}: cdouble
    component_max* {.importc: "component_max".}: cdouble
    is_range* {.importc: "is_range".}: cint



type
  AVOptionRanges* {.importc: "AVOptionRanges", header: "opt.h", bycopy.} = object
    range* {.importc: "range".}: ptr ptr AVOptionRange
    nb_ranges* {.importc: "nb_ranges".}: cint
    nb_components* {.importc: "nb_components".}: cint



proc av_opt_set_defaults*(s: pointer) {.importc: "av_opt_set_defaults".}

proc av_opt_set_defaults2*(s: pointer; mask: cint; flags: cint) {.
    importc: "av_opt_set_defaults2".}

proc av_opt_free*(obj: pointer) {.importc: "av_opt_free".}

proc av_opt_next*(obj: pointer; prev: ptr AVOption): ptr AVOption {.
    importc: "av_opt_next".}

proc av_opt_child_next*(obj: pointer; prev: pointer): pointer {.
    importc: "av_opt_child_next".}

proc av_opt_child_class_iterate*(parent: ptr AVClass; iter: ptr pointer): ptr AVClass {.
    importc: "av_opt_child_class_iterate".}
const
  AV_OPT_SEARCH_CHILDREN* = (1 shl 0)


const
  AV_OPT_SEARCH_FAKE_OBJ* = (1 shl 1)


const
  AV_OPT_ALLOW_NULL* = (1 shl 2)


const
  AV_OPT_MULTI_COMPONENT_RANGE* = (1 shl 12)


proc av_opt_find*(obj: pointer; name: cstring; unit: cstring; opt_flags: cint;
                  search_flags: cint): ptr AVOption {.importc: "av_opt_find".}

proc av_opt_find2*(obj: pointer; name: cstring; unit: cstring; opt_flags: cint;
                   search_flags: cint; target_obj: ptr pointer): ptr AVOption {.
    importc: "av_opt_find2".}

proc av_opt_show2*(obj: pointer; av_log_obj: pointer; req_flags: cint;
                   rej_flags: cint): cint {.importc: "av_opt_show2".}

proc av_opt_get_key_value*(ropts: cstringArray; key_val_sep: cstring;
                           pairs_sep: cstring; flags: cuint; rkey: cstringArray;
                           rval: cstringArray): cint {.
    importc: "av_opt_get_key_value".}
const
  AV_OPT_FLAG_IMPLICIT_KEY* = 1


proc av_set_options_string*(ctx: pointer; opts: cstring; key_val_sep: cstring;
                            pairs_sep: cstring): cint {.
    importc: "av_set_options_string".}

proc av_opt_set_from_string*(ctx: pointer; opts: cstring;
                             shorthand: cstringArray; key_val_sep: cstring;
                             pairs_sep: cstring): cint {.
    importc: "av_opt_set_from_string".}

proc av_opt_set_dict*(obj: pointer; options: ptr ptr AVDictionary): cint {.
    importc: "av_opt_set_dict".}

proc av_opt_set_dict2*(obj: pointer; options: ptr ptr AVDictionary;
                       search_flags: cint): cint {.importc: "av_opt_set_dict2".}

proc av_opt_copy*(dest: pointer; src: pointer): cint {.importc: "av_opt_copy".}

proc av_opt_set*(obj: pointer; name: cstring; val: cstring; search_flags: cint): cint {.
    importc: "av_opt_set".}
proc av_opt_set_int*(obj: pointer; name: cstring; val: int64;
                     search_flags: cint): cint {.importc: "av_opt_set_int".}
proc av_opt_set_double*(obj: pointer; name: cstring; val: cdouble;
                        search_flags: cint): cint {.
    importc: "av_opt_set_double".}
proc av_opt_set_q*(obj: pointer; name: cstring; val: AVRational;
                   search_flags: cint): cint {.importc: "av_opt_set_q".}
proc av_opt_set_bin*(obj: pointer; name: cstring; val: ptr uint8; size: cint;
                     search_flags: cint): cint {.importc: "av_opt_set_bin".}
proc av_opt_set_image_size*(obj: pointer; name: cstring; w: cint; h: cint;
                            search_flags: cint): cint {.
    importc: "av_opt_set_image_size".}
proc av_opt_set_pixel_fmt*(obj: pointer; name: cstring; fmt: AVPixelFormat;
                           search_flags: cint): cint {.
    importc: "av_opt_set_pixel_fmt".}
proc av_opt_set_sample_fmt*(obj: pointer; name: cstring; fmt: AVSampleFormat;
                            search_flags: cint): cint {.
    importc: "av_opt_set_sample_fmt".}
proc av_opt_set_video_rate*(obj: pointer; name: cstring; val: AVRational;
                            search_flags: cint): cint {.
    importc: "av_opt_set_video_rate".}
proc av_opt_set_chlayout*(obj: pointer; name: cstring;
                          layout: ptr AVChannelLayout; search_flags: cint): cint {.
    importc: "av_opt_set_chlayout".}

proc av_opt_set_dict_val*(obj: pointer; name: cstring; val: ptr AVDictionary;
                          search_flags: cint): cint {.
    importc: "av_opt_set_dict_val".}

template av_opt_set_int_list*(obj, name, val, term, flags: untyped): untyped =
  (if av_int_list_length(val, term) > INT_MAX div sizeof(((val)[])): AVERROR(
      EINVAL) else: av_opt_set_bin(obj, name, cast[ptr uint8]((val)), av_int_list_length(
      val, term) *
      sizeof(((val)[])), flags))


proc av_opt_get*(obj: pointer; name: cstring; search_flags: cint;
                 out_val: ptr ptr uint8): cint {.importc: "av_opt_get".}
proc av_opt_get_int*(obj: pointer; name: cstring; search_flags: cint;
                     out_val: ptr int64): cint {.importc: "av_opt_get_int".}
proc av_opt_get_double*(obj: pointer; name: cstring; search_flags: cint;
                        out_val: ptr cdouble): cint {.
    importc: "av_opt_get_double".}
proc av_opt_get_q*(obj: pointer; name: cstring; search_flags: cint;
                   out_val: ptr AVRational): cint {.importc: "av_opt_get_q".}
proc av_opt_get_image_size*(obj: pointer; name: cstring; search_flags: cint;
                            w_out: ptr cint; h_out: ptr cint): cint {.
    importc: "av_opt_get_image_size".}
proc av_opt_get_pixel_fmt*(obj: pointer; name: cstring; search_flags: cint;
                           out_fmt: ptr AVPixelFormat): cint {.
    importc: "av_opt_get_pixel_fmt".}
proc av_opt_get_sample_fmt*(obj: pointer; name: cstring; search_flags: cint;
                            out_fmt: ptr AVSampleFormat): cint {.
    importc: "av_opt_get_sample_fmt".}
proc av_opt_get_video_rate*(obj: pointer; name: cstring; search_flags: cint;
                            out_val: ptr AVRational): cint {.
    importc: "av_opt_get_video_rate".}
proc av_opt_get_chlayout*(obj: pointer; name: cstring; search_flags: cint;
                          layout: ptr AVChannelLayout): cint {.
    importc: "av_opt_get_chlayout".}

proc av_opt_get_dict_val*(obj: pointer; name: cstring; search_flags: cint;
                          out_val: ptr ptr AVDictionary): cint {.
    importc: "av_opt_get_dict_val".}

proc av_opt_eval_flags*(obj: pointer; o: ptr AVOption; val: cstring;
                        flags_out: ptr cint): cint {.
    importc: "av_opt_eval_flags".}
proc av_opt_eval_int*(obj: pointer; o: ptr AVOption; val: cstring;
                      int_out: ptr cint): cint {.importc: "av_opt_eval_int".}
proc av_opt_eval_int64*(obj: pointer; o: ptr AVOption; val: cstring;
                        int64_out: ptr int64): cint {.
    importc: "av_opt_eval_int64".}
proc av_opt_eval_float*(obj: pointer; o: ptr AVOption; val: cstring;
                        float_out: ptr cfloat): cint {.
    importc: "av_opt_eval_float".}
proc av_opt_eval_double*(obj: pointer; o: ptr AVOption; val: cstring;
                         double_out: ptr cdouble): cint {.
    importc: "av_opt_eval_double".}
proc av_opt_eval_q*(obj: pointer; o: ptr AVOption; val: cstring;
                    q_out: ptr AVRational): cint {.importc: "av_opt_eval_q".}

proc av_opt_ptr*(avclass: ptr AVClass; obj: pointer; name: cstring): pointer {.
    importc: "av_opt_ptr".}

proc av_opt_is_set_to_default*(obj: pointer; o: ptr AVOption): cint {.
    importc: "av_opt_is_set_to_default".}

proc av_opt_is_set_to_default_by_name*(obj: pointer; name: cstring;
                                       search_flags: cint): cint {.
    importc: "av_opt_is_set_to_default_by_name".}

proc av_opt_flag_is_set*(obj: pointer; field_name: cstring; flag_name: cstring): cint {.
    importc: "av_opt_flag_is_set".}
const
  AV_OPT_SERIALIZE_SKIP_DEFAULTS* = 0x00000001
  AV_OPT_SERIALIZE_OPT_FLAGS_EXACT* = 0x00000002


proc av_opt_serialize*(obj: pointer; opt_flags: cint; flags: cint;
                       buffer: cstringArray; key_val_sep: char; pairs_sep: char): cint {.
    importc: "av_opt_serialize".}

proc av_opt_freep_ranges*(ranges: ptr ptr AVOptionRanges) {.
    importc: "av_opt_freep_ranges".}

proc av_opt_query_ranges*(a1: ptr ptr AVOptionRanges; obj: pointer;
                          key: cstring; flags: cint): cint {.
    importc: "av_opt_query_ranges".}

proc av_opt_query_ranges_default*(a1: ptr ptr AVOptionRanges; obj: pointer;
                                  key: cstring; flags: cint): cint {.
    importc: "av_opt_query_ranges_default".}
