import ../../wrapperFuthark/libav
import std/[strutils,parseutils,strformat,streams]

type
  ImageBufferObj* = object
    data*:array[4,ptr uint8]
    lineSize*:array[4, cint]
    size*:tuple[width,height:int]
    bufferSize*:int
  ImageBuffer* = ref ImageBufferObj

proc newImageBuffer*( size:tuple[width,height:int];
                pixelFormat:enumavpixelformat; 
                sizeAlignment:int):ImageBuffer =
  ## create image buffer
  # allocate source and destination image buffers
  # https://ffmpeg.org/doxygen/trunk/group__lavu__picture.html#ga841e0a89a642e24141af1918a2c10448  
  result = new ImageBuffer
  var ret = av_image_alloc(result.data, result.lineSize,
                           size.width.cint, size.height.cint, 
                           pixelFormat, 
                           sizeAlignment.cint) # align	the value to use for buffer size alignment
  if ret < 0:
    raise newException(ValueError, "Could not allocate source image")
  result.bufferSize = ret.int
  result.size = size
  echo ret
    # /* allocate source and destination image buffers */
    # if ((ret = av_image_alloc(src_data, src_linesize,
    #                           src_w, src_h, src_pix_fmt, 16)) < 0) {
    #     fprintf(stderr, "Could not allocate source image\n");
    #     goto end;
    # }



proc parseVideoSize*(val:string):tuple[width,height:int] =
  ## parse from "800x600" into a tuple: (width:800,heigth:600)
  if not val.contains('x'):
    raise newException(ValueError, "at least one 'x' shall be present; the value should look like '800x600'")
  var tmp = val.split('x')
  if len(tmp) > 2:
    raise newException(ValueError, "more that two 'x' present; the value should look like '800x600'")
  var width,height:int
  discard parseInt(tmp[0], width)
  discard parseInt(tmp[1], height)
  if &"{width}x{height}" != val:
    raise newException(ValueError, &"something went wrong while parsing: got '{width}x{height}', expected: '{val}'")
  return (width,height)

proc write*(f:FileStream; img:ImageBuffer) =
  # tmpDstData[0]
  f.writeData( cast[pointer](img.data[0]), img.bufferSize ) 