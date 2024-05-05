#import ../avutil/[log,opt]
import ../libavutil

# FIXME
type
  AVIODirContext* = object
  AVBPrint* = object
#---------
const 
  FF_API_AVIODIRCONTEXT* = false



const
  AVIO_SEEKABLE_NORMAL* = (1 shl 0)


const
  AVIO_SEEKABLE_TIME* = (1 shl 1)


type
  AVIOInterruptCB* {.importc: "AVIOInterruptCB", header: "avio.h", bycopy.} = object
    callback* {.importc: "callback".}: proc (a1: pointer): cint
    opaque* {.importc: "opaque".}: pointer



type
  AVIODirEntryType* {.size: sizeof(cint).} = enum
    AVIO_ENTRY_UNKNOWN, AVIO_ENTRY_BLOCK_DEVICE, AVIO_ENTRY_CHARACTER_DEVICE,
    AVIO_ENTRY_DIRECTORY, AVIO_ENTRY_NAMED_PIPE, AVIO_ENTRY_SYMBOLIC_LINK,
    AVIO_ENTRY_SOCKET, AVIO_ENTRY_FILE, AVIO_ENTRY_SERVER, AVIO_ENTRY_SHARE,
    AVIO_ENTRY_WORKGROUP



type
  AVIODirEntry* {.importc: "AVIODirEntry", header: "avio.h", bycopy.} = object
    name* {.importc: "name".}: cstring
    `type`* {.importc: "type".}: cint
    utf8* {.importc: "utf8".}: cint
    size* {.importc: "size".}: int64
    modification_timestamp* {.importc: "modification_timestamp".}: int64
    access_timestamp* {.importc: "access_timestamp".}: int64
    status_change_timestamp* {.importc: "status_change_timestamp".}: int64
    user_id* {.importc: "user_id".}: int64
    group_id* {.importc: "group_id".}: int64
    filemode* {.importc: "filemode".}: int64


when FF_API_AVIODIRCONTEXT:
  type
    AVIODirContext* {.importc: "AVIODirContext", header: "avio.h", bycopy.} = object
      url_context* {.importc: "url_context".}: ptr URLContext

#else:

type
  AVIODataMarkerType* {.size: sizeof(cint).} = enum
    AVIO_DATA_MARKER_HEADER, AVIO_DATA_MARKER_SYNC_POINT,
    AVIO_DATA_MARKER_BOUNDARY_POINT, AVIO_DATA_MARKER_UNKNOWN,
    AVIO_DATA_MARKER_TRAILER, AVIO_DATA_MARKER_FLUSH_POINT


when true:
  type
    AVIOContextwrite_packet* = proc (opaque: pointer; buf: ptr uint8; buf_size: cint): cint
else:
  type
    AVIOContextwrite_packet* = proc (opaque: pointer; buf: ptr uint8; buf_size: cint): cint

when true:
  type
    AVIOContextwrite_data_type* = proc (opaque: pointer; buf: ptr uint8;
                                    buf_size: cint; `type`: AVIODataMarkerType;
                                    time: int64): cint
else:
  type
    AVIOContextwrite_data_type* = proc (opaque: pointer; buf: ptr uint8;
                                    buf_size: cint; `type`: AVIODataMarkerType;
                                    time: int64): cint

type
  AVIOContext* {.importc: "AVIOContext", header: "avio.h", bycopy.} = object
    av_class* {.importc: "av_class".}: ptr AVClass
    buffer* {.importc: "buffer".}: ptr cuchar
    buffer_size* {.importc: "buffer_size".}: cint
    buf_ptr* {.importc: "buf_ptr".}: ptr cuchar
    buf_end* {.importc: "buf_end".}: ptr cuchar
    opaque* {.importc: "opaque".}: pointer
    read_packet* {.importc: "read_packet".}: proc (opaque: pointer; buf: ptr uint8;
        buf_size: cint): cint

    seek* {.importc: "seek".}: proc (opaque: pointer; offset: int64; whence: cint): int64
    pos* {.importc: "pos".}: int64
    eof_reached* {.importc: "eof_reached".}: cint
    error* {.importc: "error".}: cint
    write_flag* {.importc: "write_flag".}: cint
    max_packet_size* {.importc: "max_packet_size".}: cint
    min_packet_size* {.importc: "min_packet_size".}: cint
    checksum* {.importc: "checksum".}: culong
    checksum_ptr* {.importc: "checksum_ptr".}: ptr cuchar
    update_checksum* {.importc: "update_checksum".}: proc (checksum: culong;
        buf: ptr uint8; size: cuint): culong
    read_pause* {.importc: "read_pause".}: proc (opaque: pointer; pause: cint): cint
    read_seek* {.importc: "read_seek".}: proc (opaque: pointer; stream_index: cint;
        timestamp: int64; flags: cint): int64
    seekable* {.importc: "seekable".}: cint
    direct* {.importc: "direct".}: cint
    protocol_whitelist* {.importc: "protocol_whitelist".}: cstring
    protocol_blacklist* {.importc: "protocol_blacklist".}: cstring

    ignore_boundary_point* {.importc: "ignore_boundary_point".}: cint
    buf_ptr_max* {.importc: "buf_ptr_max".}: ptr cuchar
    bytes_read* {.importc: "bytes_read".}: int64
    bytes_written* {.importc: "bytes_written".}: int64



