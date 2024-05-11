# https://github.com/FFmpeg/FFmpeg/blob/release/6.1/doc/examples/decode_filter_video.c
# API example for decoding and filtering
# ./decode_filter_video media/sample-5s.mp4
import ffmpeg6
import std/[streams, strformat, posix,os, terminal]
#[
#define _XOPEN_SOURCE 600 /* for usleep */

#include <libavutil/mem.h>
]#


const
  AV_OPT_SEARCH_CHILDREN  = (1 shl 0) # #define AV_OPT_SEARCH_CHILDREN   (1 << 0)
  AVERROR_EOF = -541478725
  AV_NOPTS_VALUE:int64 = 0x80000000000# -92233720368547(valor mínimo que puede almacenarse)
  
  # libavutil/avutil.h:#define AV_TIME_BASE_Q          (AVRational){1, AV_TIME_BASE}
  AV_TIME_BASE_Q = AvRational(num:1,den:AV_TIME_BASE)

#define AV_TIME_BASE            1000000


template av_int_list_length*(list, term: untyped): untyped =
  av_int_list_length_for_size(sizeof(((list)[])).cuint, list, term.uint64)

# proc av_int_list_length*(list, term: untyped): uint {.inline.} =
#   av_int_list_length_for_size(sizeof(((list)[])).cuint, list, term.uint64)

#[
  proc avintlistlengthforsize*(elsize: cuint; list: pointer; term: uint64): cuint {.
      cdecl, importc: "av_int_list_length_for_size".}
]#

#[
/**
 * Set a binary option to an integer list.
 *
 * @param obj    AVClass object to set options on
 * @param name   name of the binary option
 * @param val    pointer to an integer list (must have the correct type with
 *               regard to the contents of the list)
 * @param term   list terminator (usually 0 or -1)
 * @param flags  search flags
 */
#define av_opt_set_int_list(obj, name, val, term, flags) \
    (av_int_list_length(val, term) > INT_MAX / sizeof(*(val)) ? \
     AVERROR(EINVAL) : \
     av_opt_set_bin(obj, name, (const uint8_t *)(val), \
                    av_int_list_length(val, term) * sizeof(*(val)), flags))
]#
const
  INT_MAX = high(int)

template av_opt_set_int_list*(obj, name, val, term, flags: untyped): untyped =
  ## Set a binary option to an integer list.
  if av_int_list_length(val, term) > INT_MAX div sizeof(((val)[])): 
    raise newException(ValueError, "something went wrong")
    #AVERROR(EINVAL) 
  else: 
    av_opt_set_bin(
      obj, name, cast[ptr uint8]((val)),
      (av_int_list_length(val, term) * sizeof(((val)[])).cuint).cint, 
      flags )

# enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };

#-------------------------
proc openInputFile(fileName:string):tuple[fmtCtx:FormatContext,videoIdx:int,decCtx:CodecContext] =
  var fmtCtx = openInput(fileName)
  fmtCtx.findStreamInfo()

  # select the video stream
  var dec = new AvCodecRef
  var ret = av_find_best_stream(fmt_ctx.handle, AVMEDIA_TYPE_VIDEO, 
                                -1, -1, dec.handle.addr, 0)
  if ret < 0:
    raise newException(ValueError, "Cannot find a video stream in the input file")
      #av_log(NULL, AV_LOG_ERROR, "Cannot find a video stream in the input file\n");

  var video_stream_index = ret

  # create decoding context
  var dec_ctx = dec.allocContext()
  if dec_ctx == nil:
    raise newException(ValueError, "AVERROR(ENOMEM)")
    #return AVERROR(ENOMEM)
  var streams = cast[ptr UncheckedArray[ptr AvStream]](fmt_ctx.handle.streams)
  var stream = streams[video_stream_index]
  var codecPar = stream.codecpar
  ret = avcodec_parameters_to_context(dec_ctx.handle, codecPar)

  # init the video decoder
  open(dec_ctx, dec)
  return (fmtCtx,video_stream_index.int, dec_ctx)

  
  

