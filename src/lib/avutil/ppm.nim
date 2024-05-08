import std/[strformat,streams]
import frame
import pgm

# Future improvement:
# https://superuser.com/questions/1804837/extracting-frames-with-ffmpeg-yields-low-resolution-color

proc savePpm*(filename:string;
              frame:Frame) = 
              #decCtx: ptr Avcodeccontext ) =
  var f = newFileStream(filename, fmWrite)

  
  var data = verticalUpsample(frame.handle.data[1], frame.handle.linesize[1], frame.handle.width, frame.handle.height)
  var dataU = horizontalUpsample(data)
  data = verticalUpsample(frame.handle.data[2], frame.handle.linesize[2], frame.handle.width, frame.handle.height)
  var dataV = horizontalUpsample(data)
  let w = frame.handle.width
  let h = frame.handle.height
  f.write(&"P6\n{w} {h}\n255\n")
  for i in 0..<h:
    var ySeq  = cast[ptr UncheckedArray[uint8]](cast[int](frame.handle.data[0]) + i * frame.handle.linesize[0])

    for j in 0..<w:
      # Convert from yuv444 to rgb888
      var y = ySeq[j].int
      var u = dataU[i][j].int - 128
      var v = dataV[i][j].int - 128

      let r = clip(( 298 * y           + 409 * v + 128) shr 8, 0, 255)
      let g = clip(( 298 * y - 100 * u - 208 * v + 128) shr 8, 0, 255)
      let b = clip(( 298 * y + 516 * u           + 128) shr 8, 0, 255)

      f.write(r.uint8)
      f.write(g.uint8)
      f.write(b.uint8)

  f.close



  # https://learn.microsoft.com/en-us/windows/win32/medfound/recommended-8-bit-yuv-formats-for-video-rendering
  # Chroma subsampling
  # var k1 = (i/2).int
  # var k2 = (i/2).int
  # # if decCtx.pixfmt == Avpixfmtyuv420p:
  # #   k2 = (i/4).int

  # var outCol = newSeq[uint](ysize)
  # for i in 0..<ysize:
  #   # https://learn.microsoft.com/en-us/windows/win32/medfound/recommended-8-bit-yuv-formats-for-video-rendering
  #   # Chroma subsampling
  #   var k1 = (i/2).int
  #   var k2 = (i/2).int
  #   # if decCtx.pixfmt == Avpixfmtyuv420p:
  #   #   k2 = (i/4).int
  #   var ySeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[0]) + i * wrap[0])
  #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
  #   var vSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[2]) + k2 * wrap[2]) # Red Crominance
  #   #echo wrap[2]
  #   for j in 0..<xsize:
  #     var k3 = (j/2).int
  #     var k4 = (j/2).int


    # if (i mod 2) == 0:
    #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
    # else:
    #   var uSeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + ( - 1) * wrap[1]) # Blue Crominance
    #   var uSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance
    #   var uSeqNext = cast[ptr UncheckedArray[uint8]](cast[int](buf[1]) + k1 * wrap[1]) # Blue Crominance


    #var vSeq = cast[ptr UncheckedArray[uint8]](cast[int](buf[2]) + k2 * wrap[2]) # Red Crominance
    #Cout[2*i]   = Cin[i]
    #Cout[2*i+1] = clip((9 * (Cin[i] + Cin[i+1]) - (Cin[i-1] + Cin[i+2]) + 8) >> 4);

      # var k3 = (j/2).int
      # var k4 = (j/2).int

      #var y = 1.1643*(ySeq[j].float - 0.0625)
      #var u = uSeq[k3].float - 0.5
      #var v = vSeq[k4].float - 0.5
      # var y = ySeq[j].float
      # var u = (uSeq[k3] - 128).float
      # var v = (vSeq[k4] - 128).float




      # let r = y + 1.402 * v
      # let g = y - 0.344 * u - 0.714 * v
      # let b = y + 1.772 * u
      # Convert yuv420 to yuv422


      # let r = clip(( 298 * y           + 409 * v + 128) shr 8, 0, 255)
      # let g = clip(( 298 * y - 100 * u - 208 * v + 128) shr 8, 0, 255)
      # let b = clip(( 298 * y + 516 * u           + 128) shr 8, 0, 255)      


# R = clip(( 298 * C           + 409 * E + 128) >> 8)
# G = clip(( 298 * C - 100 * D - 208 * E + 128) >> 8)
# B = clip(( 298 * C + 516 * D           + 128) >> 8)

      #var r = y + 1.5958 * v
      #var g = y - 0.39173 * u - 0.81290 * v
      #var b = y + 2.017 * u
      #var n = (j/2).int
      #var r = (1.0 * y[j].float  + 0.0 * [j].float    + 1.402 * cR[j].float ).uint8
      #var g = (1.0 * y[j].float  - 0.344136 * cB[j].float  - 0.714136 * cR[j].float).uint8
      #var b = (1.0 * y[j].float  + 1.772 * cB[j].float     + 0 * cR[j].float).uint8       

    #var tmp = (xsize / 3).int
    #var vector = cast[ptr UncheckedArray[uint8]](cast[pointer](cast[int](buf) + i * wrap))
    #for j in 0..<tmp:
    #  f.write(&"{vector[j*3]} {vector[j*3+1]} {vector[j*3+2]}\n")      