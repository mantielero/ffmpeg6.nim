# https://www.ffmpeg.org/doxygen/trunk/scale_video_8c-example.html
# Generate a synthetic video signal and use libswscale to perform rescaling.
import ffmpeg6
import std/streams
#include <libavutil/imgutils.h>
#include <libavutil/parseutils.h>
#include <libswscale/swscale.h>

proc fillYUVimage( data:array[4,ptr uint8]; 
                   lineSize:array[4,cint];
                   width,height,frameIndex:int) =
  var x,y:int
  # Y
  for y in 0..<height:
    for x in 0..<width:
      var tmp = cast[ptr UncheckedArray[uint8]](data[0])
      tmp[y * linesize[0] + x] = (x + y + frame_index * 3).uint8

  # Cb and Cr
  var h2 = (height/2).int
  var w2 = (width/2).int
  for y in 0..<h2:
    for x in 0..<w2:
      var tmp = cast[ptr UncheckedArray[uint8]](data[1])
      tmp[y * linesize[1] + x] = (128 + y + frame_index * 2).uint8
      tmp = cast[ptr UncheckedArray[uint8]](data[2])
      tmp[y * linesize[2] + x] = (64 + x + frame_index * 5).uint8

# ./scale_video salida.raw 800x600
# mplayer -demuxer rawvideo -rawvideo w=800:h=600:format=rgb24 salida.raw -loop 0


# proc swsgetcontext*(srcw: cint; srch: cint; srcformat: enumavpixelformat;
#                     dstw: cint; dsth: cint; dstformat: enumavpixelformat;
#                     flags: cint; srcfilter: ptr Swsfilter_520094180;
#                     dstfilter: ptr Swsfilter_520094180; param: ptr cdouble): ptr structswscontext {.
#     cdecl, importc: "sws_getContext".}

#[
  avutil.enumavpixelformat: enumavpixelformat
  imgutils.enumavpixelformat: enumavpixelformat
  avformat.enumavpixelformat: enumavpixelformat
  swscale.enumavpixelformat: enumavpixelformat

]#

proc main =
  var srcData, dstData:array[4,ptr uint8] # array[4,ptr uint8]
  var srcLinesize, dstLinesize: array[4, cint]
  var srcW = 320
  var srcH = 240
  var dstW, dstH: int
  var srcPixFmt:swscale.enumavpixelformat = Avpixfmtyuv420p # AVPixelFormat
  var dstPixFmt:swscale.enumavpixelformat = Avpixfmtrgb24   # AVPixelFormat

  let dstSize = "800x600"
  let dstFilename = "salida.raw"

  #av_parse_video_size(dst_w.addr, dst_h.addr, dstSize)
  dstW = 800
  dstH = 600
  # create scaling context
  # https://ffmpeg.org/doxygen/6.0/group__libsws.html#gaf360d1a9e0e60f906f74d7d44f9abfdd 
  var sws_ctx = swsGetContext(srcW.cint, srcH.cint, srcPixFmt,
                              dstW.cint, dstH.cint, dstPixFmt,
                              SWS_BILINEAR.cint, 
                              nil, nil, nil)
  if sws_ctx == nil:
    raise newException(ValueError, "something went wrong")

  # allocate source and destination image buffers
  # https://ffmpeg.org/doxygen/trunk/group__lavu__picture.html#ga841e0a89a642e24141af1918a2c10448
  var ret = av_image_alloc( srcData, srcLinesize,
                            srcW.cint, srcH.cint, imgutils.enumavpixelformat(srcPixFmt), 16)

  
  # buffer is going to be written to rawvideo file, no alignment
  ret = av_image_alloc( dstData, dstLinesize,
                        dstW.cint, dstH.cint, imgutils.enumavpixelformat(dst_pix_fmt), 1)#)
    # if ((ret = av_image_alloc(dst_data, dst_linesize,
    #                           dst_w, dst_h, dst_pix_fmt, 1)) < 0) {
    #     fprintf(stderr, "Could not allocate destination image\n");
    #     goto end;
    # }
  var dst_bufsize = ret

  let strm = newFileStream("salida2.raw", fmWrite)
  for i in 0..<100:
    # generate synthetic video
    fill_yuv_image(src_data, src_linesize, src_w, src_h, i)

    # convert to destination format
    var tmpSrcData = cast[ptr UncheckedArray[ptr uint8]](srcData[0].unsafeAddr)
    var tmpSrcLinesize = cast[ptr UncheckedArray[cint]](srcLinesize[0].unsafeAddr)
    var tmpDstData = cast[ptr UncheckedArray[ptr uint8]](dstData[0].unsafeAddr)   
    var tmpDstLinesize = cast[ptr UncheckedArray[cint]](dstLinesize[0].unsafeAddr)         
    var ret = sws_scale(sws_ctx, tmpSrcData,  # (const uint8_t * const*)
                        tmpSrcLinesize, 0, srcH.cint, tmpDstData, tmpDstLinesize);

    # write scaled image to file
    #fwrite(dst_data[0], 1, dst_bufsize, dst_file);
    strm.writeData( cast[pointer](tmpDstData[0]), dst_bufsize ) 

  strm.close()

