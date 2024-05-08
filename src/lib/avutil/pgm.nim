import std/[strformat,streams]
import frame

proc clip*[T:SomeNumber|uint8|int](n:T; lower:T = low(T); upper:T = high(T)):T =
  max(lower, min(n, upper))

proc clip*(n:int; lower:int = 0; upper:int = 255):uint8 =
  max(lower, min(n, upper)).uint8

proc verticalUpsample*(data:ptr uint8;wrap,width,height:int):seq[seq[uint8]] =
  for i in 0..<height:
    var line = newSeq[uint8](width)
    #if (i mod 2) == 0:
    var mySeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
    for j in 0..<width:
      line[j] = mySeqPrev[j]
    result &= line

    #else:
    #var line = newSeq[uint8](width)      
    var mySeq = cast[ptr UncheckedArray[uint8]](cast[int](data) + (i+1) * wrap)
    #var mySeq = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
    var tmp = i + 2
    if tmp == height:
      tmp = height - 1
    var mySeqNext = cast[ptr UncheckedArray[uint8]](cast[int](data) + tmp * wrap)
    tmp = i + 3
    if tmp == height:
      tmp = height - 1    
    var mySeqNext2 = cast[ptr UncheckedArray[uint8]](cast[int](data) + tmp * wrap)      
    for j in 0..<width:
      line[j] = clip( (9 * (mySeq[j].int + mySeqNext[j].int) - 
                        (mySeqPrev[j].int + mySeqNext2[j].int) + 8) shr 4)
    result &= line
  #echo result.shape
  #echo "Height: ", result.len
    #return uSeq[j]

proc horizontalUpsample*(data:seq[seq[uint8]]):seq[seq[uint8]] =
  var height = data.len
  var width = data[0].len
  for i in 0..<height:
    var line = newSeq[uint8](width * 2)
    for j in 0..<width:
      #var mySeqPrev = cast[ptr UncheckedArray[uint8]](cast[int](data) + i * wrap)
      #for j in 0..<width:
      var d0 = data[i][j]
      var tmp = j+1
      if tmp >= width:
        tmp = width - 1
      var d1 = data[i][tmp]
      tmp = j+2
      if tmp >= width:
        tmp = width - 1
      var d2 = data[i][tmp]
      tmp = j+3
      if tmp >= width:
        tmp = width - 1
      var d3 = data[i][tmp]      
      line[2*j] = d0
      #result &= line

      line[2*j+1] = clip( (9 * (d1.int + d2.int) - 
                          (d0.int + d3.int) + 8) shr 4)

    result &= line

proc savePgm*(filename:string; frame: Frame; plane:int = 0 ) =
  #buf:ptr uint8; wrap:int; xsize:int; ysize:int; filename:string) =
  let f = newFileStream(filename, fmWrite)
  let w = frame.handle.width
  let h = frame.handle.height
  f.write(&"P5\n{w} {h}\n255\n")
  for i in 0..<h:
    f.writeData(cast[pointer](cast[int](frame.handle.data[plane]) + 
                                        i * frame.handle.linesize[plane].int), 
                w)
  f.close


proc savePgm2*(filename:string; frame: Frame; plane:int = 1) =
  var data = frame.handle.data[plane]
  var wrap = frame.handle.linesize[plane]
  var w = frame.handle.width div 2
  var h = frame.handle.height div 2
  #echo w,"x",frame.handle.width
  var data1 = verticalUpsample(data, wrap, w, h)
  #echo data1
  var data2 = horizontalUpsample(data1)

  var f = newFileStream(filename, fmWrite)
  f.write(&"P5\n{w*2} {h*2}\n255\n")
  for i in 0..<(h*2):
    for j in 0..<(w*2):
      f.write(data2[i][j])
  f.close