proc avio_find_protocol_name*(url: cstring): cstring {.
    importc: "avio_find_protocol_name", header: "avio.h".}

proc avio_check*(url: cstring; flags: cint): cint {.importc: "avio_check",
    header: "avio.h".}

proc avio_open_dir*(s: ptr ptr AVIODirContext; url: cstring;
                   options: ptr ptr AVDictionary): cint {.importc: "avio_open_dir",
    header: "avio.h".}

proc avio_read_dir*(s: ptr AVIODirContext; next: ptr ptr AVIODirEntry): cint {.
    importc: "avio_read_dir", header: "avio.h".}

proc avio_close_dir*(s: ptr ptr AVIODirContext): cint {.importc: "avio_close_dir",
    header: "avio.h".}

proc avio_free_directory_entry*(entry: ptr ptr AVIODirEntry) {.
    importc: "avio_free_directory_entry", header: "avio.h".}

proc avio_alloc_context*(buffer: ptr cuchar; buffer_size: cint; write_flag: cint;
                        opaque: pointer; read_packet: proc (opaque: pointer;
    buf: ptr uint8; buf_size: cint): cint; write_packet: proc (opaque: pointer;
    buf: ptr uint8; buf_size: cint): cint; seek: proc (opaque: pointer; offset: int64;
    whence: cint): int64): ptr AVIOContext {.importc: "avio_alloc_context",
    header: "avio.h".}

proc avio_context_free*(s: ptr ptr AVIOContext) {.importc: "avio_context_free",
    header: "avio.h".}
proc avio_w8*(s: ptr AVIOContext; b: cint) {.importc: "avio_w8", header: "avio.h".}
proc avio_write*(s: ptr AVIOContext; buf: ptr cuchar; size: cint) {.
    importc: "avio_write", header: "avio.h".}
proc avio_wl64*(s: ptr AVIOContext; val: uint64) {.importc: "avio_wl64",
    header: "avio.h".}
proc avio_wb64*(s: ptr AVIOContext; val: uint64) {.importc: "avio_wb64",
    header: "avio.h".}
proc avio_wl32*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wl32", header: "avio.h".}
proc avio_wb32*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wb32", header: "avio.h".}
proc avio_wl24*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wl24", header: "avio.h".}
proc avio_wb24*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wb24", header: "avio.h".}
proc avio_wl16*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wl16", header: "avio.h".}
proc avio_wb16*(s: ptr AVIOContext; val: cuint) {.importc: "avio_wb16", header: "avio.h".}

proc avio_put_str*(s: ptr AVIOContext; str: cstring): cint {.importc: "avio_put_str",
    header: "avio.h".}

proc avio_put_str16le*(s: ptr AVIOContext; str: cstring): cint {.
    importc: "avio_put_str16le", header: "avio.h".}

proc avio_put_str16be*(s: ptr AVIOContext; str: cstring): cint {.
    importc: "avio_put_str16be", header: "avio.h".}

proc avio_write_marker*(s: ptr AVIOContext; time: int64; `type`: AVIODataMarkerType) {.
    importc: "avio_write_marker", header: "avio.h".}

const
  AVSEEK_SIZE* = 0x10000


const
  AVSEEK_FORCE* = 0x20000


proc avio_seek*(s: ptr AVIOContext; offset: int64; whence: cint): int64 {.
    importc: "avio_seek", header: "avio.h".}

proc avio_skip*(s: ptr AVIOContext; offset: int64): int64 {.importc: "avio_skip",
    header: "avio.h".}

# proc avio_tell*(s: ptr AVIOContext): int64 =
#   return avio_seek(s, 0, SEEK_CUR)


proc avio_size*(s: ptr AVIOContext): int64 {.importc: "avio_size", header: "avio.h".}

proc avio_feof*(s: ptr AVIOContext): cint {.importc: "avio_feof", header: "avio.h".}

proc avio_vprintf*(s: ptr AVIOContext; fmt: cstring; ap: va_list): cint {.
    importc: "avio_vprintf", header: "avio.h".}

proc avio_print_string_array*(s: ptr AVIOContext; strings: ptr cstring) {.
    importc: "avio_print_string_array", header: "avio.h".}

# template avio_print*(s: untyped; xargs: varargs[untyped]): untyped =
#   avio_print_string_array(s, cast[UncheckedArray[cstring]]((__VA_ARGS__, nil)))