main()
#[
int main(int argc, char **argv)
{
    FILE *dst_file;
    int dst_bufsize;
    struct SwsContext *sws_ctx;

    int i, ret;
 
    if (argc != 3) {
        fprintf(stderr, "Usage: %s output_file output_size\n"
                "API example program to show how to scale an image with libswscale.\n"
                "This program generates a series of pictures, rescales them to the given "
                "output_size and saves them to an output file named output_file\n."
                "\n", argv[0]);
        exit(1);
    }
    dst_filename = argv[1];
    dst_size     = argv[2];
 
    if (av_parse_video_size(&dst_w, &dst_h, dst_size) < 0) {
        fprintf(stderr,
                "Invalid size '%s', must be in the form WxH or a valid size abbreviation\n",
                dst_size);
        exit(1);
    }
 
    dst_file = fopen(dst_filename, "wb");
    if (!dst_file) {
        fprintf(stderr, "Could not open destination file %s\n", dst_filename);
        exit(1);
    }
 
    /* create scaling context */
    sws_ctx = sws_getContext(src_w, src_h, src_pix_fmt,
                             dst_w, dst_h, dst_pix_fmt,
                             SWS_BILINEAR, NULL, NULL, NULL);
    if (!sws_ctx) {
        fprintf(stderr,
                "Impossible to create scale context for the conversion "
                "fmt:%s s:%dx%d -> fmt:%s s:%dx%d\n",
                av_get_pix_fmt_name(src_pix_fmt), src_w, src_h,
                av_get_pix_fmt_name(dst_pix_fmt), dst_w, dst_h);
        ret = AVERROR(EINVAL);
        goto end;
    }
 
    /* allocate source and destination image buffers */
    if ((ret = av_image_alloc(src_data, src_linesize,
                              src_w, src_h, src_pix_fmt, 16)) < 0) {
        fprintf(stderr, "Could not allocate source image\n");
        goto end;
    }
 
    /* buffer is going to be written to rawvideo file, no alignment */
    if ((ret = av_image_alloc(dst_data, dst_linesize,
                              dst_w, dst_h, dst_pix_fmt, 1)) < 0) {
        fprintf(stderr, "Could not allocate destination image\n");
        goto end;
    }
    dst_bufsize = ret;
 
    for (i = 0; i < 100; i++) {
        /* generate synthetic video */
        fill_yuv_image(src_data, src_linesize, src_w, src_h, i);
 
        /* convert to destination format */
        sws_scale(sws_ctx, (const uint8_t * const*)src_data,
                  src_linesize, 0, src_h, dst_data, dst_linesize);
 
        /* write scaled image to file */
        fwrite(dst_data[0], 1, dst_bufsize, dst_file);
    }
 
    fprintf(stderr, "Scaling succeeded. Play the output file with the command:\n"
           "ffplay -f rawvideo -pix_fmt %s -video_size %dx%d %s\n",
           av_get_pix_fmt_name(dst_pix_fmt), dst_w, dst_h, dst_filename);
 
end:
    fclose(dst_file);
    av_freep(&src_data[0]);
    av_freep(&dst_data[0]);
    sws_freeContext(sws_ctx);
    return ret < 0;
}
]#