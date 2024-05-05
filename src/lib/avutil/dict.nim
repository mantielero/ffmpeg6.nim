# https://ffmpeg.org/doxygen/trunk/group__lavu__dict.html#gac1ee576724d94d686a1ba5d842257119https://ffmpeg.org/doxygen/trunk/group__lavu__dict.html#gac1ee576724d94d686a1ba5d842257119

#import ../../wrapper/libavutil/dict
#import ../../wrapperc2nim/avutil/dict
import ../../wrapperFuthark/libav

type
  DictObj* = object
    handle*:  ptr Avdictionary
  Dict* = ref DictObj
#   #DictItem* = object of Avdictionaryentry
#   Dict*     = object of Avdictionary

# proc `=destroy`(val: Dict) = # Define a destructor as normal
#   avdictfree(val.addr.addr)


iterator pairs*(val:Dict):tuple[key,value:string] =
  var tag:ptr AVDictionaryEntry = nil  
  var flag = true
  while flag:
    tag = av_dict_iterate(val.handle, tag)
    if tag == nil:
      break
    yield ($tag.key,$tag.value)

proc `$`*(val: Dict):string =
  for k,v in val.pairs():
    result &=  k & ": " &  v &  "\n" 

proc `$`*(val: ptr Avdictionary):string =
  var tmp = new Dict
  tmp.handle = cast[ptr Avdictionary](val)

  for k,v in tmp.pairs():
    result &=  k & ": " &  v &  "\n"  