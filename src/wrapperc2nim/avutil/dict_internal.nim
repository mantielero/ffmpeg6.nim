




proc avpriv_dict_set_timestamp*(dict: ptr ptr AVDictionary; key: cstring;
                               timestamp: int64): cint {.
    importc: "avpriv_dict_set_timestamp".}