proc init_filters(fmtCtx:FormatContext; videoIdx:int; decCtx:CodecContext;
                  buffersrc_ctx,buffersink_ctx:var ptr AVFilterContext;
                  filtersDescr:string) = 
    #char args[512];
    #int ret = 0;
    let bufferSrc  = getFilterByName("buffer")
    let bufferSink = getFilterByName("buffersink")

    let outputs = newFilterInOut()
    let inputs  = newFilterInOut()

    var streams = cast[ptr UncheckedArray[ptr AvStream]](fmtCtx.handle.streams)
    var stream = streams[videoIdx]
    let time_base:AVRational      = stream.time_base #fmt_ctx->streams[video_stream_index]->time_base;
    #let pix_fmts: ptr avchromalocationenumtopos pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };
    let pixFmts = @[AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE]

    let filter_graph = newFilterGraph()
   

    # buffer video source: the decoded frames from the decoder will be inserted here.
    var w  = dec_ctx.handle.width
    var h  = dec_ctx.handle.height
    var pf = dec_ctx.handle.pix_fmt.int
    var pNum = dec_ctx.handle.sample_aspect_ratio.num
    var pDen = dec_ctx.handle.sample_aspect_ratio.den
    var args = &"video_size={w}x{h}:pix_fmt={pf}:time_base={time_base.num}/{time_base.den}:pixel_aspect={pNum}/{pDen}"


    var ret = avfilter_graph_create_filter(
                buffersrc_ctx.addr, buffersrc.handle, "in".cstring,
                args.cstring, nil, filter_graph.handle )

    if ret < 0:
      raise newException(ValueError, "Cannot create buffer source")
        # av_log(NULL, AV_LOG_ERROR, "Cannot create buffer source\n");
        # goto end;
    
    # buffer video sink: to terminate the filter chain.

    ret = avfilter_graph_create_filter(
            buffersink_ctx.addr, bufferSink.handle, "out".cstring,
            nil, nil, filter_graph.handle)

    if ret < 0:
      raise newException(ValueError, "Cannot create buffer sink")
        # av_log(NULL, AV_LOG_ERROR, "Cannot create buffer sink\n");
        # goto end;
    

    # ret = av_opt_set_int_list(buffersink_ctx, "pix_fmts".cstring, 
    #         pix_fmts[0].addr,
    #         AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN)
    ret = av_opt_set_bin(buffersink_ctx, "pix_fmts".cstring,
      cast[ptr uint8]( pix_fmts[0].addr ), 
      #cast[ptr uint8]((val)),
      ((pix_fmts.len - 1) * sizeof(pix_fmts[0])).cint, 
      AV_OPT_SEARCH_CHILDREN )
    #[
    enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };
                                       term termination ^^^^^^^^^^^^^^^
    ]#
    #[
        ret = av_opt_set_int_list(buffersink_ctx, "pix_fmts", pix_fmts,
                              AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN);
    ]#
    if ret < 0:
      raise newException(ValueError, "Cannot set output pixel format")
        # av_log(NULL, AV_LOG_ERROR, "Cannot set output pixel format\n");
        # goto end;
    

    # Set the endpoints for the filter graph. The filter_graph will
    # be linked to the graph described by filters_descr.

    # The buffer source output must be connected to the input pad of
    # the first filter described by filters_descr; since the first
    # filter input label is not specified, it is set to "in" by
    # default.

    outputs.handle.name       = av_strdup("in")
    outputs.handle.filter_ctx = buffersrc_ctx
    outputs.handle.pad_idx    = 0
    outputs.handle.next       = nil


    # The buffer sink input must be connected to the output pad of
    # the last filter described by filters_descr; since the last
    # filter output label is not specified, it is set to "out" by
    # default.

    inputs.handle.name       = av_strdup("out")
    inputs.handle.filter_ctx = buffersink_ctx
    inputs.handle.pad_idx    = 0
    inputs.handle.next       = nil

    ret = avfilter_graph_parse_ptr(filter_graph.handle, filtersDescr.cstring,
                                    inputs.handle.addr, outputs.handle.addr, nil)
    if ret < 0:
      raise newException(ValueError, "failed parsing first filter")
        #goto end;
    
    ret = avfilter_graph_config(filter_graph.handle, nil)
    if ret < 0:
      raise newException(ValueError, "failed parsing first filter")

    
    # avfilter_inout_free(inputs.addr)
    # avfilter_inout_free(outputs.addr)





