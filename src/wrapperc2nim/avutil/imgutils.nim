





proc av_image_fill_max_pixsteps*(max_pixsteps: array[4, cint];
                                 max_pixstep_comps: array[4, cint];
                                 pixdesc: ptr AVPixFmtDescriptor) {.
    importc: "av_image_fill_max_pixsteps".}

proc av_image_get_linesize*(pix_fmt: AVPixelFormat; width: cint; plane: cint): cint {.
    importc: "av_image_get_linesize".}

proc av_image_fill_linesizes*(linesizes: array[4, cint]; pix_fmt: AVPixelFormat;
                              width: cint): cint {.
    importc: "av_image_fill_linesizes".}

proc av_image_fill_plane_sizes*(size: array[4, csize_t]; pix_fmt: AVPixelFormat;
                                height: cint; linesizes: array[4, ptrdiff_t]): cint {.
    importc: "av_image_fill_plane_sizes".}

proc av_image_fill_pointers*(data: array[4, ptr uint8];
                             pix_fmt: AVPixelFormat; height: cint;
                             `ptr`: ptr uint8; linesizes: array[4, cint]): cint {.
    importc: "av_image_fill_pointers".}

proc av_image_alloc*(pointers: array[4, ptr uint8]; linesizes: array[4, cint];
                     w: cint; h: cint; pix_fmt: AVPixelFormat; align: cint): cint {.
    importc: "av_image_alloc".}

proc av_image_copy_plane*(dst: ptr uint8; dst_linesize: cint;
                          src: ptr uint8; src_linesize: cint; bytewidth: cint;
                          height: cint) {.importc: "av_image_copy_plane".}

proc av_image_copy_plane_uc_from*(dst: ptr uint8; dst_linesize: ptrdiff_t;
                                  src: ptr uint8; src_linesize: ptrdiff_t;
                                  bytewidth: ptrdiff_t; height: cint) {.
    importc: "av_image_copy_plane_uc_from".}

proc av_image_copy*(dst_data: array[4, ptr uint8];
                    dst_linesizes: array[4, cint];
                    src_data: array[4, ptr uint8];
                    src_linesizes: array[4, cint]; pix_fmt: AVPixelFormat;
                    width: cint; height: cint) {.importc: "av_image_copy".}

# proc av_image_copy2*(dst_data: array[4, ptr uint8];
#                      dst_linesizes: array[4, cint];
#                      src_data: array[4, ptr uint8];
#                      src_linesizes: array[4, cint]; pix_fmt: AVPixelFormat;
#                      width: cint; height: cint) {.inline.} =
#   av_image_copy(dst_data, dst_linesizes, cast[ptr ptr uint8](src_data),
#                 src_linesizes, pix_fmt, width, height)


proc av_image_copy_uc_from*(dst_data: array[4, ptr uint8];
                            dst_linesizes: array[4, ptrdiff_t];
                            src_data: array[4, ptr uint8];
                            src_linesizes: array[4, ptrdiff_t];
                            pix_fmt: AVPixelFormat; width: cint; height: cint) {.
    importc: "av_image_copy_uc_from".}

proc av_image_fill_arrays*(dst_data: array[4, ptr uint8];
                           dst_linesize: array[4, cint]; src: ptr uint8;
                           pix_fmt: AVPixelFormat; width: cint; height: cint;
                           align: cint): cint {.importc: "av_image_fill_arrays".}

proc av_image_get_buffer_size*(pix_fmt: AVPixelFormat; width: cint;
                               height: cint; align: cint): cint {.
    importc: "av_image_get_buffer_size".}

proc av_image_copy_to_buffer*(dst: ptr uint8; dst_size: cint;
                              src_data: array[4, ptr uint8];
                              src_linesize: array[4, cint];
                              pix_fmt: AVPixelFormat; width: cint; height: cint;
                              align: cint): cint {.
    importc: "av_image_copy_to_buffer".}

proc av_image_check_size*(w: cuint; h: cuint; log_offset: cint; log_ctx: pointer): cint {.
    importc: "av_image_check_size".}

proc av_image_check_size2*(w: cuint; h: cuint; max_pixels: int64;
                           pix_fmt: AVPixelFormat; log_offset: cint;
                           log_ctx: pointer): cint {.
    importc: "av_image_check_size2".}

proc av_image_check_sar*(w: cuint; h: cuint; sar: AVRational): cint {.
    importc: "av_image_check_sar".}

proc av_image_fill_black*(dst_data: array[4, ptr uint8];
                          dst_linesize: array[4, ptrdiff_t];
                          pix_fmt: AVPixelFormat; range: AVColorRange;
                          width: cint; height: cint): cint {.
    importc: "av_image_fill_black".}

proc av_image_fill_color*(dst_data: array[4, ptr uint8];
                          dst_linesize: array[4, ptrdiff_t];
                          pix_fmt: AVPixelFormat; color: array[4, uint32];
                          width: cint; height: cint; flags: cint): cint {.
    importc: "av_image_fill_color".}
