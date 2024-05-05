# Remux streams from one container format to another. Data is copied from the
# input to the output without transcoding.
import ffmpeg6
import std/[strformat,math]

#[
static void log_packet(const AVFormatContext *fmt_ctx, const AVPacket *pkt, const char *tag)
{
    AVRational *time_base = &fmt_ctx->streams[pkt->stream_index]->time_base;

    printf("%s: pts:%s pts_time:%s dts:%s dts_time:%s duration:%s duration_time:%s stream_index:%d\n",
           tag,
           av_ts2str(pkt->pts), av_ts2timestr(pkt->pts, time_base),
           av_ts2str(pkt->dts), av_ts2timestr(pkt->dts, time_base),
           av_ts2str(pkt->duration), av_ts2timestr(pkt->duration, time_base),
           pkt->stream_index);
}
]#





proc findStreamInfo*(formatContext:FormatContext) =
  var ret = avformat_find_stream_info(formatContext.handle, nil)
  if ret < 0:
    raise newException(ValueError, "failed to retrieve input stream information")


proc isFinite*(val:float):bool =
  if val.classify != fcNaN and val.classify != fcInf:
    return true
  return false

proc toTime*[T:SomeInteger](time:T; timeBase:AvRational):float =
  return timeBase.num / timeBase.den * time.float


#------
proc log_packet(fmtCtx:FormatContext; pkt:PacketRef; tag:string) =
  echo "Entering 'log_packet'"
  var streams = cast[ptr UncheckedArray[ptr AvStream]](fmtCtx.handle.streams)
  var tmp =  streams[pkt.handle.stream_index]
  if tmp == nil:
    raise newException(ValueError, "found a 'nil' stream")
  if streams[pkt.handle.stream_index] == nil:
    raise newException(ValueError, &"streams in format context do not have index: {pkt.handle.stream_index}")
  echo "  INDEX: ", pkt.handle.stream_index
  var tmp2 = streams[pkt.handle.stream_index]
  var tb = tmp2.time_base
  echo "  OK"
  echo typeof(tmp2.time_base)
  #echo tmp2 == nil
  #echo tmp2.time_base == nil
  var num = tmp2.time_base.num
  var den = tmp2.time_base.den
  echo " ok 2"
  var timeBase = cast[AvRational](streams[pkt.handle.stream_index].time_base)
  #echo timeBase.den
  #echo timeBase.num
  #let timeBaseFloat = timeBase.num / timeBase.den
  #let val = timeBase.num / timeBase.den * pkt.handle.pts.float
  #let logVal = floor(log10(abs(val)))
  #let precision = if isFinite(logVal) and logVal < 0: -int(logVal) + 5 else: 6
  #echo precision
  let pts = pkt.handle.pts
  let dts = pkt.handle.dts
  var cad = &"{tag}: pts:{pts: >6.6} "
  cad &= &"{tag}: pts:{pts: >6.6} pts_time:{toTime(pts, timeBase): >6.3} "
  cad &= &"dts:{dts: >6.6} dts_time:{toTime(dts, timeBase): >6.3} "
  echo cad
    # printf("%s: pts:%s pts_time:%s dts:%s dts_time:%s duration:%s duration_time:%s stream_index:%d\n",
    #        tag,
    #        av_ts2str(pkt->pts), av_ts2timestr(pkt->pts, time_base),
    #        av_ts2str(pkt->dts), av_ts2timestr(pkt->dts, time_base),
    #        av_ts2str(pkt->duration), av_ts2timestr(pkt->duration, time_base),
    #        pkt->stream_index);
#[
  imgutils.Avrational: Avrational
  mathematics.Avrational: Avrational
  avformat.Avrational: Avrational
  avutil.Avrational: Avrational
  swscale.Avrational: Avrational
  avcodec.Avrational: Avrational
]#

#[
static void log_packet(const AVFormatContext *fmt_ctx, const AVPacket *pkt, const char *tag)
{
    AVRational *time_base = &fmt_ctx->streams[pkt->stream_index]->time_base;

    printf("%s: pts:%s pts_time:%s dts:%s dts_time:%s duration:%s duration_time:%s stream_index:%d\n",
           tag,
           av_ts2str(pkt->pts), av_ts2timestr(pkt->pts, time_base),
           av_ts2str(pkt->dts), av_ts2timestr(pkt->dts, time_base),
           av_ts2str(pkt->duration), av_ts2timestr(pkt->duration, time_base),
           pkt->stream_index);
}  
]#


