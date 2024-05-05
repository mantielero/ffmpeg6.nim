
type
  enumavchannel* {.size: sizeof(cint).} = enum
    Avchannone = -1, Avchanfrontleft = 0, Avchanfrontright = 1,
    Avchanfrontcenter = 2, Avchanlowfrequency = 3, Avchanbackleft = 4,
    Avchanbackright = 5, Avchanfrontleftofcenter = 6,
    Avchanfrontrightofcenter = 7, Avchanbackcenter = 8, Avchansideleft = 9,
    Avchansideright = 10, Avchantopcenter = 11, Avchantopfrontleft = 12,
    Avchantopfrontcenter = 13, Avchantopfrontright = 14, Avchantopbackleft = 15,
    Avchantopbackcenter = 16, Avchantopbackright = 17, Avchanstereoleft = 29,
    Avchanstereoright = 30, Avchanwideleft = 31, Avchanwideright = 32,
    Avchansurrounddirectleft = 33, Avchansurrounddirectright = 34,
    Avchanlowfrequency2 = 35, Avchantopsideleft = 36, Avchantopsideright = 37,
    Avchanbottomfrontcenter = 38, Avchanbottomfrontleft = 39,
    Avchanbottomfrontright = 40, Avchanunused = 512, Avchanunknown = 768,
    Avchanambisonicbase = 1024, Avchanambisonicend = 2047
type
  enumavchannelorder* {.size: sizeof(cuint).} = enum
    Avchannelorderunspec = 0, Avchannelordernative = 1,
    Avchannelordercustom = 2, Avchannelorderambisonic = 3
type
  enumavmatrixencoding* {.size: sizeof(cuint).} = enum
    Avmatrixencodingnone = 0, Avmatrixencodingdolby = 1,
    Avmatrixencodingdplii = 2, Avmatrixencodingdpliix = 3,
    Avmatrixencodingdpliiz = 4, Avmatrixencodingdolbyex = 5,
    Avmatrixencodingdolbyheadphone = 6, Avmatrixencodingnb = 7
type
  structavbprint* = distinct object
type
  Libavutilversionint* = distinct object
type
  compilerbuiltinconstantp* = distinct object
type
  Avchlayout5point1point2back* = distinct object
type
  Avchfrontcenter* = distinct object
type
  Avchannellayout5point1point2back* = distinct object
type
  structavchannelcustom* {.pure, inheritable, bycopy.} = object
    id*: enumavchannel       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:271:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom* = structavchannelcustom ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:275:3
  structavchannellayout_u_t* {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom

  structavchannellayout* {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:307:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout* = structavchannellayout ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:365:3
when 58 is static:
  const
    Libavutilversionmajor* = 58 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:81:9
else:
  let Libavutilversionmajor* = 58 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:81:9
when 29 is static:
  const
    Libavutilversionminor* = 29 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:82:9
else:
  let Libavutilversionminor* = 29 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:82:9
when 100 is static:
  const
    Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:83:9
else:
  let Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:83:9
when cast[culonglong](-9223372036854775808'i64) is static:
  const
    Avchlayoutnative* = cast[culonglong](-9223372036854775808'i64) ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:202:9
else:
  let Avchlayoutnative* = cast[culonglong](-9223372036854775808'i64) ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:202:9
proc avgetchannellayout*(name: cstring): uint64 {.cdecl,
    importc: "av_get_channel_layout".}
proc avgetextendedchannellayout*(name: cstring; channellayout: ptr uint64;
                                 nbchannels: ptr cint): cint {.cdecl,
    importc: "av_get_extended_channel_layout".}
proc avgetchannellayoutstring*(buf: cstring; bufsize: cint; nbchannels: cint;
                               channellayout: uint64): void {.cdecl,
    importc: "av_get_channel_layout_string".}
proc avbprintchannellayout*(bp: ptr structavbprint; nbchannels: cint;
                            channellayout: uint64): void {.cdecl,
    importc: "av_bprint_channel_layout".}
proc avgetchannellayoutnbchannels*(channellayout: uint64): cint {.cdecl,
    importc: "av_get_channel_layout_nb_channels".}
proc avgetdefaultchannellayout*(nbchannels: cint): int64 {.cdecl,
    importc: "av_get_default_channel_layout".}
proc avgetchannellayoutchannelindex*(channellayout: uint64; channel: uint64): cint {.
    cdecl, importc: "av_get_channel_layout_channel_index".}
proc avchannellayoutextractchannel*(channellayout: uint64; index: cint): uint64 {.
    cdecl, importc: "av_channel_layout_extract_channel".}
proc avgetchannelname*(channel: uint64): cstring {.cdecl,
    importc: "av_get_channel_name".}
proc avgetchanneldescription*(channel: uint64): cstring {.cdecl,
    importc: "av_get_channel_description".}
proc avgetstandardchannellayout*(index: cuint; layout: ptr uint64;
                                 name: ptr cstring): cint {.cdecl,
    importc: "av_get_standard_channel_layout".}
proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel): cint {.
    cdecl, importc: "av_channel_name".}
proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel): void {.
    cdecl, importc: "av_channel_name_bprint".}
proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                           channel: enumavchannel): cint {.cdecl,
    importc: "av_channel_description".}
proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                 channelid: enumavchannel): void {.cdecl,
    importc: "av_channel_description_bprint".}
proc avchannelfromstring*(name: cstring): enumavchannel {.cdecl,
    importc: "av_channel_from_string".}
proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout; mask: uint64): cint {.
    cdecl, importc: "av_channel_layout_from_mask".}
proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout; str: cstring): cint {.
    cdecl, importc: "av_channel_layout_from_string".}
proc avchannellayoutdefault*(chlayout: ptr Avchannellayout; nbchannels: cint): void {.
    cdecl, importc: "av_channel_layout_default".}
proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout {.cdecl,
    importc: "av_channel_layout_standard".}
proc avchannellayoutuninit*(channellayout: ptr Avchannellayout): void {.cdecl,
    importc: "av_channel_layout_uninit".}
proc avchannellayoutcopy*(dst: ptr Avchannellayout; src: ptr Avchannellayout): cint {.
    cdecl, importc: "av_channel_layout_copy".}
proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout; buf: cstring;
                              bufsize: csize_t): cint {.cdecl,
    importc: "av_channel_layout_describe".}
proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout;
                                    bp: ptr structavbprint): cint {.cdecl,
    importc: "av_channel_layout_describe_bprint".}
proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout;
                                      idx: cuint): enumavchannel {.cdecl,
    importc: "av_channel_layout_channel_from_index".}
proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout;
                                      channel: enumavchannel): cint {.cdecl,
    importc: "av_channel_layout_index_from_channel".}
proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout;
                                     name: cstring): cint {.cdecl,
    importc: "av_channel_layout_index_from_string".}
proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout;
                                       name: cstring): enumavchannel {.cdecl,
    importc: "av_channel_layout_channel_from_string".}
proc avchannellayoutsubset*(channellayout: ptr Avchannellayout; mask: uint64): uint64 {.
    cdecl, importc: "av_channel_layout_subset".}
proc avchannellayoutcheck*(channellayout: ptr Avchannellayout): cint {.cdecl,
    importc: "av_channel_layout_check".}
proc avchannellayoutcompare*(chl: ptr Avchannellayout; chl1: ptr Avchannellayout): cint {.
    cdecl, importc: "av_channel_layout_compare".}