
from macros import hint

when not declared(enumavpixelformat):
  type
    enumavpixelformat* {.size: sizeof(cint).} = enum
      Avpixfmtnone = -1, Avpixfmtyuv420p = 0, Avpixfmtyuyv422 = 1,
      Avpixfmtrgb24 = 2, Avpixfmtbgr24 = 3, Avpixfmtyuv422p = 4,
      Avpixfmtyuv444p = 5, Avpixfmtyuv410p = 6, Avpixfmtyuv411p = 7,
      Avpixfmtgray8 = 8, Avpixfmtmonowhite = 9, Avpixfmtmonoblack = 10,
      Avpixfmtpal8 = 11, Avpixfmtyuvj420p = 12, Avpixfmtyuvj422p = 13,
      Avpixfmtyuvj444p = 14, Avpixfmtuyvy422 = 15, Avpixfmtuyyvyy411 = 16,
      Avpixfmtbgr8 = 17, Avpixfmtbgr4 = 18, Avpixfmtbgr4byte = 19,
      Avpixfmtrgb8 = 20, Avpixfmtrgb4 = 21, Avpixfmtrgb4byte = 22,
      Avpixfmtnv12 = 23, Avpixfmtnv21 = 24, Avpixfmtargb = 25,
      Avpixfmtrgba = 26, Avpixfmtabgr = 27, Avpixfmtbgra = 28,
      Avpixfmtgray16be = 29, Avpixfmtgray16le = 30, Avpixfmtyuv440p = 31,
      Avpixfmtyuvj440p = 32, Avpixfmtyuva420p = 33, Avpixfmtrgb48be = 34,
      Avpixfmtrgb48le = 35, Avpixfmtrgb565be = 36, Avpixfmtrgb565le = 37,
      Avpixfmtrgb555be = 38, Avpixfmtrgb555le = 39, Avpixfmtbgr565be = 40,
      Avpixfmtbgr565le = 41, Avpixfmtbgr555be = 42, Avpixfmtbgr555le = 43,
      Avpixfmtvaapi = 44, Avpixfmtyuv420p16le = 45, Avpixfmtyuv420p16be = 46,
      Avpixfmtyuv422p16le = 47, Avpixfmtyuv422p16be = 48,
      Avpixfmtyuv444p16le = 49, Avpixfmtyuv444p16be = 50, Avpixfmtdxva2vld = 51,
      Avpixfmtrgb444le = 52, Avpixfmtrgb444be = 53, Avpixfmtbgr444le = 54,
      Avpixfmtbgr444be = 55, Avpixfmtya8 = 56, Avpixfmtbgr48be = 57,
      Avpixfmtbgr48le = 58, Avpixfmtyuv420p9be = 59, Avpixfmtyuv420p9le = 60,
      Avpixfmtyuv420p10be = 61, Avpixfmtyuv420p10le = 62,
      Avpixfmtyuv422p10be = 63, Avpixfmtyuv422p10le = 64,
      Avpixfmtyuv444p9be = 65, Avpixfmtyuv444p9le = 66,
      Avpixfmtyuv444p10be = 67, Avpixfmtyuv444p10le = 68,
      Avpixfmtyuv422p9be = 69, Avpixfmtyuv422p9le = 70, Avpixfmtgbrp = 71,
      Avpixfmtgbrp9be = 72, Avpixfmtgbrp9le = 73, Avpixfmtgbrp10be = 74,
      Avpixfmtgbrp10le = 75, Avpixfmtgbrp16be = 76, Avpixfmtgbrp16le = 77,
      Avpixfmtyuva422p = 78, Avpixfmtyuva444p = 79, Avpixfmtyuva420p9be = 80,
      Avpixfmtyuva420p9le = 81, Avpixfmtyuva422p9be = 82,
      Avpixfmtyuva422p9le = 83, Avpixfmtyuva444p9be = 84,
      Avpixfmtyuva444p9le = 85, Avpixfmtyuva420p10be = 86,
      Avpixfmtyuva420p10le = 87, Avpixfmtyuva422p10be = 88,
      Avpixfmtyuva422p10le = 89, Avpixfmtyuva444p10be = 90,
      Avpixfmtyuva444p10le = 91, Avpixfmtyuva420p16be = 92,
      Avpixfmtyuva420p16le = 93, Avpixfmtyuva422p16be = 94,
      Avpixfmtyuva422p16le = 95, Avpixfmtyuva444p16be = 96,
      Avpixfmtyuva444p16le = 97, Avpixfmtvdpau = 98, Avpixfmtxyz12le = 99,
      Avpixfmtxyz12be = 100, Avpixfmtnv16 = 101, Avpixfmtnv20le = 102,
      Avpixfmtnv20be = 103, Avpixfmtrgba64be = 104, Avpixfmtrgba64le = 105,
      Avpixfmtbgra64be = 106, Avpixfmtbgra64le = 107, Avpixfmtyvyu422 = 108,
      Avpixfmtya16be = 109, Avpixfmtya16le = 110, Avpixfmtgbrap = 111,
      Avpixfmtgbrap16be = 112, Avpixfmtgbrap16le = 113, Avpixfmtqsv = 114,
      Avpixfmtmmal = 115, Avpixfmtd3d11vavld = 116, Avpixfmtcuda = 117,
      Avpixfmt0rgb = 118, Avpixfmtrgb0 = 119, Avpixfmt0bgr = 120,
      Avpixfmtbgr0 = 121, Avpixfmtyuv420p12be = 122, Avpixfmtyuv420p12le = 123,
      Avpixfmtyuv420p14be = 124, Avpixfmtyuv420p14le = 125,
      Avpixfmtyuv422p12be = 126, Avpixfmtyuv422p12le = 127,
      Avpixfmtyuv422p14be = 128, Avpixfmtyuv422p14le = 129,
      Avpixfmtyuv444p12be = 130, Avpixfmtyuv444p12le = 131,
      Avpixfmtyuv444p14be = 132, Avpixfmtyuv444p14le = 133,
      Avpixfmtgbrp12be = 134, Avpixfmtgbrp12le = 135, Avpixfmtgbrp14be = 136,
      Avpixfmtgbrp14le = 137, Avpixfmtyuvj411p = 138, Avpixfmtbayerbggr8 = 139,
      Avpixfmtbayerrggb8 = 140, Avpixfmtbayergbrg8 = 141,
      Avpixfmtbayergrbg8 = 142, Avpixfmtbayerbggr16le = 143,
      Avpixfmtbayerbggr16be = 144, Avpixfmtbayerrggb16le = 145,
      Avpixfmtbayerrggb16be = 146, Avpixfmtbayergbrg16le = 147,
      Avpixfmtbayergbrg16be = 148, Avpixfmtbayergrbg16le = 149,
      Avpixfmtbayergrbg16be = 150, Avpixfmtyuv440p10le = 151,
      Avpixfmtyuv440p10be = 152, Avpixfmtyuv440p12le = 153,
      Avpixfmtyuv440p12be = 154, Avpixfmtayuv64le = 155, Avpixfmtayuv64be = 156,
      Avpixfmtvideotoolbox = 157, Avpixfmtp010le = 158, Avpixfmtp010be = 159,
      Avpixfmtgbrap12be = 160, Avpixfmtgbrap12le = 161, Avpixfmtgbrap10be = 162,
      Avpixfmtgbrap10le = 163, Avpixfmtmediacodec = 164, Avpixfmtgray12be = 165,
      Avpixfmtgray12le = 166, Avpixfmtgray10be = 167, Avpixfmtgray10le = 168,
      Avpixfmtp016le = 169, Avpixfmtp016be = 170, Avpixfmtd3d11 = 171,
      Avpixfmtgray9be = 172, Avpixfmtgray9le = 173, Avpixfmtgbrpf32be = 174,
      Avpixfmtgbrpf32le = 175, Avpixfmtgbrapf32be = 176,
      Avpixfmtgbrapf32le = 177, Avpixfmtdrmprime = 178, Avpixfmtopencl = 179,
      Avpixfmtgray14be = 180, Avpixfmtgray14le = 181, Avpixfmtgrayf32be = 182,
      Avpixfmtgrayf32le = 183, Avpixfmtyuva422p12be = 184,
      Avpixfmtyuva422p12le = 185, Avpixfmtyuva444p12be = 186,
      Avpixfmtyuva444p12le = 187, Avpixfmtnv24 = 188, Avpixfmtnv42 = 189,
      Avpixfmtvulkan = 190, Avpixfmty210be = 191, Avpixfmty210le = 192,
      Avpixfmtx2rgb10le = 193, Avpixfmtx2rgb10be = 194, Avpixfmtx2bgr10le = 195,
      Avpixfmtx2bgr10be = 196, Avpixfmtp210be = 197, Avpixfmtp210le = 198,
      Avpixfmtp410be = 199, Avpixfmtp410le = 200, Avpixfmtp216be = 201,
      Avpixfmtp216le = 202, Avpixfmtp416be = 203, Avpixfmtp416le = 204,
      Avpixfmtvuya = 205, Avpixfmtrgbaf16be = 206, Avpixfmtrgbaf16le = 207,
      Avpixfmtvuyx = 208, Avpixfmtp012le = 209, Avpixfmtp012be = 210,
      Avpixfmty212be = 211, Avpixfmty212le = 212, Avpixfmtxv30be = 213,
      Avpixfmtxv30le = 214, Avpixfmtxv36be = 215, Avpixfmtxv36le = 216,
      Avpixfmtrgbf32be = 217, Avpixfmtrgbf32le = 218, Avpixfmtrgbaf32be = 219,
      Avpixfmtrgbaf32le = 220, Avpixfmtp212be = 221, Avpixfmtp212le = 222,
      Avpixfmtp412be = 223, Avpixfmtp412le = 224, Avpixfmtgbrap14be = 225,
      Avpixfmtgbrap14le = 226, Avpixfmtd3d12 = 227, Avpixfmtnb = 228