proc main =
  let inputFilename = "media/sample-5s.mp4"
  let outputFilename = "media/sample-5s.mkv"
#[
    const AVOutputFormat *ofmt = NULL;
    AVFormatContext *ifmt_ctx = NULL, *ofmt_ctx = NULL;
    AVPacket *pkt = NULL;
    const char *in_filename, *out_filename;
    int ret, i;
    int stream_index = 0;
    int *stream_mapping = NULL;
    int stream_mapping_size = 0;

    if (argc < 3) {
        printf("usage: %s input output\n"
               "API example program to remux a media file with libavformat and libavcodec.\n"
               "The output format is guessed according to the file extension.\n"
               "\n", argv[0]);
        return 1;
    }

    in_filename  = argv[1];
    out_filename = argv[2];
]#
  let pkt = newPacket()
  let formatContext = openInput(inputFilename)
  findStreamInfo(formatContext)


  av_dump_format(formatContext.handle, 0.cint, inputFilename.cstring, 0.cint)

  let outFmtCtx = allocOutputContext(outputFilename)

  # total number of streams
  let stream_mapping_size = formatContext.streamsNumber

  #var streamMapping:ptr int = nil
  #streamMapping = cast[ptr int](avutil.av_calloc(stream_mapping_size.csize_t, sizeof(streamMapping[]).csize_t))
  var streamMapping = newSeq[int](stream_mapping_size)

  #if streamMapping == nil:
  #  raise newException(ValueError, "this is an error")
  # stream_mapping = av_calloc(stream_mapping_size, sizeof(*stream_mapping));
  # if (!stream_mapping) {
  #     ret = AVERROR(ENOMEM);
  #     goto end;
  # }

  var outFormat = outFmtCtx.handle.oformat
  echo "OUT FOTMAT: ", outFormat[]

  #var tmpStreamMapping = cast[ptr UncheckedArray[int]](streamMapping)
  var stream_index = 0
  for i in 0..<formatContext.streamsNumber:
    echo "Stream format #",i
    var tmpStreams = cast[ptr UncheckedArray[ptr AvStream]](formatContext.handle.streams)
    var inStream = tmpStreams[i]
    var inCodecParameters = inStream.codecpar  # ok
    
    var ct = inCodecParameters.codec_type
    if ct != AVMEDIA_TYPE_AUDIO and ct != AVMEDIA_TYPE_VIDEO and ct != AVMEDIA_TYPE_SUBTITLE:
      #tmpStreamMapping[i] = -1
      streamMapping[i] = -1 # When not audio, video or subtitle.
      continue

    streamMapping[i] = stream_index
    stream_index += 1
    # https://ffmpeg.org/doxygen/trunk/group__lavf__core.html#gaf2c94216a6a19144e86cac843a0a4409
    # Add a new stream to a media file.
    var outStream = avformat_new_stream(outFmtCtx.handle, nil)
    if outStream == nil:
      raise newException(ValueError, "failed allocating output stream")

    var ret = avcodec_parameters_copy(outStream.codecpar, inCodecParameters)
    if (ret < 0):
      raise newException(ValueError, "Failed to copy codec parameters")

    outStream.codecpar.codec_tag = 0

    av_dump_format(outFmtCtx.handle, 0, outputFilename.cstring, 1)


  # echo outFormat.flags
  # echo AVFMT_NOFILE
  # echo outFormat.flags and AVFMT_NOFILE
  if (outFormat.flags and AVFMT_NOFILE) == 0:  # (!(ofmt->flags & AVFMT_NOFILE))
    # https://ffmpeg.org/doxygen/trunk/avio_8c.html#ab1b99c5b70aa59f15ab7cd4cbb40381e
    var ret = avio_open(outFmtCtx.handle.pb.addr, outputFilename.cstring, AVIO_FLAG_WRITE)
    if ret < 0:
      raise newException(ValueError, &"Could not open output file '{outputFilename}'")

  # https://ffmpeg.org/doxygen/trunk/group__lavf__encoding.html#ga18b7b10bb5b94c4842de18166bc677cb
  # Allocate the stream private data and write the stream header to an output media file.
  var ret = avformat_write_header(outFmtCtx.handle, nil)
  if ret < 0:
    raise newException(ValueError, "Error occurred when opening output file")

  while true:
    var ret = av_read_frame(formatContext.handle, cast[ptr AvPacket](pkt.handle))
    if ret < 0:
      break

    var inStreams = cast[ptr UncheckedArray[ptr AVStream]](formatContext.handle.streams)
    echo "LOOP > Pkt > stream_index: ", pkt.handle.stream_index
    var inStream = inStreams[pkt.handle.stream_index]
    if pkt.handle.stream_index >= stream_mapping_size or
       streamMapping[pkt.handle.stream_index] < 0:
        av_packet_unref(pkt.handle)
        echo " UNREF DONE"
        continue

    var outStreams = cast[ptr UncheckedArray[ptr AVStream]](outFmtCtx.handle.streams)
    pkt.handle.stream_index = streamMapping[pkt.handle.stream_index].cint
    var outStream = outStreams[pkt.handle.stream_index]
    log_packet(formatContext, pkt, "in")


    # copy packet
    # https://ffmpeg.org/doxygen/trunk/group__lavc__packet.html#gae5c86e4d93f6e7aa62ef2c60763ea67e
    # av_packet_rescale_ts(pkt, in_stream->time_base, out_stream->time_base);
    av_packet_rescale_ts(cast[ptr AvPacket](pkt.handle), 
                         inStream.time_base, outStream.time_base);
    pkt.handle.pos = -1
    #log_packet(outFmtCtx.handle, pkt.handle, "out".cstring)

    ret = av_interleaved_write_frame(outFmtCtx.handle, cast[ptr AvPacket](pkt.handle))
    # pkt is now blank (av_interleaved_write_frame() takes ownership of
    # its contents and resets pkt), so that no unreferencing is necessary.
    # This would be different if one used av_write_frame(). */
    if ret < 0:
      raise newException(ValueError, "Error muxing packet")
  
  ret = av_write_trailer(outFmtCtx.handle)
        