proc avio_flush*(s: ptr AVIOContext) {.importc: "avio_flush", header: "avio.h".}

proc avio_read*(s: ptr AVIOContext; buf: ptr cuchar; size: cint): cint {.
    importc: "avio_read", header: "avio.h".}

proc avio_read_partial*(s: ptr AVIOContext; buf: ptr cuchar; size: cint): cint {.
    importc: "avio_read_partial", header: "avio.h".}

proc avio_r8*(s: ptr AVIOContext): cint {.importc: "avio_r8", header: "avio.h".}
proc avio_rl16*(s: ptr AVIOContext): cuint {.importc: "avio_rl16", header: "avio.h".}
proc avio_rl24*(s: ptr AVIOContext): cuint {.importc: "avio_rl24", header: "avio.h".}
proc avio_rl32*(s: ptr AVIOContext): cuint {.importc: "avio_rl32", header: "avio.h".}
proc avio_rl64*(s: ptr AVIOContext): uint64 {.importc: "avio_rl64", header: "avio.h".}
proc avio_rb16*(s: ptr AVIOContext): cuint {.importc: "avio_rb16", header: "avio.h".}
proc avio_rb24*(s: ptr AVIOContext): cuint {.importc: "avio_rb24", header: "avio.h".}
proc avio_rb32*(s: ptr AVIOContext): cuint {.importc: "avio_rb32", header: "avio.h".}
proc avio_rb64*(s: ptr AVIOContext): uint64 {.importc: "avio_rb64", header: "avio.h".}

proc avio_get_str*(pb: ptr AVIOContext; maxlen: cint; buf: cstring; buflen: cint): cint {.
    importc: "avio_get_str", header: "avio.h".}

proc avio_get_str16le*(pb: ptr AVIOContext; maxlen: cint; buf: cstring; buflen: cint): cint {.
    importc: "avio_get_str16le", header: "avio.h".}
proc avio_get_str16be*(pb: ptr AVIOContext; maxlen: cint; buf: cstring; buflen: cint): cint {.
    importc: "avio_get_str16be", header: "avio.h".}

const
  AVIO_FLAG_READ* = 1
  AVIO_FLAG_WRITE* = 2
  AVIO_FLAG_READ_WRITE* = (AVIO_FLAG_READ or AVIO_FLAG_WRITE)


const
  AVIO_FLAG_NONBLOCK* = 8


const
  AVIO_FLAG_DIRECT* = 0x8000


proc avio_open*(s: ptr ptr AVIOContext; url: cstring; flags: cint): cint {.
    importc: "avio_open", header: "avio.h".}

proc avio_open2*(s: ptr ptr AVIOContext; url: cstring; flags: cint;
                int_cb: ptr AVIOInterruptCB; options: ptr ptr AVDictionary): cint {.
    importc: "avio_open2", header: "avio.h".}

proc avio_close*(s: ptr AVIOContext): cint {.importc: "avio_close", header: "avio.h".}

proc avio_closep*(s: ptr ptr AVIOContext): cint {.importc: "avio_closep",
    header: "avio.h".}

proc avio_open_dyn_buf*(s: ptr ptr AVIOContext): cint {.importc: "avio_open_dyn_buf",
    header: "avio.h".}

proc avio_get_dyn_buf*(s: ptr AVIOContext; pbuffer: ptr ptr uint8): cint {.
    importc: "avio_get_dyn_buf", header: "avio.h".}

proc avio_close_dyn_buf*(s: ptr AVIOContext; pbuffer: ptr ptr uint8): cint {.
    importc: "avio_close_dyn_buf", header: "avio.h".}

proc avio_enum_protocols*(opaque: ptr pointer; output: cint): cstring {.
    importc: "avio_enum_protocols", header: "avio.h".}

proc avio_protocol_get_class*(name: cstring): ptr AVClass {.
    importc: "avio_protocol_get_class", header: "avio.h".}

proc avio_pause*(h: ptr AVIOContext; pause: cint): cint {.importc: "avio_pause",
    header: "avio.h".}

proc avio_seek_time*(h: ptr AVIOContext; stream_index: cint; timestamp: int64;
                    flags: cint): int64 {.importc: "avio_seek_time",
    header: "avio.h".}

discard "forward decl of AVBPrint"
proc avio_read_to_bprint*(h: ptr AVIOContext; pb: ptr AVBPrint; max_size: csize_t): cint {.
    importc: "avio_read_to_bprint", header: "avio.h".}

proc avio_accept*(s: ptr AVIOContext; c: ptr ptr AVIOContext): cint {.
    importc: "avio_accept", header: "avio.h".}

proc avio_handshake*(c: ptr AVIOContext): cint {.importc: "avio_handshake",
    header: "avio.h".}