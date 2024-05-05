


when not defined(HAVE_AV_CONFIG_H):

proc swscale_version*(): cuint {.importc: "swscale_version", dynlib: libswsscale.}

proc swscale_configuration*(): cstring {.importc: "swscale_configuration",
                                      dynlib: libswsscale.}

proc swscale_license*(): cstring {.importc: "swscale_license", dynlib: libswsscale.}

const
  SWS_FAST_BILINEAR* = 1
  SWS_BILINEAR* = 2
  SWS_BICUBIC* = 4
  SWS_X* = 8
  SWS_POINT* = 0x10
  SWS_AREA* = 0x20
  SWS_BICUBLIN* = 0x40
  SWS_GAUSS* = 0x80
  SWS_SINC* = 0x100
  SWS_LANCZOS* = 0x200
  SWS_SPLINE* = 0x400
  SWS_SRC_V_CHR_DROP_MASK* = 0x30000
  SWS_SRC_V_CHR_DROP_SHIFT* = 16
  SWS_PARAM_DEFAULT* = 123456
  SWS_PRINT_INFO* = 0x1000


const
  SWS_FULL_CHR_H_INT* = 0x2000


const
  SWS_FULL_CHR_H_INP* = 0x4000
  SWS_DIRECT_BGR* = 0x8000
  SWS_ACCURATE_RND* = 0x40000
  SWS_BITEXACT* = 0x80000
  SWS_ERROR_DIFFUSION* = 0x800000
  SWS_MAX_REDUCE_CUTOFF* = 0.002
  SWS_CS_ITU709* = 1
  SWS_CS_FCC* = 4
  SWS_CS_ITU601* = 5
  SWS_CS_ITU624* = 5
  SWS_CS_SMPTE170M* = 5
  SWS_CS_SMPTE240M* = 7
  SWS_CS_DEFAULT* = 5
  SWS_CS_BT2020* = 9


proc sws_getCoefficients*(colorspace: cint): ptr cint {.
    importc: "sws_getCoefficients", dynlib: libswsscale.}

type
  SwsVector* {.importc: "SwsVector", header: "swscale.h", bycopy.} = object
    coeff* {.importc: "coeff".}: ptr cdouble
    length* {.importc: "length".}: cint



type
  SwsFilter* {.importc: "SwsFilter", header: "swscale.h", bycopy.} = object
    lumH* {.importc: "lumH".}: ptr SwsVector
    lumV* {.importc: "lumV".}: ptr SwsVector
    chrH* {.importc: "chrH".}: ptr SwsVector
    chrV* {.importc: "chrV".}: ptr SwsVector


discard "forward decl of SwsContext"
proc sws_isSupportedInput*(pix_fmt: AVPixelFormat): cint {.
    importc: "sws_isSupportedInput", dynlib: libswsscale.}

proc sws_isSupportedOutput*(pix_fmt: AVPixelFormat): cint {.
    importc: "sws_isSupportedOutput", dynlib: libswsscale.}

proc sws_isSupportedEndiannessConversion*(pix_fmt: AVPixelFormat): cint {.
    importc: "sws_isSupportedEndiannessConversion", dynlib: libswsscale.}

proc sws_alloc_context*(): ptr SwsContext {.importc: "sws_alloc_context",
                                        dynlib: libswsscale.}

proc sws_init_context*(sws_context: ptr SwsContext; srcFilter: ptr SwsFilter;
                      dstFilter: ptr SwsFilter): cint {.importc: "sws_init_context",
    dynlib: libswsscale.}

proc sws_freeContext*(swsContext: ptr SwsContext) {.importc: "sws_freeContext",
    dynlib: libswsscale.}

proc sws_getContext*(srcW: cint; srcH: cint; srcFormat: AVPixelFormat; dstW: cint;
                    dstH: cint; dstFormat: AVPixelFormat; flags: cint;
                    srcFilter: ptr SwsFilter; dstFilter: ptr SwsFilter;
                    param: ptr cdouble): ptr SwsContext {.importc: "sws_getContext",
    dynlib: libswsscale.}

proc sws_scale*(c: ptr SwsContext; srcSlice: ptr ptr uint8_t; srcStride: ptr cint;
               srcSliceY: cint; srcSliceH: cint; dst: ptr ptr uint8_t;
               dstStride: ptr cint): cint {.importc: "sws_scale", dynlib: libswsscale.}

