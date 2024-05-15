# https://github.com/FFmpeg/FFmpeg/blob/release/6.1/doc/examples/encode_audio.c
# Generate a synthetic audio signal and encode it to an output MP2 file.
# cc  -Wall -g   -c -o encode_audio.o encode_audio.c && cc   encode_audio.o  -lavdevice -lavformat -lavfilter -lavcodec -lswresample -lswscale -lavutil  -lm -o encode_audio && ./encode_audio media/deleteme.mp2

import ffmpeg6
import std/[os,streams,math, posix, strformat]

let  
  AV_CH_FRONT_LEFT* = (1'u64 shl AV_CHAN_FRONT_LEFT.uint64)
  AV_CH_FRONT_RIGHT* = (1'u64 shl AV_CHAN_FRONT_RIGHT.uint64)
  AV_CH_LAYOUT_STEREO* = structavchannellayout_u_t(mask:(AV_CH_FRONT_LEFT or AV_CH_FRONT_RIGHT))
  AV_CHANNEL_LAYOUT_STEREO* = structavchannellayout(order:AV_CHANNEL_ORDER_NATIVE,
                                    nbchannels:2,
                                    u:AV_CH_LAYOUT_STEREO, 
                                    opaque:nil)


proc checkSampleFmt(codec:AvCodecRef; sampleFmt: enumavsampleformat): bool =
  ## check that a given sample format is supported by the encoder
  # samplefmts*: ptr enumavsampleformat_520094093
  var p:ptr enumavsampleformat = codec.handle.sample_fmts

  while p[] != AV_SAMPLE_FMT_NONE:
    if p[] == sampleFmt:
      return true
    p = cast[ptr enumavsampleformat](cast[int](p) + sizeof(enumavsampleformat))

  return false


proc selectSampleRate(codec:AvCodecRef): int = 
  ## just pick the highest supported samplerate
  var p:ptr cint
  var best_samplerate = 0

  if codec.handle.supported_samplerates == nil:
    return 44100

  #var sampleRates = cast[ptr UncheckedArray[cint]](p)
  p = codec.handle.supported_samplerates
  while p[] != 0:
    if (best_samplerate == 0) or ( abs(44100 - p[]) < abs(44100 - best_samplerate) ):
      best_samplerate = p[]
    p = cast[ptr cint](cast[int](p) + sizeof(cint))
  
  return best_samplerate
   

proc selectChannelLayout(codec: AVCodecRef; dst:CodecContext) = #ptr AVChannelLayout):int = 
  ## select layout with the highest channel count
  var best_nb_channels = 0
  if codec.handle.ch_layouts == nil:
    var ret = av_channel_layout_copy(dst.handle.ch_layout.addr, AV_CHANNEL_LAYOUT_STEREO.addr)
    if ret < 0:
      raise newException(ValueError, "failed copying channel layout")

  var p:ptr AVChannelLayout = codec.handle.ch_layouts
  var best_ch_layout:ptr AVChannelLayout
  while p.nb_channels > 0:
    var nb_channels = p.nb_channels

    if nb_channels > best_nb_channels:
      best_ch_layout   = p
      best_nb_channels = nb_channels
  
    p = cast[ptr Avchannellayout](cast[int](p) + sizeof(Avchannellayout)) 
  #dst.channelLayoutCopy()
  let ret = av_channel_layout_copy(dst.handle.ch_layout.addr, best_ch_layout)
  if ret < 0:
    raise newException(ValueError, "failed copying channel layout")
    #quit(QuitFailure)

proc main =
  let outFilename = "media/outfile.mp2"
  let codec = findEncoder(AV_CODEC_ID_MP2) 
  var c = allocContext(codec)
  c.handle.bit_rate = 64000  # put sample parameters 

  # check that the encoder supports s16 pcm input
  c.handle.sample_fmt = AV_SAMPLE_FMT_S16
  if not checkSampleFmt(codec, c.handle.sample_fmt):
    raise newException(ValueError, 
            &"Encoder does not support sample format {av_get_sample_fmt_name(c.handle.sample_fmt)}")

  # select other audio parameters supported by the encoder
  c.handle.sample_rate = selectSampleRate(codec).cint

  selectChannelLayout(codec, c)

  # open it
  open(c,codec)

  # Open File for writting
  let outFile = newFileStream(outFilename, fmWrite)

  # packet for holding encoded output
  #let pkt = newPacket()

  # frame containing input raw audio
  var frame = newFrame()
  frame.handle.nb_samples = c.handle.frame_size
  frame.handle.format     = c.handle.sample_fmt.cint
  frame.channelLayoutCopy(c)

  # allocate the data buffers
  frame.getBuffer()

  # encode a single tone sound
  var t = 0.0
  var tincr = 2.0 * PI * 440.0 / c.handle.sample_rate.float
  for i in 0..<200:
    # make sure the frame is writable -- makes a copy if the encoder
    # kept a reference internally
    frame.makeWritable()
    
    var samples = cast[ptr UncheckedArray[uint16]](frame.handle.data[0])
    for j in 0..<c.handle.frame_size:
      samples[2*j] = (sin(t) * 10000).uint16

      for k in 1..<c.handle.ch_layout.nb_channels:
        samples[2*j + k] = samples[2*j]
        t += tincr
  
    for pkt in c.encode(frame):
      outFile.writeData(pkt.handle.data, pkt.handle.size)
      av_packet_unref(pkt.handle)    
    
  # flush the encoder
  frame.handle = nil
  for pkt in c.encode(frame):
    outFile.writeData(pkt.handle.data, pkt.handle.size)
    av_packet_unref(pkt.handle) 

  outFile.close()

main()
