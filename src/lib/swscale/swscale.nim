import ../../wrapperFuthark/libav
import ../avutil/image


type
  SwsContextObj* = object
    handle*:ptr structswscontext
  SwsContext* = ref SwsContextObj

proc `destroy=`*(val:SwsContext) =
  if val.handle != nil:
    sws_freeContext(val.handle)

proc newScalingContext*(src:tuple[width,height:int]; srcPixFmt:enumavpixelformat;
                    dst:tuple[width,height:int]; dstPixFmt:enumavpixelformat;
                    flags:int):SwsContext =
  ## create scaling context
  ## https://ffmpeg.org/doxygen/6.0/group__libsws.html#gaf360d1a9e0e60f906f74d7d44f9abfdd                     
  result = new SwsContext
  result.handle = swsGetContext(
                        src.width.cint, src.height.cint, srcPixFmt,
                        dst.width.cint, dst.height.cint, dstPixFmt,
                        flags.cint, nil, nil, nil)
  if result.handle == nil:
    raise newException(ValueError, "Impossible to create scale context for the conversion")  

#[

    if (!sws_ctx) {
        fprintf(stderr,
                "Impossible to create scale context for the conversion "
                "fmt:%s s:%dx%d -> fmt:%s s:%dx%d\n",
                av_get_pix_fmt_name(src_pix_fmt), src_w, src_h,
                av_get_pix_fmt_name(dst_pix_fmt), dst_w, dst_h);
        ret = AVERROR(EINVAL);
        goto end;
    }
]#

proc scale*(scalingContext:SwsContext; srcImg,dstImg:ImageBuffer) =
  var tmpSrcData     = cast[ptr UncheckedArray[ptr uint8]](srcImg.data[0].addr)
  var tmpSrcLinesize = cast[ptr UncheckedArray[cint]](srcImg.lineSize.addr)
  var tmpDstData     = cast[ptr UncheckedArray[ptr uint8]](dstImg.data[0].addr)   
  var tmpDstLinesize = cast[ptr UncheckedArray[cint]](dstImg.lineSize.addr)

  var ret = sws_scale(scalingContext.handle, 
                      tmpSrcData,  tmpSrcLinesize, 
                      0.cint, srcImg.size.height.cint, 
                      tmpDstData, tmpDstLinesize)
