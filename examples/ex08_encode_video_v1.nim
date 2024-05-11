# https://github.com/FFmpeg/FFmpeg/blob/release/6.1/doc/examples/encode_video.c
# Generate synthetic video data and encode it to an output file.
import ffmpeg6
import std/[os,strformat,streams, posix]

const
  AVERROR_EOF = -541478725

proc encode*(encCtx:CodecContext; frame:Frame; pkt:PacketRef; outFile:FileStream) =
  # send the frame to the encoder
  if frame.handle != nil:
    echo &"Send frame {frame.handle.pts}"
  
  sendFrame(frame,encCtx)
  
  while true:
    var ret = avcodec_receive_packet(encCtx.handle, pkt.handle)
    if ret == -EAGAIN or ret == AVERROR_EOF:
      break
    elif ret < 0:
      raise newException(ValueError, "error during encoding")

    echo &"Write packet {pkt.handle.pts} (size={pkt.handle.size: >5.5})"
    outFile.writeData(pkt.handle.data, pkt.handle.size)
    av_packet_unref(pkt.handle)


proc fillYUVimage( frame:Frame; 
                   codecContext:CodecContext;
                   frameIndex:int) =

  let data = frame.handle.data
  let lineSize = frame.handle.linesize
  let width  = codecContext.handle.width.int
  let height = codecContext.handle.height.int
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

proc main =
  #var filename = "/home/jose/Vídeos/Chimera-AV1-10bit-1920x1080-6191kbps.mp4"
  if paramCount() != 2:
    echo &"""Usage: {paramStr(0)} <output file> <codec name>
For example:
  ex08_encode_video.nim media/deleteme.mp4 libx264

    """
    quit(QuitFailure)
  
  let outFileName = paramStr(1)
  let codecName = paramStr(2)

  # Find codec by name
  let codec = findEncoderByName(codecName)
  let c = codec.allocContext  # Maybe it should be newCodec
  let pkt = newPacket()

  
  c.handle.bit_rate = 400000 # Put sample parameters
  # resolution must be multiple of two
  c.handle.width = 352
  c.handle.height = 288

  # frames per sencond
  c.handle.time_base = AvRational(num:1,den:25)
  c.handle.framerate = AvRational(num:25,den:1)

  # emit one intra frame every ten frames
  # check frame pict_type before passing frame
  # to encoder, if frame->pict_type is AV_PICTURE_TYPE_I
  # then gop_size is ignored and the output of encoder
  # will always be I frame irrespective to gop_size
  c.handle.gop_size = 10
  c.handle.max_b_frames = 1
  c.handle.pix_fmt = enumavpixelformat(0) #AV_PIX_FMT_YUV420P 
  #c.handle.pix_fmt = avcodec.enumavpixelformat(AV_PIX_FMT_YUV420P)#.enumavpixelformat
  echo c.handle.pix_fmt.int


  echo codec.id  # Avcodecidh264
  if codec.id == AV_CODEC_ID_H264:
    var ret = av_opt_set(c.handle.priv_data, "preset".cstring, "slow".cstring, 0.cint)

  # open it
  open(c, codec)

  # Open File
  var outFile = newFileStream(outFileName, fmWrite)

  var frame = newFrame()

  frame.handle.format = c.handle.pix_fmt.cint
  frame.handle.width  = c.handle.width
  frame.handle.height = c.handle.height

  frame.getBuffer()

  # Encode 1sec video
  for i in 0..<25:
    #[
    Make sure the frame data is writable.
    On the first round, the frame is fresh from av_frame_get_buffer()
    and therefore we know it is writable.
    But on the next rounds, encode() will have called
    avcodec_send_frame(), and the codec may have kept a reference to
    the frame in its internal structures, that makes the frame
    unwritable.
    av_frame_make_writable() checks that and allocates a new buffer
    for the frame only if necessary.
    ]#
    var ret = av_frame_make_writable(frame.handle)
    if ret < 0:
      quit(QuitFailure)

    # Prepare a dummy image.
    # In real code, this is where you would have your own logic for
    # filling the frame. FFmpeg does not care what you put in the
    # frame.

    # Y (luminance)
    fill_yuv_image(frame, c, i)
    frame.handle.pts = i
    encode(c, frame, pkt, outFile)


  # flush the encoder
  frame.handle = nil
  encode(c, frame, pkt, outFile);


  # Add sequence end code to have a real MPEG file.
  # It makes only sense because this tiny examples writes packets
  # directly. This is called "elementary stream" and only works for some
  # codecs. To create a valid file, you usually need to write packets
  # into a proper file format or protocol; see mux.c.
  var encoderFOURCC = [ 0, 0, 1, 0xb7 ]

  if (codec.handle.id == AV_CODEC_ID_MPEG1VIDEO or codec.handle.id == AV_CODEC_ID_MPEG2VIDEO):
    outFile.writeData(encoderFOURCC[0].addr, encoderFOURCC.len)
  outFile.close()

main()


#[

int main(int argc, char **argv)
{




]#