proc display_frame(frame: Frame, timeBase: AVRational, lastPts:int):int =
    # int x, y;
    # uint8_t *p0, *p;
    # int64_t delay;

    if frame.handle.pts != AV_NOPTS_VALUE:
      if last_pts != AV_NOPTS_VALUE:
          # sleep roughly the right amount of time
          # usleep is in microseconds, just like AV_TIME_BASE.
          var delay = av_rescale_q(frame.handle.pts - last_pts,
                                   timeBase, AV_TIME_BASE_Q)
          if (delay > 0 and delay < 1000000):
            #echo "waiting: ", (delay/1000).cint
            os.sleep((delay/1000).cint)
            #echo "."
  
      #last_pts = frame.handle.pts
      result = frame.handle.pts
    

    # Trivial ASCII grayscale display
    var p0 = frame.handle.data[0] # Luminance
    var lineSize = frame.handle.linesize[0]
    eraseScreen()# puts("\033c");
    setCursorPos(0, 0)
    let characters = " .-+#" # from darker to lighter
    var n = 0
    for y in 0..<frame.handle.height:
      var p = cast[ptr UncheckedArray[uint8]](cast[int](p0) + y * lineSize)
      for x in 0..<frame.handle.width:
        var val = p[n] div 52 # 5 shades of gray
        stdout.write(characters[val])
        n += 1
      #p0 = frame.handle.linesize[0]
      stdout.write("\n")

    # for (y = 0; y < frame->height; y++) {
    #     p = p0;
    #     for (x = 0; x < frame->width; x++)
    #         putchar(" .-+#"[*(p++) / 52]);
    #     putchar('\n');
    #     p0 += frame->linesize[0];
    # }
    # fflush(stdout);


proc main =
  #let file = newFileStream("media/sample-5s.mp4", fmOpen)
  #[
    int ret;

    if (argc != 2) {
        fprintf(stderr, "Usage: %s file\n", argv[0]);
        exit(1);
    }
  ]#
  let frame = newFrame()
  let filtFrame = newFrame()



  let (fmtCtx,idx,decCtx) = openInputFile("media/sample-5s.mp4")


  let filterDescr = "scale=78:24,transpose=cclock"
  # other way:
  #   scale=78:24 [scl]; [scl] transpose=cclock 
  # assumes "[in]" and "[out]" to be input output pads respectively
  var buffersrc_ctx:ptr AVFilterContext  
  var buffersink_ctx:ptr AVFilterContext
  initFilters(fmtCtx, idx,decCtx,buffersrc_ctx, buffersink_ctx, filter_descr)

  # read all packets 
  let packet = newPacket()  

  var lastPts = AV_NOPTS_VALUE
  #var flag = true
  while true:
    var ret = av_read_frame(fmtCtx.handle, packet.handle)
    if ret < 0:
        break    
    
    if packet.handle.stream_index == idx:
      var ret = avcodec_send_packet(decCtx.handle, packet.handle) 
      if ret < 0:
        raise newException(ValueError, "Error while sending a packet to the decoder")

      while ret >= 0:
        var ret = avcodec_receive_frame(dec_ctx.handle, frame.handle)
        #echo ret, " ",  -EAGAIN, " ", AVERROR_EOF
        if ret == -EAGAIN or ret == AVERROR_EOF:
          break
        elif (ret < 0):
          raise newException(ValueError, "Error while receiving a frame from the decoder")
            #av_log(NULL, AV_LOG_ERROR, "Error while receiving a frame from the decoder\n");
            #goto end;
        frame.handle.pts = frame.handle.best_effort_timestamp
        #echo "PTS: ", frame.handle.pts
        # push the decoded frame into the filtergraph
        #if buffersrc_ctx == nil:
        #  echo "suuugar"
        ret = av_buffersrc_add_frame_flags(buffersrc_ctx, frame.handle, AV_BUFFERSRC_FLAG_KEEP_REF.cint)
        #echo "ok"
        if ret < 0:
          raise newException(ValueError, "Error while feeding the filtergraph")
        #     av_log(NULL, AV_LOG_ERROR, "Error while feeding the filtergraph\n");
        #     break;
        

        # pull filtered frames from the filtergraph
        while true:
          var ret = av_buffersink_get_frame(buffersink_ctx, filt_frame.handle)
          #echo "pulled: ", ret
          if (ret == -EAGAIN or ret == AVERROR_EOF):
              break
          if (ret < 0):
            raise newException(ValueError, "negative value not valid")
          
          var inputs = cast[ptr UncheckedArray[ptr AvFilterLink]](buffersink_ctx.inputs)
          lastPts = display_frame(filt_frame, inputs[0].time_base, lastPts)
          av_frame_unref(filt_frame.handle)
        
        av_frame_unref(frame.handle)        

      av_packet_unref(packet.handle)


    if ret == AVERROR_EOF:
      # signal EOF to the filtergraph
      var ret = av_buffersrc_add_frame_flags(buffersrc_ctx, nil, 0)
      if ret < 0:
        raise newException(ValueError, "Error while closing the filtergraph")
          # av_log(NULL, AV_LOG_ERROR, "Error while closing the filtergraph\n");
          # goto end;
      

      # pull remaining frames from the filtergraph
      while true:
        var ret = av_buffersink_get_frame(buffersink_ctx, filt_frame.handle)
        if ret == -EAGAIN or ret == AVERROR_EOF:
            break
        if ret < 0:
          raise newException(ValueError, "newgative value not valid")
        var inputs = cast[ptr UncheckedArray[ptr AvFilterLink]](buffersink_ctx.inputs)
        lastPts = display_frame(filt_frame, inputs[0].time_base, lastPts)
        av_frame_unref(filt_frame.handle)
      
    

