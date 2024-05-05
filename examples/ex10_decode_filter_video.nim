# https://github.com/FFmpeg/FFmpeg/blob/release/6.1/doc/examples/decode_filter_video.c
# API example for decoding and filtering
# ./decode_filter_video media/sample-5s.mp4
import ffmpeg6
import std/[streams]
#[
#define _XOPEN_SOURCE 600 /* for usleep */

#include <libavutil/mem.h>
]#


#[
static AVFormatContext *fmt_ctx;
static AVCodecContext *dec_ctx;
AVFilterContext *buffersink_ctx;
AVFilterContext *buffersrc_ctx;
AVFilterGraph *filter_graph;
static int video_stream_index = -1;
static int64_t last_pts = AV_NOPTS_VALUE;
]#

const
  AV_OPT_SEARCH_CHILDREN  = (1 shl 0) # #define AV_OPT_SEARCH_CHILDREN   (1 << 0)

template av_int_list_length*(list, term: untyped): untyped =
  av_int_list_length_for_size(sizeof(((list)[])).cuint, list, term.uint64)


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
  if av_int_list_length(val, term) > INT_MAX div sizeof(((val)[])): 
    raise newException(ValueError, "something went wrong")
    #AVERROR(EINVAL) 
  else: 
    av_opt_set_bin(
      obj, name, cast[ptr uint8]((val)),
      (av_int_list_length(val, term) * sizeof(((val)[])).cuint).cint, 
      flags )


#-------------------------
proc openInputFile(fileName:string):tuple[fmtCtx:FormatContext,videoIdx:int] =
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
  return (fmtCtx,video_stream_index.int)

  

proc init_filters(fmtCtx:FormatContext; videoIdx:int; filtersDescr:string) = 
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
    # snprintf(args, sizeof(args),
    #         "video_size=%dx%d:pix_fmt=%d:time_base=%d/%d:pixel_aspect=%d/%d",
    #         dec_ctx->width, dec_ctx->height, dec_ctx->pix_fmt,
    #         time_base.num, time_base.den,
    #         dec_ctx->sample_aspect_ratio.num, dec_ctx->sample_aspect_ratio.den);
    var buffersrc_ctx:ptr AVFilterContext
    var args:cstring = ""
    var ret = avfilter_graph_create_filter(
                buffersrc_ctx.addr, buffersrc.handle, "in".cstring,
                args, nil, filter_graph.handle )
    if ret < 0:
      raise newException(ValueError, "Cannot create buffer source")
        # av_log(NULL, AV_LOG_ERROR, "Cannot create buffer source\n");
        # goto end;
    
    # buffer video sink: to terminate the filter chain.
    var buffersink_ctx:ptr AVFilterContext
    ret = avfilter_graph_create_filter(buffersink_ctx.addr, bufferSink.handle, "out".cstring,
                                       nil, nil, filter_graph.handle)
    if ret < 0:
      raise newException(ValueError, "Cannot create buffer sink")
        # av_log(NULL, AV_LOG_ERROR, "Cannot create buffer sink\n");
        # goto end;
    

    ret = av_opt_set_int_list(buffersink_ctx, "pix_fmts".cstring, 
            pix_fmts[0].addr,
            AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN)
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




#[
static void display_frame(const AVFrame *frame, AVRational time_base)
{
    int x, y;
    uint8_t *p0, *p;
    int64_t delay;

    if (frame->pts != AV_NOPTS_VALUE) {
        if (last_pts != AV_NOPTS_VALUE) {
            /* sleep roughly the right amount of time;
             * usleep is in microseconds, just like AV_TIME_BASE. */
            delay = av_rescale_q(frame->pts - last_pts,
                                 time_base, AV_TIME_BASE_Q);
            if (delay > 0 && delay < 1000000)
                usleep(delay);
        }
        last_pts = frame->pts;
    }

    /* Trivial ASCII grayscale display. */
    p0 = frame->data[0];
    puts("\033c");
    for (y = 0; y < frame->height; y++) {
        p = p0;
        for (x = 0; x < frame->width; x++)
            putchar(" .-+#"[*(p++) / 52]);
        putchar('\n');
        p0 += frame->linesize[0];
    }
    fflush(stdout);
}
]#


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
  let packet = newPacket()


  let (fmtCtx,idx) = openInputFile("media/sample-5s.mp4")


  let filterDescr = "scale=78:24,transpose=cclock"
  # other way:
  #   scale=78:24 [scl]; [scl] transpose=cclock 
  # assumes "[in]" and "[out]" to be input output pads respectively
  initFilters(fmtCtx, idx, filter_descr)

main()

#[

int main(int argc, char **argv)
{

    if ((ret = open_input_file(argv[1])) < 0)
        goto end;
    if ((ret = init_filters(filter_descr)) < 0)
        goto end;

    /* read all packets */
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
    avfilter_graph_free(&filter_graph);
    avcodec_free_context(&dec_ctx);
    avformat_close_input(&fmt_ctx);
    av_frame_free(&frame);
    av_frame_free(&filt_frame);
    av_packet_free(&packet);

    if (ret < 0 && ret != AVERROR_EOF) {
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        exit(1);
    }

    exit(0);
}

]#