



## !!!Ignored construct:  # AVUTIL_LOG_H [NewLine] # AVUTIL_LOG_H [NewLine] # < stdarg . h > [NewLine] # attributes.h [NewLine] # version.h [NewLine] typedef enum { AV_CLASS_CATEGORY_NA = 0 , AV_CLASS_CATEGORY_INPUT , AV_CLASS_CATEGORY_OUTPUT , AV_CLASS_CATEGORY_MUXER , AV_CLASS_CATEGORY_DEMUXER , AV_CLASS_CATEGORY_ENCODER , AV_CLASS_CATEGORY_DECODER , AV_CLASS_CATEGORY_FILTER , AV_CLASS_CATEGORY_BITSTREAM_FILTER , AV_CLASS_CATEGORY_SWSCALER , AV_CLASS_CATEGORY_SWRESAMPLER , AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT = 40 , AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT , AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT , AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT , AV_CLASS_CATEGORY_DEVICE_OUTPUT , AV_CLASS_CATEGORY_DEVICE_INPUT , AV_CLASS_CATEGORY_NB < not part of ABI/API } AVClassCategory ;
## Error: expected ';'!!!

template AV_IS_INPUT_DEVICE*(category: untyped): untyped =
  (((category) == AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT) or
      ((category) == AV_CLASS_CATEGORY_DEVICE_AUDIO_INPUT) or
      ((category) == AV_CLASS_CATEGORY_DEVICE_INPUT))

template AV_IS_OUTPUT_DEVICE*(category: untyped): untyped =
  (((category) == AV_CLASS_CATEGORY_DEVICE_VIDEO_OUTPUT) or
      ((category) == AV_CLASS_CATEGORY_DEVICE_AUDIO_OUTPUT) or
      ((category) == AV_CLASS_CATEGORY_DEVICE_OUTPUT))

discard "forward decl of AVOptionRanges"
type
  AVClass* {.importc: "AVClass", header: "log.h", bycopy.} = object
    class_name* {.importc: "class_name".}: cstring
    item_name* {.importc: "item_name".}: proc (ctx: pointer): cstring
    option* {.importc: "option".}: ptr AVOption
    version* {.importc: "version".}: cint
    log_level_offset_offset* {.importc: "log_level_offset_offset".}: cint
    parent_log_context_offset* {.importc: "parent_log_context_offset".}: cint
    category* {.importc: "category".}: AVClassCategory
    get_category* {.importc: "get_category".}: proc (ctx: pointer): AVClassCategory
    query_ranges* {.importc: "query_ranges".}: proc (a1: ptr ptr AVOptionRanges;
        obj: pointer; key: cstring; flags: cint): cint
    child_next* {.importc: "child_next".}: proc (obj: pointer; prev: pointer): pointer
    child_class_iterate* {.importc: "child_class_iterate".}: proc (iter: ptr pointer): ptr AVClass



const
  AV_LOG_QUIET* = -8


const
  AV_LOG_PANIC* = 0


const
  AV_LOG_FATAL* = 8


const
  AV_LOG_ERROR* = 16


const
  AV_LOG_WARNING* = 24


const
  AV_LOG_INFO* = 32


const
  AV_LOG_VERBOSE* = 40


const
  AV_LOG_DEBUG* = 48


const
  AV_LOG_TRACE* = 56
  AV_LOG_MAX_OFFSET* = (AV_LOG_TRACE - AV_LOG_QUIET)


template AV_LOG_C*(x: untyped): untyped =
  ((x) shl 8)


## !!!Ignored construct:  void av_log ( void * avcl , int level , const char * fmt , ... ) av_printf_format ( 3 , 4 ) ;
## Error: expected ';'!!!


## !!!Ignored construct:  void av_log_once ( void * avcl , int initial_level , int subsequent_level , int * state , const char * fmt , ... ) av_printf_format ( 5 , 6 ) ;
## Error: expected ';'!!!


proc av_vlog*(avcl: pointer; level: cint; fmt: cstring; vl: va_list) {.
    importc: "av_vlog", header: "log.h".}

proc av_log_get_level*(): cint {.importc: "av_log_get_level", header: "log.h".}

proc av_log_set_level*(level: cint) {.importc: "av_log_set_level", header: "log.h".}

proc av_log_set_callback*(callback: proc (a1: pointer; a2: cint; a3: cstring; a4: va_list)) {.
    importc: "av_log_set_callback", header: "log.h".}

proc av_log_default_callback*(avcl: pointer; level: cint; fmt: cstring; vl: va_list) {.
    importc: "av_log_default_callback", header: "log.h".}

proc av_default_item_name*(ctx: pointer): cstring {.importc: "av_default_item_name",
    header: "log.h".}
proc av_default_get_category*(`ptr`: pointer): AVClassCategory {.
    importc: "av_default_get_category", header: "log.h".}

proc av_log_format_line*(`ptr`: pointer; level: cint; fmt: cstring; vl: va_list;
                        line: cstring; line_size: cint; print_prefix: ptr cint) {.
    importc: "av_log_format_line", header: "log.h".}

proc av_log_format_line2*(`ptr`: pointer; level: cint; fmt: cstring; vl: va_list;
                         line: cstring; line_size: cint; print_prefix: ptr cint): cint {.
    importc: "av_log_format_line2", header: "log.h".}

const
  AV_LOG_SKIP_REPEATED* = 1


const
  AV_LOG_PRINT_LEVEL* = 2

proc av_log_set_flags*(arg: cint) {.importc: "av_log_set_flags", header: "log.h".}
proc av_log_get_flags*(): cint {.importc: "av_log_get_flags", header: "log.h".}
