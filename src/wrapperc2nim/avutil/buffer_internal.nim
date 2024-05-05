import thread


const
  BUFFER_FLAG_REALLOCATABLE* = (1 shl 0)


const
  BUFFER_FLAG_NO_FREE* = (1 shl 1)

type
  AVBuffer* {.importc: "AVBuffer", header: "buffer_internal.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8
    size* {.importc: "size".}: csize_t
    refcount* {.importc: "refcount".}: uint#atomic_uint
    free* {.importc: "free".}: proc (opaque: pointer; data: ptr uint8)
    opaque* {.importc: "opaque".}: pointer
    flags* {.importc: "flags".}: cint
    flags_internal* {.importc: "flags_internal".}: cint

type
  AVBufferRef* {.importc: "AVBufferRef", header: "buffer.h", bycopy.} = object
    buffer* {.importc: "buffer".}: ptr AVBuffer
    data* {.importc: "data".}: ptr uint8
    size* {.importc: "size".}: csize_t

  BufferPoolEntry* {.importc: "BufferPoolEntry", header: "buffer_internal.h", bycopy.} = object
    data* {.importc: "data".}: ptr uint8
    opaque* {.importc: "opaque".}: pointer
    free* {.importc: "free".}: proc (opaque: pointer; data: ptr uint8)
    pool* {.importc: "pool".}: ptr AVBufferPool
    next* {.importc: "next".}: ptr BufferPoolEntry
    buffer* {.importc: "buffer".}: AVBuffer

  AVBufferPool* {.importc: "AVBufferPool", header: "buffer_internal.h", bycopy.} = object
    mutex* {.importc: "mutex".}: AVMutex
    pool* {.importc: "pool".}: ptr BufferPoolEntry
    refcount* {.importc: "refcount".}: uint #atomic_uint
    size* {.importc: "size".}: csize_t
    opaque* {.importc: "opaque".}: pointer
    alloc* {.importc: "alloc".}: proc (size: csize_t): ptr AVBufferRef
    alloc2* {.importc: "alloc2".}: proc (opaque: pointer; size: csize_t): ptr AVBufferRef
    pool_free* {.importc: "pool_free".}: proc (opaque: pointer)

