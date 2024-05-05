import ../avutil/buffer_internal



proc av_buffer_alloc*(size: csize_t): ptr AVBufferRef {.importc: "av_buffer_alloc",
    header: "buffer.h".}

proc av_buffer_allocz*(size: csize_t): ptr AVBufferRef {.importc: "av_buffer_allocz",
    header: "buffer.h".}

const
  AV_BUFFER_FLAG_READONLY* = (1 shl 0)


proc av_buffer_create*(data: ptr uint8; size: csize_t;
                      free: proc (opaque: pointer; data: ptr uint8); opaque: pointer;
                      flags: cint): ptr AVBufferRef {.importc: "av_buffer_create",
    header: "buffer.h".}

proc av_buffer_default_free*(opaque: pointer; data: ptr uint8) {.
    importc: "av_buffer_default_free", header: "buffer.h".}

proc av_buffer_ref*(buf: ptr AVBufferRef): ptr AVBufferRef {.importc: "av_buffer_ref",
    header: "buffer.h".}

proc av_buffer_unref*(buf: ptr ptr AVBufferRef) {.importc: "av_buffer_unref",
    header: "buffer.h".}

proc av_buffer_is_writable*(buf: ptr AVBufferRef): cint {.
    importc: "av_buffer_is_writable", header: "buffer.h".}

proc av_buffer_get_opaque*(buf: ptr AVBufferRef): pointer {.
    importc: "av_buffer_get_opaque", header: "buffer.h".}
proc av_buffer_get_ref_count*(buf: ptr AVBufferRef): cint {.
    importc: "av_buffer_get_ref_count", header: "buffer.h".}

proc av_buffer_make_writable*(buf: ptr ptr AVBufferRef): cint {.
    importc: "av_buffer_make_writable", header: "buffer.h".}

proc av_buffer_realloc*(buf: ptr ptr AVBufferRef; size: csize_t): cint {.
    importc: "av_buffer_realloc", header: "buffer.h".}

proc av_buffer_replace*(dst: ptr ptr AVBufferRef; src: ptr AVBufferRef): cint {.
    importc: "av_buffer_replace", header: "buffer.h".}



proc av_buffer_pool_init*(size: csize_t;
                         alloc: proc (size: csize_t): ptr AVBufferRef): ptr AVBufferPool {.
    importc: "av_buffer_pool_init", header: "buffer.h".}

proc av_buffer_pool_init2*(size: csize_t; opaque: pointer; alloc: proc (
    opaque: pointer; size: csize_t): ptr AVBufferRef;
                          pool_free: proc (opaque: pointer)): ptr AVBufferPool {.
    importc: "av_buffer_pool_init2", header: "buffer.h".}

proc av_buffer_pool_uninit*(pool: ptr ptr AVBufferPool) {.
    importc: "av_buffer_pool_uninit", header: "buffer.h".}

proc av_buffer_pool_get*(pool: ptr AVBufferPool): ptr AVBufferRef {.
    importc: "av_buffer_pool_get", header: "buffer.h".}

proc av_buffer_pool_buffer_get_opaque*(`ref`: ptr AVBufferRef): pointer {.
    importc: "av_buffer_pool_buffer_get_opaque", header: "buffer.h".}