else:
  static :
    hint("Declaration of " & "enumavpixelformat" &
        " already exists, not redeclaring")
when not declared(Avpixfmty400a):
  const
    Avpixfmty400a* = enumavpixelformat.Avpixfmtya8
else:
  static :
    hint("Declaration of " & "Avpixfmty400a" &
        " already exists, not redeclaring")
when not declared(Avpixfmtgray8a):
  const
    Avpixfmtgray8a* = enumavpixelformat.Avpixfmtya8
else:
  static :
    hint("Declaration of " & "Avpixfmtgray8a" &
        " already exists, not redeclaring")
when not declared(Avpixfmtgbr24p):
  const
    Avpixfmtgbr24p* = enumavpixelformat.Avpixfmtgbrp
else:
  static :
    hint("Declaration of " & "Avpixfmtgbr24p" &
        " already exists, not redeclaring")
when not declared(enumavcolorprimaries):
  type
    enumavcolorprimaries* {.size: sizeof(cuint).} = enum
      Avcolprireserved0 = 0, Avcolpribt709 = 1, Avcolpriunspecified = 2,
      Avcolprireserved = 3, Avcolpribt470m = 4, Avcolpribt470bg = 5,
      Avcolprismpte170m = 6, Avcolprismpte240m = 7, Avcolprifilm = 8,
      Avcolpribt2020 = 9, Avcolprismpte428 = 10, Avcolprismpte431 = 11,
      Avcolprismpte432 = 12, Avcolpriebu3213 = 22, Avcolprinb = 23
