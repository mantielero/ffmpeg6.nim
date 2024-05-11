import ../lib/ffmpeg
import ../wrapperFuthark/libav
import std/sequtils

type
  ContainerObj* = object of RootObj
    formatContext*:FormatContext
  Container* = ref ContainerObj
  
  ContainerStream* = object of Container
    stream*: StreamRef
  
  # ContainerStreams* = object of Container
  #   streams*: seq[StreamRef]

  #tuple[formatContext:FormatContext;stream:StreamRef]


proc openAV*(fname:string):Container =
  ## opens any media file
  result = new Container
  result.formatContext = openInput(fname)


# Streams
proc codecType(cs:ContainerStream):enumAVMediaType =
  return cs.stream.handle.codecpar.codec_type


iterator videoStreams*(c:Container):ContainerStream =
  for s in c.formatContext.streams:
    if s.handle.codecpar.codec_type == AVMEDIA_TYPE_VIDEO:
      yield ContainerStream(formatContext:c.formatContext, stream:s)

iterator audioStreams*(c:Container):ContainerStream =
  for s in c.formatContext.streams:
    if s.handle.codecpar.codec_type == AVMEDIA_TYPE_AUDIO:
      yield ContainerStream(formatContext:c.formatContext, stream:s)

iterator subtitleStreams*(c:Container):ContainerStream =
  for s in c.formatContext.streams:
    if s.handle.codecpar.codec_type == AVMEDIA_TYPE_SUBTITLE:
      yield ContainerStream(formatContext:c.formatContext, stream:s)

proc video*(c:Container):seq[ContainerStream] =
  return c.videoStreams.toSeq


proc audio*(c:Container):seq[ContainerStream] =
  return c.audioStreams.toSeq

proc subtitle*(c:Container):seq[ContainerStream] =
  return c.subtitleStreams.toSeq

# Custom Filters
proc codecContext*(cs: ContainerStream):CodecContext =
  return allocContext(findDecoder(cs.stream.handle.codecpar.codec_id))


proc onlyKeyframes*(cs:ContainerStream):ContainerStream {.discardable.} =
  cs.codecContext.handle.skip_frame = AVDISCARD_NONKEY
  return cs


iterator getFrames*(cs: ContainerStream): Frame =
  var codec  = findDecoder(cs.stream.handle.codecpar.codec_id)  # codec
  #var parser = newParser(codec.id)   # parser
  var c      = allocContext(codec)   # CodecContext
  var ret = avcodec_parameters_to_context(c.handle, cs.stream.handle.codecpar)
  if ret < 0:
    raise newException(ValueError, "failed copying parameters from stream to codec context")

  # open it
  open(c, codec)
  var n = 0
  for pkt in cs.formatContext.getPackets(): # extract the packets from the container
    if pkt.handle.streamindex == cs.stream.handle.index:
      #echo cs.stream.handle.codecpar.width
      # echo stream.handle.codecpar.height      
      # echo pkt.handle.streamindex, " - ", stream.handle.index
      # echo codec.id
      var frame = pkt.decode(c) #  
      if frame != nil:
        frame.index = n
        n += 1
        yield frame

proc frame*(cs:ContainerStream):seq[Frame] =
  cs.getFrames.toSeq

# av_read_frame: https://ffmpeg.org/doxygen/trunk/group__lavf__decoding.html#ga4fdb3084415a82e3810de6ee60e46a61
# av_parser_parse2: https://ffmpeg.org/doxygen/trunk/group__lavc__parsing.html#ga691ca0258e91f99297e7726f56d8c247

#[
  for pkt in f.getPackets2(parser, c):
    var frame = pkt.getFrame(c)
    #echo frame.handle.nb_samples
    decode2(frame,c, outfile)
]#

#[
  for pkt in f.getPackets(parser, c):
    var frame = pkt.decode(c)
]#

#[

pkt + codecContxt --> Frame (avutil/packet decode or getFrame or decode2)
]#