main()

#[

int main(int argc, char **argv)
{
    while (1) {
        if ((ret = av_read_frame(fmt_ctx, packet)) < 0)
            break;

        if (packet->stream_index == video_stream_index) {
            ret = avcodec_send_packet(dec_ctx, packet);
            if (ret < 0) {
                av_log(NULL, AV_LOG_ERROR, "Error while sending a packet to the decoder\n");
                break;
            }

            while (ret >= 0) {
                ret = avcodec_receive_frame(dec_ctx, frame);
                if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF) {
                    break;
                } else if (ret < 0) {
                    av_log(NULL, AV_LOG_ERROR, "Error while receiving a frame from the decoder\n");
                    goto end;
                }

                frame->pts = frame->best_effort_timestamp;

                /* push the decoded frame into the filtergraph */
                if (av_buffersrc_add_frame_flags(buffersrc_ctx, frame, AV_BUFFERSRC_FLAG_KEEP_REF) < 0) {
                    av_log(NULL, AV_LOG_ERROR, "Error while feeding the filtergraph\n");
                    break;
                }

                /* pull filtered frames from the filtergraph */
                while (1) {
                    ret = av_buffersink_get_frame(buffersink_ctx, filt_frame);
                    if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
                        break;
                    if (ret < 0)
                        goto end;
                    display_frame(filt_frame, buffersink_ctx->inputs[0]->time_base);
                    av_frame_unref(filt_frame);
                }
                av_frame_unref(frame);
            }
        }
        av_packet_unref(packet);
    }
    if (ret == AVERROR_EOF) {
        /* signal EOF to the filtergraph */
        if (av_buffersrc_add_frame_flags(buffersrc_ctx, NULL, 0) < 0) {
            av_log(NULL, AV_LOG_ERROR, "Error while closing the filtergraph\n");
            goto end;
        }

        /* pull remaining frames from the filtergraph */
        while (1) {
            ret = av_buffersink_get_frame(buffersink_ctx, filt_frame);
            if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
                break;
            if (ret < 0)
                goto end;
            display_frame(filt_frame, buffersink_ctx->inputs[0]->time_base);
            av_frame_unref(filt_frame);
        }
    }

end:
    
    avcodec_free_context(&dec_ctx);
    avformat_close_input(&fmt_ctx);



    if (ret < 0 && ret != AVERROR_EOF) {
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        exit(1);
    }

    exit(0);
}

]#