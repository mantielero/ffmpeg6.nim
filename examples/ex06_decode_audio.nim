# https://github.com/FFmpeg/FFmpeg/blob/master/doc/examples/decode_audio.c
# Decode data from an MP2 input file and generate a raw audio file to
# be played with ffplay.
#[
$ cc  -Wall -g   -c -o encode_audio.o encode_audio.c
$ cc   decode_audio.o  -lavdevice -lavformat -lavfilter -lavcodec -lswresample -lswscale -lavutil  -o decode_audio

$ ./decode_audio media/sample3.mp2 media/audio.raw
Warning: the sample format the decoder produced is planar (s16p). This example will output the first channel only.
Play the output audio file with the command:
ffplay -f s16le -ac 2 -ar 44100 media/audio.raw

]#
import ffmpeg6
import std/[streams, posix]

const
  AUDIO_INBUF_SIZE    = 20480
  AUDIO_REFILL_THRESH = 4096
const 
  AV_NOPTS_VALUE:int64 = 0x80000000000# -92233720368547(valor mínimo que puede almacenarse)

 
#define AVERROR_EOF   FFERRTAG( 'E','O','F',' ')
#define 	FFERRTAG(a, b, c, d)   (-(int)MKTAG(a, b, c, d))
#define MKTAG	(a,b,c,d)  ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
const
  AVERROR_EOF = -541478725


# type
#   CodecContextObj* = object
#     handle*:ptr AVCodecContext

#   CodecContextRef* = ref CodecContextObj

# proc allocContext(codec:AvCodecRef):CodecContextRef =
#   result = new CodecContextRef
#   result.handle = avcodec_alloc_context3(codec.handle)
#   if result.handle == nil:
#     raise newException(ValueError, "could not allocate audio codec context")


#[
static int get_format_from_sample_fmt(const char **fmt,
                                      enum AVSampleFormat sample_fmt)
{
    int i;
    struct sample_fmt_entry {
        enum AVSampleFormat sample_fmt; const char *fmt_be, *fmt_le;
    } sample_fmt_entries[] = {
        { AV_SAMPLE_FMT_U8,  "u8",    "u8"    },
        { AV_SAMPLE_FMT_S16, "s16be", "s16le" },
        { AV_SAMPLE_FMT_S32, "s32be", "s32le" },
        { AV_SAMPLE_FMT_FLT, "f32be", "f32le" },
        { AV_SAMPLE_FMT_DBL, "f64be", "f64le" },
    };
    *fmt = NULL;
 
    for (i = 0; i < FF_ARRAY_ELEMS(sample_fmt_entries); i++) {
        struct sample_fmt_entry *entry = &sample_fmt_entries[i];
        if (sample_fmt == entry->sample_fmt) {
            *fmt = AV_NE(entry->fmt_be, entry->fmt_le);
            return 0;
        }
    }
 
    fprintf(stderr,
            "sample format %s is not supported as output format\n",
            av_get_sample_fmt_name(sample_fmt));
    return -1;
}
]#


proc decode(decCtx: CodecContext;
            pkt: ptr AvPacket;
            f:FileStream) =
  echo "Start decoding...."
  #if decoded_frame == nil:
  var decodedFrame = av_frame_alloc()
  if decodedFrame == nil:
    raise newException(ValueError, "Could not allocate audio frame")

  # send the packet with the compressed data to the decoder
  var ret = avcodec_send_packet(dec_ctx.handle, pkt) 
  if ret < 0:
    raise newException(ValueError, "Error submitting the packet to the decoder")

  # read all the output frames (in general there may be any number of them
  while ret >= 0:
    # https://www.ffmpeg.org/doxygen/trunk/group__lavc__decoding.html#ga11e6542c4e66d3028668788a1a74217c
    ret = avcodec_receive_frame(decCtx.handle, decodedFrame) 
    #echo " ---> ", ret
    if ret == -EAGAIN or ret == AVERROR_EOF: # 	output is not available in this state - user must try to send new input
      #raise newException(ValueError, "Error during decoding")
      break

   
    elif ret < 0:  # legitimate decoding errors
      raise newException(ValueError, "Error during decoding")

    # https://ffmpeg.org/doxygen/1.0/samplefmt_8h.html#f9a51ca15301871723577c730b5865c5
    echo "Sample_fmt: ", decCtx.handle.sample_fmt # AV_SAMPLE_FMT_U8 	unsigned 8 bits

    # https://www.ffmpeg.org/doxygen/trunk/group__lavu__sampfmts.html#ga0c3c218e1dd570ad4917c69a35a6c77d
    var data_size = av_get_bytes_per_sample(decCtx.handle.sample_fmt)
    echo "Bytes per sample received: ", data_size
    if data_size < 0:
      # This should not occur, checking just for paranoia
      raise newException(ValueError, "Failed to calculate data size")
    
    echo "  Number of decompressed bytes : ", decodedFrame.nb_samples * decCtx.handle.ch_layout.nb_channels
    #echo AVERROR_EOF
    for i in 0..<decodedFrame.nb_samples:
      #echo "Number of channels : ", decCtx.handle.ch_layout.nb_channels
      for ch in 0..<decCtx.handle.ch_layout.nb_channels:
        #var channelOrigin:ptr uint8 = decodedFrame.data[ch]
        #var pos = cast[pointer]( cast[int](channelOrigin) +  data_size * i ) # 
        # f.writeData(cast[pointer](cast[int](decodedFrame.data[ch]) + data_size*i), 
        #             data_size )
        # var tmp1 = cast[uint8](cast[pointer](cast[int](decodedFrame.data[ch]) + data_size*i))
        # var tmp2 = cast[uint8](cast[int](decodedFrame.data[ch]) + data_size*i)
        #var tmp3 = cast[ptr uint8](cast[int](decodedFrame.data[ch]) + data_size*i)
        #echo tmp1, " ", tmp2, " ", tmp3[]
        f.writeData(cast[ptr uint8](cast[int](decodedFrame.data[ch]) + data_size*i), data_size )
        echo cast[ptr uint8](cast[int](decodedFrame.data[ch]) + data_size*i)[]
        #f.write(tmp3[])
        #f.writeData(pos, data_size)
        #var val = cast[uint8](pos)
        #f.write(val)

        # fwrite(frame->data[ch] + data_size*i, 1, data_size, outfile);

        
    #var ch1 = cast[ptr UncheckedArray[ptr uint8]](decodedFrame.data[ch])


    # var n = decCtx.handle.ch_layout.nb_channels * decodedFrame.nb_samples
    # var data = newSeq[uint8](n)
    # var ch0 = cast[ptr UncheckedArray[uint8]](decodedFrame.data[0])
    # var ch1 = cast[ptr UncheckedArray[uint8]](decodedFrame.data[1])
    # for i in 0..<(n div 2):
    #   data[i*2]     = ch0[i]
    #   data[i*2 + 1] = ch1[i]
    # f.writeData(data[0].addr, n)

    # f.writeData(cast[pointer](cast[int](buf) + i * wrap),xsize)
 
  echo "End decoding...."