else:
  static :
    hint("Declaration of " & "enumavcolorprimaries" &
        " already exists, not redeclaring")
when not declared(Avcolprismptest4281):
  const
    Avcolprismptest4281* = enumavcolorprimaries.Avcolprismpte428
else:
  static :
    hint("Declaration of " & "Avcolprismptest4281" &
        " already exists, not redeclaring")
when not declared(Avcolprijedecp22):
  const
    Avcolprijedecp22* = enumavcolorprimaries.Avcolpriebu3213
else:
  static :
    hint("Declaration of " & "Avcolprijedecp22" &
        " already exists, not redeclaring")
when not declared(enumavcolortransfercharacteristic):
  type
    enumavcolortransfercharacteristic* {.size: sizeof(cuint).} = enum
      Avcoltrcreserved0 = 0, Avcoltrcbt709 = 1, Avcoltrcunspecified = 2,
      Avcoltrcreserved = 3, Avcoltrcgamma22 = 4, Avcoltrcgamma28 = 5,
      Avcoltrcsmpte170m = 6, Avcoltrcsmpte240m = 7, Avcoltrclinear = 8,
      Avcoltrclog = 9, Avcoltrclogsqrt = 10, Avcoltrciec6196624 = 11,
      Avcoltrcbt1361ecg = 12, Avcoltrciec6196621 = 13, Avcoltrcbt202010 = 14,
      Avcoltrcbt202012 = 15, Avcoltrcsmpte2084 = 16, Avcoltrcsmpte428 = 17,
      Avcoltrcaribstdb67 = 18, Avcoltrcnb = 19
else:
  static :
    hint("Declaration of " & "enumavcolortransfercharacteristic" &
        " already exists, not redeclaring")
when not declared(Avcoltrcsmptest2084):
  const
    Avcoltrcsmptest2084* = enumavcolortransfercharacteristic.Avcoltrcsmpte2084
else:
  static :
    hint("Declaration of " & "Avcoltrcsmptest2084" &
        " already exists, not redeclaring")
when not declared(Avcoltrcsmptest4281):
  const
    Avcoltrcsmptest4281* = enumavcolortransfercharacteristic.Avcoltrcsmpte428
else:
  static :
    hint("Declaration of " & "Avcoltrcsmptest4281" &
        " already exists, not redeclaring")
when not declared(enumavcolorspace):
  type
    enumavcolorspace* {.size: sizeof(cuint).} = enum
      Avcolspcrgb = 0, Avcolspcbt709 = 1, Avcolspcunspecified = 2,
      Avcolspcreserved = 3, Avcolspcfcc = 4, Avcolspcbt470bg = 5,
      Avcolspcsmpte170m = 6, Avcolspcsmpte240m = 7, Avcolspcycgco = 8,
      Avcolspcbt2020ncl = 9, Avcolspcbt2020cl = 10, Avcolspcsmpte2085 = 11,
      Avcolspcchromaderivedncl = 12, Avcolspcchromaderivedcl = 13,
      Avcolspcictcp = 14, Avcolspciptc2 = 15, Avcolspcycgcore = 16,
      Avcolspcycgcoro = 17, Avcolspcnb = 18
else:
  static :
    hint("Declaration of " & "enumavcolorspace" &
        " already exists, not redeclaring")
when not declared(Avcolspcycocg):
  const
    Avcolspcycocg* = enumavcolorspace.Avcolspcycgco
else:
  static :
    hint("Declaration of " & "Avcolspcycocg" &
        " already exists, not redeclaring")
when not declared(enumavcolorrange):
  type
    enumavcolorrange* {.size: sizeof(cuint).} = enum
      Avcolrangeunspecified = 0, Avcolrangempeg = 1, Avcolrangejpeg = 2,
      Avcolrangenb = 3
else:
  static :
    hint("Declaration of " & "enumavcolorrange" &
        " already exists, not redeclaring")
when not declared(enumavchromalocation):
  type
    enumavchromalocation* {.size: sizeof(cuint).} = enum
      Avchromalocunspecified = 0, Avchromalocleft = 1, Avchromaloccenter = 2,
      Avchromaloctopleft = 3, Avchromaloctop = 4, Avchromalocbottomleft = 5,
      Avchromalocbottom = 6, Avchromalocnb = 7
