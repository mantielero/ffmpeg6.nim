# Remux streams from one container format to another. Data is copied from the
# input to the output without transcoding.
import ffmpeg6
import std/[strformat,math, os]

proc isFinite*(val:float):bool =
  if val.classify != fcNaN and val.classify != fcInf:
    return true
  return false

proc toTime*[T:SomeInteger](time:T; timeBase:AvRational):float =
  return timeBase.num / timeBase.den * time.float

proc logPacket(fmtCtx:FormatContext; pkt:PacketRef; tag:string) =
  let idx = pkt.handle.stream_index
  var stream =  fmtCtx.getStream(idx)
  var timeBase = cast[AvRational](stream.handle.time_base)

  let pts = pkt.handle.pts
  let dts = pkt.handle.dts
  var cad = &"{tag}: pts:{pts: >6.6} "
  cad &= &"pts_time:{toTime(pts, timeBase): >6.3} "
  cad &= &"dts:{dts: >6.6} dts_time:{toTime(dts, timeBase): >6.3} "
  cad &= &"stream_index:{idx}"
  echo cad

proc main =
  # Input and output files definition
  var inputFilename = "media/sample-5s.mp4"
  var outputFilename = "media/sample-5s.mkv"
  if paramCount() != 2:
    var executable = paramStr(0).splitPath.tail
    echo &"""usage: ./{executable} <input file> <output file>
example: ./{executable} media/sample-5s.mp4 media/sample-5s.mkv
API example program to remux a media file with libavformat and libavcodec.
The output format is guessed according to the file extension.
"""
  else:
    inputFilename  = paramStr(1)
    outputFilename = paramStr(2)  

  # Input context: opens input file getting the format context
  let formatContext = openInput(inputFilename)
  findStreamInfo(formatContext)  # what it does?

  echo "---- Dump Input Format ----"
  dumpInputFormat(formatContext, inputFilename)
  echo "---------------------------"

  # Output context
  let outFmtCtx = allocOutputContext(outputFilename)
  var outFormat = outFmtCtx.handle.oformat
  echo "---- Dump Output Format ----"
  echo "OUT FOTMAT: ", outFormat[]
  echo "---------------------------"  

  # Lets get the mapping from the input file to the output file
  # We are only interested on: video, audio and subtitle streams
  
  # - total number of streams
  let stream_mapping_size = formatContext.streamsNumber
  var streamMapping = newSeq[int](stream_mapping_size)
  
  var streamIndex = 0
  var n = 0
  for inStream in formatContext.streams():
    var ct = inStream.handle.codecpar.codec_type
    if ct in @[AVMEDIA_TYPE_AUDIO, AVMEDIA_TYPE_VIDEO, AVMEDIA_TYPE_SUBTITLE]:
      streamMapping[n] = streamIndex
      streamIndex += 1
      
      var outStream = newStream(outFmtCtx)    # create a new output stream
      outStream.copyParameters(inStream)      # copy parameters from the input stream
      outStream.handle.codecpar.codec_tag = 0 # ??
      echo "--- Dump output format ---"
      dumpOutputFormat(outFmtCtx, outputFilename) 
      echo "--------------------------"

    else:
      streamMapping[n] = -1 # when not audio, video or subtitle.

    n += 1

  # Open the output file
  if (outFormat.flags and AVFMT_NOFILE) == 0:  # (!(ofmt->flags & AVFMT_NOFILE))
    outFmtCtx.openOutputFile(outputFilename)
  
  # Allocate the stream private data and write the stream header to an output media file.
  outFmtCtx.writeHeader()
  
  var ret = avformat_write_header(outFmtCtx.handle, nil)
  if ret < 0:
    raise newException(ValueError, "Error occurred when opening output file")
  
  for pkt in formatContext.getPackets():
    var inStream = formatContext.getStream(pkt)
    if pkt.handle.stream_index >= stream_mapping_size or
       streamMapping[pkt.handle.stream_index] < 0: # not video, audio or subtitle
        av_packet_unref(pkt.handle)
        continue  # goes to next iteration

    pkt.handle.stream_index = streamMapping[pkt.handle.stream_index].cint
    var outStream = outFmtCtx.getStream(pkt)
    logPacket(formatContext, pkt, "in")

    # copy packet (rebase time info)
    packetRescaleTS(pkt,inStream, outStream)
    pkt.handle.pos = -1
    logPacket(outFmtCtx, pkt, "out")

    interleavedWriteFrame(outFmtCtx, pkt)
    # pkt is now blank (av_interleaved_write_frame() takes ownership of
    # its contents and resets pkt), so that no unreferencing is necessary.
    # This would be different if one used av_write_frame().

  outFmtCtx.writeTrailer()

main()