proc main =
  let filename = "media/sample3.mp2" # https://filesamples.com/samples/audio/mp2/sample3.mp2
  let outFileName = "media/sample3.raw"

  # find the MPEG audio decoder
  var codec:AvCodecRef = findDecoder(AV_CODEC_ID_MP2) 
  var parser:ParserContextRef = newParser(codec.id)
  var c:CodecContext = allocContext(codec)
  # open it
  open(c, codec)

  var f = newFileStream(filename, fmRead)
  var outFile = newFileStream(outFileName, fmWrite)

  # decode until eof
  echo "TOTAL: ", AUDIO_INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE
  var inbuf = newSeq[uint8](AUDIO_INBUF_SIZE + AV_INPUT_BUFFER_PADDING_SIZE ) 
  var data_size = f.readData(inbuf[0].addr, AUDIO_INBUF_SIZE)
  var data = inbuf
  #var decoded_frame:ptr avcodec.AVFrame = nil
  var pkt = av_packet_alloc()
  var ini = 0  
  var remainingData = data_size - ini
  var nbytes = data_size
  while remainingData > 0:
    echo "\n\n\nINI/remainingData/inbuf.high: ", (ini, remainingData, inbuf.high) 
    var ret = av_parser_parse2(parser.handle, c.handle, 
                                pkt.data.addr, pkt.size.addr,
                                inbuf[ini].addr, remainingData.cint,
                                AV_NOPTS_VALUE, AV_NOPTS_VALUE, 0)
    if ret < 0:
      raise newException(ValueError, "error while parsing")                                  
    echo "  the number of bytes of the input bitstream used: ", ret, " bytes"
    ini += ret
    echo "  Tamaño comprimido: ", pkt.size, " bytes"
    if pkt.size > 0:
      decode(c, pkt, outfile)
    echo "  new Ini/data_size", (ini,data_size)
    remainingData = data_size - ini
    #echo "  remainingData vs AUDIO_REFILL: ", (remainingData, AUDIO_REFILL_THRESH)

    #if remainingData < 0:
    #  break

    if remainingData < AUDIO_REFILL_THRESH and remainingData > 0: # threshold used to read more data
      echo "  Need to refill!"
      # Copy the remaning data to the beginning
      for i in 0..<remainingData:
        inbuf[i] = inbuf[ini + i]
      ini = 0
      #var tmp = data_size - ini
      # cast[pointer](cast[int](inbuf[0]) + remainingData)
      var len = f.readData(inbuf[remainingData].addr, # refill without overwritting
                            AUDIO_INBUF_SIZE - remainingData)
      echo "     read from file: ", len, " bytes"
      if len >= 0:
        data_size = remainingData + len
        remainingData = data_size
        nbytes += len
      else:
        raise newException(ValueError, "why negative len?")

  echo "TOTAL bytes: ", nbytes  # I looks like the file is properly read
  # flush the decoder
  pkt.data = nil
  pkt.size = 0
  #decode(c, pkt, outfile)

  # INFO
  # print output pcm infomations, because there have no metadata of pcm
  var samplingFormat = c.handle.sample_fmt
  
  if av_sample_fmt_is_planar(samplingFormat) == 0:
    echo "Sampling format interleaved"
  elif av_sample_fmt_is_planar(samplingFormat) == 1:
    echo "Sampling format planar"

#[

 
    if (av_sample_fmt_is_planar(sfmt)) {
        const char *packed = av_get_sample_fmt_name(sfmt);
        printf("Warning: the sample format the decoder produced is planar "
               "(%s). This example will output the first channel only.\n",
               packed ? packed : "?");
        sfmt = av_get_packed_sample_fmt(sfmt);
    }
 
    n_channels = c->ch_layout.nb_channels;
    if ((ret = get_format_from_sample_fmt(&fmt, sfmt)) < 0)
        goto end;
 
    printf("Play the output audio file with the command:\n"
           "ffplay -f %s -ac %d -ar %d %s\n",
           fmt, n_channels, c->sample_rate,
           outfilename);
]#
main() 


#[


end:
    fclose(outfile);
    fclose(f);
 
    avcodec_free_context(&c);
    av_parser_close(parser);
    av_frame_free(&decoded_frame);
    av_packet_free(&pkt);
 
    return 0;
}
]#