else:
  static :
    hint("Declaration of " & "enumavchromalocation" &
        " already exists, not redeclaring")
when not declared(Libavutilversionint):
  type
    Libavutilversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libavutilversionint" &
        " already exists, not redeclaring")
when not declared(compilerbuiltinconstantp):
  type
    compilerbuiltinconstantp* = distinct object
else:
  static :
    hint("Declaration of " & "compilerbuiltinconstantp" &
        " already exists, not redeclaring")
type
  structavcomponentdescriptor_520095715 {.pure, inheritable, bycopy.} = object
    plane*: cint             ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:30:16
    step*: cint
    offset*: cint
    shift*: cint
    depth*: cint

  Avcomponentdescriptor_520095717 = structavcomponentdescriptor_520095716 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:58:3
  structavpixfmtdescriptor_520095719 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:69:16
    nbcomponents*: uint8
    log2chromaw*: uint8
    log2chromah*: uint8
    flags*: uint64
    comp*: array[4'i64, Avcomponentdescriptor_520095718]
    alias*: cstring

  Avpixfmtdescriptor_520095721 = structavpixfmtdescriptor_520095720 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:111:3
  structavrational_520095723 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:58:16
    den*: cint

  Avrational_520095725 = structavrational_520095724 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:61:3
  ptrdifft_520095727 = clong ## Generated based on /usr/lib/clang/17/include/stddef.h:35:26
  structavpixfmtdescriptor_520095720 = (when declared(structavpixfmtdescriptor):
    structavpixfmtdescriptor
   else:
    structavpixfmtdescriptor_520095719)
  enumavcolorprimaries_520095706 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520095705)
  structavcomponentdescriptor_520095716 = (when declared(
      structavcomponentdescriptor):
    structavcomponentdescriptor
   else:
    structavcomponentdescriptor_520095715)
  enumavcolorrange_520095712 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520095711)
  Avpixfmtdescriptor_520095722 = (when declared(Avpixfmtdescriptor):
    Avpixfmtdescriptor
   else:
    Avpixfmtdescriptor_520095721)
  enumavchromalocation_520095714 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520095713)
  structavrational_520095724 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520095723)
  ptrdifft_520095728 = (when declared(ptrdifft):
    ptrdifft
   else:
    ptrdifft_520095727)
  enumavcolortransfercharacteristic_520095708 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520095707)
  Avcomponentdescriptor_520095718 = (when declared(Avcomponentdescriptor):
    Avcomponentdescriptor
   else:
    Avcomponentdescriptor_520095717)
  enumavpixelformat_520095704 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520095703)
  enumavcolorspace_520095710 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520095709)
  Avrational_520095726 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520095725)
when not declared(structavpixfmtdescriptor):
  type
    structavpixfmtdescriptor* = structavpixfmtdescriptor_520095719
else:
  static :
    hint("Declaration of " & "structavpixfmtdescriptor" &
        " already exists, not redeclaring")
when not declared(structavcomponentdescriptor):
  type
    structavcomponentdescriptor* = structavcomponentdescriptor_520095715
else:
  static :
    hint("Declaration of " & "structavcomponentdescriptor" &
        " already exists, not redeclaring")
when not declared(Avpixfmtdescriptor):
  type
    Avpixfmtdescriptor* = Avpixfmtdescriptor_520095721