#[
    while (1) {
        AVStream *in_stream, *out_stream;

        ret = av_read_frame(ifmt_ctx, pkt);
        if (ret < 0)
            break;

        in_stream  = ifmt_ctx->streams[pkt->stream_index];
        if (pkt->stream_index >= stream_mapping_size ||
            stream_mapping[pkt->stream_index] < 0) {
            av_packet_unref(pkt);
            continue;
        }

        pkt->stream_index = stream_mapping[pkt->stream_index];
        out_stream = ofmt_ctx->streams[pkt->stream_index];
        log_packet(ifmt_ctx, pkt, "in");

        /* copy packet */
        av_packet_rescale_ts(pkt, in_stream->time_base, out_stream->time_base);
        pkt->pos = -1;
        log_packet(ofmt_ctx, pkt, "out");

        ret = av_interleaved_write_frame(ofmt_ctx, pkt);
        /* pkt is now blank (av_interleaved_write_frame() takes ownership of
         * its contents and resets pkt), so that no unreferencing is necessary.
         * This would be different if one used av_write_frame(). */
        if (ret < 0) {
            fprintf(stderr, "Error muxing packet\n");
            break;
        }
    }

    av_write_trailer(ofmt_ctx);
]#

main()

#[
#include <libavutil/mem.h>
#include <libavutil/timestamp.h>
#include <libavformat/avformat.h>


int main(int argc, char **argv)
{





end:
    av_packet_free(&pkt);

    avformat_close_input(&ifmt_ctx);

    /* close output */
    if (ofmt_ctx && !(ofmt->flags & AVFMT_NOFILE))
        avio_closep(&ofmt_ctx->pb);
    avformat_free_context(ofmt_ctx);

    av_freep(&stream_mapping);

    if (ret < 0 && ret != AVERROR_EOF) {
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        return 1;
    }

    return 0;
}

]#