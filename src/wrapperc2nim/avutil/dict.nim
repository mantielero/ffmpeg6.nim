




const
  AV_DICT_MATCH_CASE* = 1
  AV_DICT_IGNORE_SUFFIX* = 2
  AV_DICT_DONT_STRDUP_KEY* = 4
  AV_DICT_DONT_STRDUP_VAL* = 8
  AV_DICT_DONT_OVERWRITE* = 16
  AV_DICT_APPEND* = 32
  AV_DICT_MULTIKEY* = 64


type
  AVDictionaryEntry* {.importc: "AVDictionaryEntry", header: "dict.h", bycopy.} = object
    key* {.importc: "key".}: cstring
    value* {.importc: "value".}: cstring



proc av_dict_get*(m: ptr AVDictionary; key: cstring; prev: ptr AVDictionaryEntry;
                 flags: cint): ptr AVDictionaryEntry {.importc: "av_dict_get".}

proc av_dict_iterate*(m: ptr AVDictionary; prev: ptr AVDictionaryEntry): ptr AVDictionaryEntry {.
    importc: "av_dict_iterate".}

proc av_dict_count*(m: ptr AVDictionary): cint {.importc: "av_dict_count".}

proc av_dict_set*(pm: ptr ptr AVDictionary; key: cstring; value: cstring; flags: cint): cint {.
    importc: "av_dict_set".}

proc av_dict_set_int*(pm: ptr ptr AVDictionary; key: cstring; value: int64; flags: cint): cint {.
    importc: "av_dict_set_int".}

proc av_dict_parse_string*(pm: ptr ptr AVDictionary; str: cstring;
                          key_val_sep: cstring; pairs_sep: cstring; flags: cint): cint {.
    importc: "av_dict_parse_string".}

proc av_dict_copy*(dst: ptr ptr AVDictionary; src: ptr AVDictionary; flags: cint): cint {.
    importc: "av_dict_copy".}

proc av_dict_free*(m: ptr ptr AVDictionary) {.importc: "av_dict_free".}

proc av_dict_get_string*(m: ptr AVDictionary; buffer: cstringArray; key_val_sep: char;
                        pairs_sep: char): cint {.importc: "av_dict_get_string".}