else:
  static :
    hint("Declaration of " & "Avpixfmtdescriptor" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520095723
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(ptrdifft):
  type
    ptrdifft* = ptrdifft_520095727
else:
  static :
    hint("Declaration of " & "ptrdifft" & " already exists, not redeclaring")
when not declared(Avcomponentdescriptor):
  type
    Avcomponentdescriptor* = Avcomponentdescriptor_520095717
else:
  static :
    hint("Declaration of " & "Avcomponentdescriptor" &
        " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520095725
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(Libavutilversionmajor):
  when 59 is static:
    const
      Libavutilversionmajor* = 59 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:81:9
  else:
    let Libavutilversionmajor* = 59 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:81:9
else:
  static :
    hint("Declaration of " & "Libavutilversionmajor" &
        " already exists, not redeclaring")
when not declared(Libavutilversionminor):
  when 15 is static:
    const
      Libavutilversionminor* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:82:9
  else:
    let Libavutilversionminor* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:82:9
else:
  static :
    hint("Declaration of " & "Libavutilversionminor" &
        " already exists, not redeclaring")
when not declared(Libavutilversionmicro):
  when 100 is static:
    const
      Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:83:9
  else:
    let Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/version.h:83:9
else:
  static :
    hint("Declaration of " & "Libavutilversionmicro" &
        " already exists, not redeclaring")
when not declared(Avpalettesize):
  when 1024 is static:
    const
      Avpalettesize* = 1024  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:32:9
  else:
    let Avpalettesize* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:32:9
else:
  static :
    hint("Declaration of " & "Avpalettesize" &
        " already exists, not redeclaring")
when not declared(Avpalettecount):
  when 256 is static:
    const
      Avpalettecount* = 256  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:33:9
  else:
    let Avpalettecount* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:33:9
else:
  static :
    hint("Declaration of " & "Avpalettecount" &
        " already exists, not redeclaring")
when not declared(Avvideomaxplanes):
  when 4 is static:
    const
      Avvideomaxplanes* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:40:9
  else:
    let Avvideomaxplanes* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixfmt.h:40:9
else:
  static :
    hint("Declaration of " & "Avvideomaxplanes" &
        " already exists, not redeclaring")
when not declared(Fflossresolution):
  when 1 is static:
    const
      Fflossresolution* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:387:9
  else:
    let Fflossresolution* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:387:9
else:
  static :
    hint("Declaration of " & "Fflossresolution" &
        " already exists, not redeclaring")
when not declared(Fflossdepth):
  when 2 is static:
    const
      Fflossdepth* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:388:9
  else:
    let Fflossdepth* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:388:9
else:
  static :
    hint("Declaration of " & "Fflossdepth" & " already exists, not redeclaring")
when not declared(Fflosscolorspace):
  when 4 is static:
    const
      Fflosscolorspace* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:389:9
  else:
    let Fflosscolorspace* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:389:9
else:
  static :
    hint("Declaration of " & "Fflosscolorspace" &
        " already exists, not redeclaring")
when not declared(Fflossalpha):
  when 8 is static:
    const
      Fflossalpha* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:390:9
  else:
    let Fflossalpha* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:390:9
else:
  static :
    hint("Declaration of " & "Fflossalpha" & " already exists, not redeclaring")
when not declared(Fflosscolorquant):
  when 16 is static:
    const
      Fflosscolorquant* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:391:9
  else:
    let Fflosscolorquant* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:391:9
else:
  static :
    hint("Declaration of " & "Fflosscolorquant" &
        " already exists, not redeclaring")
when not declared(Fflosschroma):
  when 32 is static:
    const
      Fflosschroma* = 32     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:392:9
  else:
    let Fflosschroma* = 32   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:392:9
else:
  static :
    hint("Declaration of " & "Fflosschroma" & " already exists, not redeclaring")
when not declared(Fflossexcessresolution):
  when 64 is static:
    const
      Fflossexcessresolution* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:393:9
  else:
    let Fflossexcessresolution* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:393:9
else:
  static :
    hint("Declaration of " & "Fflossexcessresolution" &
        " already exists, not redeclaring")
when not declared(Fflossexcessdepth):
  when 128 is static:
    const
      Fflossexcessdepth* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:394:9
  else:
    let Fflossexcessdepth* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/pixdesc.h:394:9
else:
  static :
    hint("Declaration of " & "Fflossexcessdepth" &
        " already exists, not redeclaring")
when not declared(avgetbitsperpixel):
  proc avgetbitsperpixel*(pixdesc: ptr Avpixfmtdescriptor_520095722): cint {.
      cdecl, importc: "av_get_bits_per_pixel".}
else:
  static :
    hint("Declaration of " & "avgetbitsperpixel" &
        " already exists, not redeclaring")
when not declared(avgetpaddedbitsperpixel):
  proc avgetpaddedbitsperpixel*(pixdesc: ptr Avpixfmtdescriptor_520095722): cint {.
      cdecl, importc: "av_get_padded_bits_per_pixel".}
else:
  static :
    hint("Declaration of " & "avgetpaddedbitsperpixel" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescget):
  proc avpixfmtdescget*(pixfmt: enumavpixelformat_520095704): ptr Avpixfmtdescriptor_520095722 {.
      cdecl, importc: "av_pix_fmt_desc_get".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescget" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescnext):
  proc avpixfmtdescnext*(prev: ptr Avpixfmtdescriptor_520095722): ptr Avpixfmtdescriptor_520095722 {.
      cdecl, importc: "av_pix_fmt_desc_next".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescnext" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescgetid):
  proc avpixfmtdescgetid*(desc: ptr Avpixfmtdescriptor_520095722): enumavpixelformat_520095704 {.
      cdecl, importc: "av_pix_fmt_desc_get_id".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescgetid" &
        " already exists, not redeclaring")
when not declared(avpixfmtgetchromasubsample):
  proc avpixfmtgetchromasubsample*(pixfmt: enumavpixelformat_520095704;
                                   hshift: ptr cint; vshift: ptr cint): cint {.
      cdecl, importc: "av_pix_fmt_get_chroma_sub_sample".}
else:
  static :
    hint("Declaration of " & "avpixfmtgetchromasubsample" &
        " already exists, not redeclaring")
when not declared(avpixfmtcountplanes):
  proc avpixfmtcountplanes*(pixfmt: enumavpixelformat_520095704): cint {.cdecl,
      importc: "av_pix_fmt_count_planes".}
else:
  static :
    hint("Declaration of " & "avpixfmtcountplanes" &
        " already exists, not redeclaring")
when not declared(avcolorrangename):
  proc avcolorrangename*(range: enumavcolorrange_520095712): cstring {.cdecl,
      importc: "av_color_range_name".}
else:
  static :
    hint("Declaration of " & "avcolorrangename" &
        " already exists, not redeclaring")
when not declared(avcolorrangefromname):
  proc avcolorrangefromname*(name: cstring): cint {.cdecl,
      importc: "av_color_range_from_name".}
else:
  static :
    hint("Declaration of " & "avcolorrangefromname" &
        " already exists, not redeclaring")
when not declared(avcolorprimariesname):
  proc avcolorprimariesname*(primaries: enumavcolorprimaries_520095706): cstring {.
      cdecl, importc: "av_color_primaries_name".}
else:
  static :
    hint("Declaration of " & "avcolorprimariesname" &
        " already exists, not redeclaring")
when not declared(avcolorprimariesfromname):
  proc avcolorprimariesfromname*(name: cstring): cint {.cdecl,
      importc: "av_color_primaries_from_name".}
else:
  static :
    hint("Declaration of " & "avcolorprimariesfromname" &
        " already exists, not redeclaring")
when not declared(avcolortransfername):
  proc avcolortransfername*(transfer: enumavcolortransfercharacteristic_520095708): cstring {.
      cdecl, importc: "av_color_transfer_name".}
else:
  static :
    hint("Declaration of " & "avcolortransfername" &
        " already exists, not redeclaring")
when not declared(avcolortransferfromname):
  proc avcolortransferfromname*(name: cstring): cint {.cdecl,
      importc: "av_color_transfer_from_name".}
else:
  static :
    hint("Declaration of " & "avcolortransferfromname" &
        " already exists, not redeclaring")
when not declared(avcolorspacename):
  proc avcolorspacename*(space: enumavcolorspace_520095710): cstring {.cdecl,
      importc: "av_color_space_name".}
else:
  static :
    hint("Declaration of " & "avcolorspacename" &
        " already exists, not redeclaring")
when not declared(avcolorspacefromname):
  proc avcolorspacefromname*(name: cstring): cint {.cdecl,
      importc: "av_color_space_from_name".}
else:
  static :
    hint("Declaration of " & "avcolorspacefromname" &
        " already exists, not redeclaring")
when not declared(avchromalocationname):
  proc avchromalocationname*(location: enumavchromalocation_520095714): cstring {.
      cdecl, importc: "av_chroma_location_name".}
else:
  static :
    hint("Declaration of " & "avchromalocationname" &
        " already exists, not redeclaring")
when not declared(avchromalocationfromname):
  proc avchromalocationfromname*(name: cstring): cint {.cdecl,
      importc: "av_chroma_location_from_name".}
else:
  static :
    hint("Declaration of " & "avchromalocationfromname" &
        " already exists, not redeclaring")
when not declared(avchromalocationenumtopos):
  proc avchromalocationenumtopos*(xpos: ptr cint; ypos: ptr cint;
                                  pos: enumavchromalocation_520095714): cint {.
      cdecl, importc: "av_chroma_location_enum_to_pos".}
else:
  static :
    hint("Declaration of " & "avchromalocationenumtopos" &
        " already exists, not redeclaring")
when not declared(avchromalocationpostoenum):
  proc avchromalocationpostoenum*(xpos: cint; ypos: cint): enumavchromalocation_520095714 {.
      cdecl, importc: "av_chroma_location_pos_to_enum".}
else:
  static :
    hint("Declaration of " & "avchromalocationpostoenum" &
        " already exists, not redeclaring")
when not declared(avgetpixfmt):
  proc avgetpixfmt*(name: cstring): enumavpixelformat_520095704 {.cdecl,
      importc: "av_get_pix_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpixfmt" & " already exists, not redeclaring")
when not declared(avgetpixfmtname):
  proc avgetpixfmtname*(pixfmt: enumavpixelformat_520095704): cstring {.cdecl,
      importc: "av_get_pix_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtname" &
        " already exists, not redeclaring")
when not declared(avgetpixfmtstring):
  proc avgetpixfmtstring*(buf: cstring; bufsize: cint; pixfmt: enumavpixelformat_520095704): cstring {.
      cdecl, importc: "av_get_pix_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtstring" &
        " already exists, not redeclaring")
when not declared(avreadimageline2):
  proc avreadimageline2*(dst: pointer; data: array[4'i64, ptr uint8];
                         linesize: array[4'i64, cint];
                         desc: ptr Avpixfmtdescriptor_520095722; x: cint;
                         y: cint; c: cint; w: cint; readpalcomponent: cint;
                         dstelementsize: cint): void {.cdecl,
      importc: "av_read_image_line2".}
else:
  static :
    hint("Declaration of " & "avreadimageline2" &
        " already exists, not redeclaring")
when not declared(avreadimageline):
  proc avreadimageline*(dst: ptr uint16; data: array[4'i64, ptr uint8];
                        linesize: array[4'i64, cint];
                        desc: ptr Avpixfmtdescriptor_520095722; x: cint;
                        y: cint; c: cint; w: cint; readpalcomponent: cint): void {.
      cdecl, importc: "av_read_image_line".}
else:
  static :
    hint("Declaration of " & "avreadimageline" &
        " already exists, not redeclaring")
when not declared(avwriteimageline2):
  proc avwriteimageline2*(src: pointer; data: array[4'i64, ptr uint8];
                          linesize: array[4'i64, cint];
                          desc: ptr Avpixfmtdescriptor_520095722; x: cint;
                          y: cint; c: cint; w: cint; srcelementsize: cint): void {.
      cdecl, importc: "av_write_image_line2".}
else:
  static :
    hint("Declaration of " & "avwriteimageline2" &
        " already exists, not redeclaring")
when not declared(avwriteimageline):
  proc avwriteimageline*(src: ptr uint16; data: array[4'i64, ptr uint8];
                         linesize: array[4'i64, cint];
                         desc: ptr Avpixfmtdescriptor_520095722; x: cint;
                         y: cint; c: cint; w: cint): void {.cdecl,
      importc: "av_write_image_line".}
else:
  static :
    hint("Declaration of " & "avwriteimageline" &
        " already exists, not redeclaring")
when not declared(avpixfmtswapendianness):
  proc avpixfmtswapendianness*(pixfmt: enumavpixelformat_520095704): enumavpixelformat_520095704 {.
      cdecl, importc: "av_pix_fmt_swap_endianness".}
else:
  static :
    hint("Declaration of " & "avpixfmtswapendianness" &
        " already exists, not redeclaring")
when not declared(avgetpixfmtloss):
  proc avgetpixfmtloss*(dstpixfmt: enumavpixelformat_520095704;
                        srcpixfmt: enumavpixelformat_520095704; hasalpha: cint): cint {.
      cdecl, importc: "av_get_pix_fmt_loss".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtloss" &
        " already exists, not redeclaring")
when not declared(avfindbestpixfmtof2):
  proc avfindbestpixfmtof2*(dstpixfmt1: enumavpixelformat_520095704;
                            dstpixfmt2: enumavpixelformat_520095704;
                            srcpixfmt: enumavpixelformat_520095704;
                            hasalpha: cint; lossptr: ptr cint): enumavpixelformat_520095704 {.
      cdecl, importc: "av_find_best_pix_fmt_of_2".}
else:
  static :
    hint("Declaration of " & "avfindbestpixfmtof2" &
        " already exists, not redeclaring")
when not declared(avreduce):
  proc avreduce*(dstnum: ptr cint; dstden: ptr cint; num: int64; den: int64;
                 max: int64): cint {.cdecl, importc: "av_reduce".}
else:
  static :
    hint("Declaration of " & "avreduce" & " already exists, not redeclaring")
when not declared(avmulq):
  proc avmulq*(b: Avrational_520095726; c: Avrational_520095726): Avrational_520095726 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520095726; c: Avrational_520095726): Avrational_520095726 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520095726; c: Avrational_520095726): Avrational_520095726 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520095726; c: Avrational_520095726): Avrational_520095726 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520095726 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520095726; q1: Avrational_520095726;
                  q2: Avrational_520095726): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520095726; qlist: ptr Avrational_520095726): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520095726): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520095726; b: Avrational_520095726; maxden: cint;
               def: Avrational_520095726): Avrational_520095726 {.cdecl,
      importc: "av_gcd_q".}
else:
  static :
    hint("Declaration of " & "avgcdq" & " already exists, not redeclaring")
when not declared(avimagefillmaxpixsteps):
  proc avimagefillmaxpixsteps*(maxpixsteps: array[4'i64, cint];
                               maxpixstepcomps: array[4'i64, cint];
                               pixdesc: ptr Avpixfmtdescriptor_520095722): void {.
      cdecl, importc: "av_image_fill_max_pixsteps".}
else:
  static :
    hint("Declaration of " & "avimagefillmaxpixsteps" &
        " already exists, not redeclaring")
when not declared(avimagegetlinesize):
  proc avimagegetlinesize*(pixfmt: enumavpixelformat_520095704; width: cint;
                           plane: cint): cint {.cdecl,
      importc: "av_image_get_linesize".}
else:
  static :
    hint("Declaration of " & "avimagegetlinesize" &
        " already exists, not redeclaring")
when not declared(avimagefilllinesizes):
  proc avimagefilllinesizes*(linesizes: array[4'i64, cint];
                             pixfmt: enumavpixelformat_520095704; width: cint): cint {.
      cdecl, importc: "av_image_fill_linesizes".}
else:
  static :
    hint("Declaration of " & "avimagefilllinesizes" &
        " already exists, not redeclaring")
when not declared(avimagefillplanesizes):
  proc avimagefillplanesizes*(size: array[4'i64, csize_t];
                              pixfmt: enumavpixelformat_520095704; height: cint;
                              linesizes: array[4'i64, ptrdifft_520095728]): cint {.
      cdecl, importc: "av_image_fill_plane_sizes".}
else:
  static :
    hint("Declaration of " & "avimagefillplanesizes" &
        " already exists, not redeclaring")
when not declared(avimagefillpointers):
  proc avimagefillpointers*(data: array[4'i64, ptr uint8];
                            pixfmt: enumavpixelformat_520095704; height: cint;
                            ptrarg: ptr uint8; linesizes: array[4'i64, cint]): cint {.
      cdecl, importc: "av_image_fill_pointers".}
else:
  static :
    hint("Declaration of " & "avimagefillpointers" &
        " already exists, not redeclaring")
when not declared(avimagealloc):
  proc avimagealloc*(pointers: array[4'i64, ptr uint8];
                     linesizes: array[4'i64, cint]; w: cint; h: cint;
                     pixfmt: enumavpixelformat_520095704; align: cint): cint {.
      cdecl, importc: "av_image_alloc".}
else:
  static :
    hint("Declaration of " & "avimagealloc" & " already exists, not redeclaring")
when not declared(avimagecopyplane):
  proc avimagecopyplane*(dst: ptr uint8; dstlinesize: cint; src: ptr uint8;
                         srclinesize: cint; bytewidth: cint; height: cint): void {.
      cdecl, importc: "av_image_copy_plane".}
else:
  static :
    hint("Declaration of " & "avimagecopyplane" &
        " already exists, not redeclaring")
when not declared(avimagecopyplaneucfrom):
  proc avimagecopyplaneucfrom*(dst: ptr uint8; dstlinesize: ptrdifft_520095728;
                               src: ptr uint8; srclinesize: ptrdifft_520095728;
                               bytewidth: ptrdifft_520095728; height: cint): void {.
      cdecl, importc: "av_image_copy_plane_uc_from".}
else:
  static :
    hint("Declaration of " & "avimagecopyplaneucfrom" &
        " already exists, not redeclaring")
when not declared(avimagecopy):
  proc avimagecopy*(dstdata: array[4'i64, ptr uint8];
                    dstlinesizes: array[4'i64, cint];
                    srcdata: array[4'i64, ptr uint8];
                    srclinesizes: array[4'i64, cint]; pixfmt: enumavpixelformat_520095704;
                    width: cint; height: cint): void {.cdecl,
      importc: "av_image_copy".}
else:
  static :
    hint("Declaration of " & "avimagecopy" & " already exists, not redeclaring")
when not declared(avimagecopyucfrom):
  proc avimagecopyucfrom*(dstdata: array[4'i64, ptr uint8];
                          dstlinesizes: array[4'i64, ptrdifft_520095728];
                          srcdata: array[4'i64, ptr uint8];
                          srclinesizes: array[4'i64, ptrdifft_520095728];
                          pixfmt: enumavpixelformat_520095704; width: cint;
                          height: cint): void {.cdecl,
      importc: "av_image_copy_uc_from".}
else:
  static :
    hint("Declaration of " & "avimagecopyucfrom" &
        " already exists, not redeclaring")
when not declared(avimagefillarrays):
  proc avimagefillarrays*(dstdata: array[4'i64, ptr uint8];
                          dstlinesize: array[4'i64, cint]; src: ptr uint8;
                          pixfmt: enumavpixelformat_520095704; width: cint;
                          height: cint; align: cint): cint {.cdecl,
      importc: "av_image_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avimagefillarrays" &
        " already exists, not redeclaring")
when not declared(avimagegetbuffersize):
  proc avimagegetbuffersize*(pixfmt: enumavpixelformat_520095704; width: cint;
                             height: cint; align: cint): cint {.cdecl,
      importc: "av_image_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avimagegetbuffersize" &
        " already exists, not redeclaring")
when not declared(avimagecopytobuffer):
  proc avimagecopytobuffer*(dst: ptr uint8; dstsize: cint;
                            srcdata: array[4'i64, ptr uint8];
                            srclinesize: array[4'i64, cint];
                            pixfmt: enumavpixelformat_520095704; width: cint;
                            height: cint; align: cint): cint {.cdecl,
      importc: "av_image_copy_to_buffer".}
else:
  static :
    hint("Declaration of " & "avimagecopytobuffer" &
        " already exists, not redeclaring")
when not declared(avimagechecksize):
  proc avimagechecksize*(w: cuint; h: cuint; logoffset: cint; logctx: pointer): cint {.
      cdecl, importc: "av_image_check_size".}
else:
  static :
    hint("Declaration of " & "avimagechecksize" &
        " already exists, not redeclaring")
when not declared(avimagechecksize2):
  proc avimagechecksize2*(w: cuint; h: cuint; maxpixels: int64;
                          pixfmt: enumavpixelformat_520095704; logoffset: cint;
                          logctx: pointer): cint {.cdecl,
      importc: "av_image_check_size2".}
else:
  static :
    hint("Declaration of " & "avimagechecksize2" &
        " already exists, not redeclaring")
when not declared(avimagechecksar):
  proc avimagechecksar*(w: cuint; h: cuint; sar: Avrational_520095726): cint {.
      cdecl, importc: "av_image_check_sar".}
else:
  static :
    hint("Declaration of " & "avimagechecksar" &
        " already exists, not redeclaring")
when not declared(avimagefillblack):
  proc avimagefillblack*(dstdata: array[4'i64, ptr uint8];
                         dstlinesize: array[4'i64, ptrdifft_520095728];
                         pixfmt: enumavpixelformat_520095704;
                         range: enumavcolorrange_520095712; width: cint;
                         height: cint): cint {.cdecl,
      importc: "av_image_fill_black".}
else:
  static :
    hint("Declaration of " & "avimagefillblack" &
        " already exists, not redeclaring")
when not declared(avimagefillcolor):
  proc avimagefillcolor*(dstdata: array[4'i64, ptr uint8];
                         dstlinesize: array[4'i64, ptrdifft_520095728];
                         pixfmt: enumavpixelformat_520095704;
                         color: array[4'i64, uint32]; width: cint; height: cint;
                         flags: cint): cint {.cdecl,
      importc: "av_image_fill_color".}
else:
  static :
    hint("Declaration of " & "avimagefillcolor" &
        " already exists, not redeclaring")