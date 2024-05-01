import ../../wrapper/libavcodec/avcodec

type
  ParserContextObj* = object
    handle*:ptr AVCodecParserContext

  ParserContextRef* = ref ParserContextObj

proc `destroy=`*(val:ParserContextObj) =
  if val.handle != nil:
    avcodec.av_free(val.handle)

proc newParser*(id:enumavcodecid):ParserContextRef =
  result = new ParserContextRef
  result.handle = av_parser_init(id.cint)
  if result.handle == nil:
    raise newException(ValueError, "parser not found")