proc sws_scale_frame*(c: ptr SwsContext; dst: ptr AVFrame; src: ptr AVFrame): cint {.
    importc: "sws_scale_frame", dynlib: libswsscale.}

proc sws_frame_start*(c: ptr SwsContext; dst: ptr AVFrame; src: ptr AVFrame): cint {.
    importc: "sws_frame_start", dynlib: libswsscale.}

proc sws_frame_end*(c: ptr SwsContext) {.importc: "sws_frame_end", dynlib: libswsscale.}

proc sws_send_slice*(c: ptr SwsContext; slice_start: cuint; slice_height: cuint): cint {.
    importc: "sws_send_slice", dynlib: libswsscale.}

proc sws_receive_slice*(c: ptr SwsContext; slice_start: cuint; slice_height: cuint): cint {.
    importc: "sws_receive_slice", dynlib: libswsscale.}

proc sws_receive_slice_alignment*(c: ptr SwsContext): cuint {.
    importc: "sws_receive_slice_alignment", dynlib: libswsscale.}

proc sws_setColorspaceDetails*(c: ptr SwsContext; inv_table: array[4, cint];
                              srcRange: cint; table: array[4, cint]; dstRange: cint;
                              brightness: cint; contrast: cint; saturation: cint): cint {.
    importc: "sws_setColorspaceDetails", dynlib: libswsscale.}

proc sws_getColorspaceDetails*(c: ptr SwsContext; inv_table: ptr ptr cint;
                              srcRange: ptr cint; table: ptr ptr cint;
                              dstRange: ptr cint; brightness: ptr cint;
                              contrast: ptr cint; saturation: ptr cint): cint {.
    importc: "sws_getColorspaceDetails", dynlib: libswsscale.}

proc sws_allocVec*(length: cint): ptr SwsVector {.importc: "sws_allocVec",
    dynlib: libswsscale.}

proc sws_getGaussianVec*(variance: cdouble; quality: cdouble): ptr SwsVector {.
    importc: "sws_getGaussianVec", dynlib: libswsscale.}

proc sws_scaleVec*(a: ptr SwsVector; scalar: cdouble) {.importc: "sws_scaleVec",
    dynlib: libswsscale.}

proc sws_normalizeVec*(a: ptr SwsVector; height: cdouble) {.
    importc: "sws_normalizeVec", dynlib: libswsscale.}
proc sws_freeVec*(a: ptr SwsVector) {.importc: "sws_freeVec", dynlib: libswsscale.}
proc sws_getDefaultFilter*(lumaGBlur: cfloat; chromaGBlur: cfloat;
                          lumaSharpen: cfloat; chromaSharpen: cfloat;
                          chromaHShift: cfloat; chromaVShift: cfloat; verbose: cint): ptr SwsFilter {.
    importc: "sws_getDefaultFilter", dynlib: libswsscale.}
proc sws_freeFilter*(filter: ptr SwsFilter) {.importc: "sws_freeFilter",
    dynlib: libswsscale.}

proc sws_getCachedContext*(context: ptr SwsContext; srcW: cint; srcH: cint;
                          srcFormat: AVPixelFormat; dstW: cint; dstH: cint;
                          dstFormat: AVPixelFormat; flags: cint;
                          srcFilter: ptr SwsFilter; dstFilter: ptr SwsFilter;
                          param: ptr cdouble): ptr SwsContext {.
    importc: "sws_getCachedContext", dynlib: libswsscale.}

proc sws_convertPalette8ToPacked32*(src: ptr uint8_t; dst: ptr uint8_t;
                                   num_pixels: cint; palette: ptr uint8_t) {.
    importc: "sws_convertPalette8ToPacked32", dynlib: libswsscale.}

proc sws_convertPalette8ToPacked24*(src: ptr uint8_t; dst: ptr uint8_t;
                                   num_pixels: cint; palette: ptr uint8_t) {.
    importc: "sws_convertPalette8ToPacked24", dynlib: libswsscale.}

proc sws_get_class*(): ptr AVClass {.importc: "sws_get_class", dynlib: libswsscale.}
