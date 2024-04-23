
from macros import hint

when not declared(Avframecropunaligned):
  const
    Avframecropunaligned* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avframecropunaligned" &
        " already exists, not redeclaring")
when not declared(Avhwframemapread):
  const
    Avhwframemapread* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avhwframemapread" &
        " already exists, not redeclaring")
when not declared(Avhwframemapwrite):
  const
    Avhwframemapwrite* = cuint(2)
else:
  static :
    hint("Declaration of " & "Avhwframemapwrite" &
        " already exists, not redeclaring")
when not declared(Avhwframemapoverwrite):
  const
    Avhwframemapoverwrite* = cuint(4)
else:
  static :
    hint("Declaration of " & "Avhwframemapoverwrite" &
        " already exists, not redeclaring")
when not declared(Avhwframemapdirect):
  const
    Avhwframemapdirect* = cuint(8)
else:
  static :
    hint("Declaration of " & "Avhwframemapdirect" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfigmethodhwdevicectx):
  const
    Avcodechwconfigmethodhwdevicectx* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avcodechwconfigmethodhwdevicectx" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfigmethodhwframesctx):
  const
    Avcodechwconfigmethodhwframesctx* = cuint(2)
else:
  static :
    hint("Declaration of " & "Avcodechwconfigmethodhwframesctx" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfigmethodinternal):
  const
    Avcodechwconfigmethodinternal* = cuint(4)
else:
  static :
    hint("Declaration of " & "Avcodechwconfigmethodinternal" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfigmethodadhoc):
  const
    Avcodechwconfigmethodadhoc* = cuint(8)
else:
  static :
    hint("Declaration of " & "Avcodechwconfigmethodadhoc" &
        " already exists, not redeclaring")
when not declared(enumavclasscategory):
  type
    enumavclasscategory* {.size: sizeof(cuint).} = enum
      Avclasscategoryna = 0, Avclasscategoryinput = 1,
      Avclasscategoryoutput = 2, Avclasscategorymuxer = 3,
      Avclasscategorydemuxer = 4, Avclasscategoryencoder = 5,
      Avclasscategorydecoder = 6, Avclasscategoryfilter = 7,
      Avclasscategorybitstreamfilter = 8, Avclasscategoryswscaler = 9,
      Avclasscategoryswresampler = 10, Avclasscategorydevicevideooutput = 40,
      Avclasscategorydevicevideoinput = 41,
      Avclasscategorydeviceaudiooutput = 42,
      Avclasscategorydeviceaudioinput = 43, Avclasscategorydeviceoutput = 44,
      Avclasscategorydeviceinput = 45, Avclasscategorynb = 46
else:
  static :
    hint("Declaration of " & "enumavclasscategory" &
        " already exists, not redeclaring")
when not declared(enumaviodirentrytype):
  type
    enumaviodirentrytype* {.size: sizeof(cuint).} = enum
      Avioentryunknown = 0, Avioentryblockdevice = 1,
      Avioentrycharacterdevice = 2, Avioentrydirectory = 3,
      Avioentrynamedpipe = 4, Avioentrysymboliclink = 5, Avioentrysocket = 6,
      Avioentryfile = 7, Avioentryserver = 8, Avioentryshare = 9,
      Avioentryworkgroup = 10
else:
  static :
    hint("Declaration of " & "enumaviodirentrytype" &
        " already exists, not redeclaring")
when not declared(enumaviodatamarkertype):
  type
    enumaviodatamarkertype* {.size: sizeof(cuint).} = enum
      Aviodatamarkerheader = 0, Aviodatamarkersyncpoint = 1,
      Aviodatamarkerboundarypoint = 2, Aviodatamarkerunknown = 3,
      Aviodatamarkertrailer = 4, Aviodatamarkerflushpoint = 5
else:
  static :
    hint("Declaration of " & "enumaviodatamarkertype" &
        " already exists, not redeclaring")
when not declared(enumavmediatype):
  type
    enumavmediatype* {.size: sizeof(cint).} = enum
      Avmediatypeunknown = -1, Avmediatypevideo = 0, Avmediatypeaudio = 1,
      Avmediatypedata = 2, Avmediatypesubtitle = 3, Avmediatypeattachment = 4,
      Avmediatypenb = 5
else:
  static :
    hint("Declaration of " & "enumavmediatype" &
        " already exists, not redeclaring")
when not declared(enumavpicturetype):
  type
    enumavpicturetype* {.size: sizeof(cuint).} = enum
      Avpicturetypenone = 0, Avpicturetypei = 1, Avpicturetypep = 2,
      Avpicturetypeb = 3, Avpicturetypes = 4, Avpicturetypesi = 5,
      Avpicturetypesp = 6, Avpicturetypebi = 7
else:
  static :
    hint("Declaration of " & "enumavpicturetype" &
        " already exists, not redeclaring")
when not declared(enumavrounding):
  type
    enumavrounding* {.size: sizeof(cuint).} = enum
      Avroundzero = 0, Avroundinf = 1, Avrounddown = 2, Avroundup = 3,
      Avroundnearinf = 5, Avroundpassminmax = 8192
else:
  static :
    hint("Declaration of " & "enumavrounding" &
        " already exists, not redeclaring")
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
when not declared(enumavchannel):
  type
    enumavchannel* {.size: sizeof(cint).} = enum
      Avchannone = -1, Avchanfrontleft = 0, Avchanfrontright = 1,
      Avchanfrontcenter = 2, Avchanlowfrequency = 3, Avchanbackleft = 4,
      Avchanbackright = 5, Avchanfrontleftofcenter = 6,
      Avchanfrontrightofcenter = 7, Avchanbackcenter = 8, Avchansideleft = 9,
      Avchansideright = 10, Avchantopcenter = 11, Avchantopfrontleft = 12,
      Avchantopfrontcenter = 13, Avchantopfrontright = 14,
      Avchantopbackleft = 15, Avchantopbackcenter = 16, Avchantopbackright = 17,
      Avchanstereoleft = 29, Avchanstereoright = 30, Avchanwideleft = 31,
      Avchanwideright = 32, Avchansurrounddirectleft = 33,
      Avchansurrounddirectright = 34, Avchanlowfrequency2 = 35,
      Avchantopsideleft = 36, Avchantopsideright = 37,
      Avchanbottomfrontcenter = 38, Avchanbottomfrontleft = 39,
      Avchanbottomfrontright = 40, Avchanunused = 512, Avchanunknown = 768,
      Avchanambisonicbase = 1024, Avchanambisonicend = 2047
else:
  static :
    hint("Declaration of " & "enumavchannel" &
        " already exists, not redeclaring")
when not declared(enumavchannelorder):
  type
    enumavchannelorder* {.size: sizeof(cuint).} = enum
      Avchannelorderunspec = 0, Avchannelordernative = 1,
      Avchannelordercustom = 2, Avchannelorderambisonic = 3,
      Ffchannelordernb = 4
else:
  static :
    hint("Declaration of " & "enumavchannelorder" &
        " already exists, not redeclaring")
when not declared(enumavmatrixencoding):
  type
    enumavmatrixencoding* {.size: sizeof(cuint).} = enum
      Avmatrixencodingnone = 0, Avmatrixencodingdolby = 1,
      Avmatrixencodingdplii = 2, Avmatrixencodingdpliix = 3,
      Avmatrixencodingdpliiz = 4, Avmatrixencodingdolbyex = 5,
      Avmatrixencodingdolbyheadphone = 6, Avmatrixencodingnb = 7
else:
  static :
    hint("Declaration of " & "enumavmatrixencoding" &
        " already exists, not redeclaring")
when not declared(enumavsampleformat):
  type
    enumavsampleformat* {.size: sizeof(cint).} = enum
      Avsamplefmtnone = -1, Avsamplefmtu8 = 0, Avsamplefmts16 = 1,
      Avsamplefmts32 = 2, Avsamplefmtflt = 3, Avsamplefmtdbl = 4,
      Avsamplefmtu8p = 5, Avsamplefmts16p = 6, Avsamplefmts32p = 7,
      Avsamplefmtfltp = 8, Avsamplefmtdblp = 9, Avsamplefmts64 = 10,
      Avsamplefmts64p = 11, Avsamplefmtnb = 12
else:
  static :
    hint("Declaration of " & "enumavsampleformat" &
        " already exists, not redeclaring")
when not declared(enumavcodecid):
  type
    enumavcodecid* {.size: sizeof(cuint).} = enum
      Avcodecidnone = 0, Avcodecidmpeg1video = 1, Avcodecidmpeg2video = 2,
      Avcodecidh261 = 3, Avcodecidh263 = 4, Avcodecidrv10 = 5,
      Avcodecidrv20 = 6, Avcodecidmjpeg = 7, Avcodecidmjpegb = 8,
      Avcodecidljpeg = 9, Avcodecidsp5x = 10, Avcodecidjpegls = 11,
      Avcodecidmpeg4 = 12, Avcodecidrawvideo = 13, Avcodecidmsmpeg4v1 = 14,
      Avcodecidmsmpeg4v2 = 15, Avcodecidmsmpeg4v3 = 16, Avcodecidwmv1 = 17,
      Avcodecidwmv2 = 18, Avcodecidh263p = 19, Avcodecidh263i = 20,
      Avcodecidflv1 = 21, Avcodecidsvq1 = 22, Avcodecidsvq3 = 23,
      Avcodeciddvvideo = 24, Avcodecidhuffyuv = 25, Avcodecidcyuv = 26,
      Avcodecidh264 = 27, Avcodecidindeo3 = 28, Avcodecidvp3 = 29,
      Avcodecidtheora = 30, Avcodecidasv1 = 31, Avcodecidasv2 = 32,
      Avcodecidffv1 = 33, Avcodecid4xm = 34, Avcodecidvcr1 = 35,
      Avcodecidcljr = 36, Avcodecidmdec = 37, Avcodecidroq = 38,
      Avcodecidinterplayvideo = 39, Avcodecidxanwc3 = 40, Avcodecidxanwc4 = 41,
      Avcodecidrpza = 42, Avcodecidcinepak = 43, Avcodecidwsvqa = 44,
      Avcodecidmsrle = 45, Avcodecidmsvideo1 = 46, Avcodecididcin = 47,
      Avcodecid8bps = 48, Avcodecidsmc = 49, Avcodecidflic = 50,
      Avcodecidtruemotion1 = 51, Avcodecidvmdvideo = 52, Avcodecidmszh = 53,
      Avcodecidzlib = 54, Avcodecidqtrle = 55, Avcodecidtscc = 56,
      Avcodecidulti = 57, Avcodecidqdraw = 58, Avcodecidvixl = 59,
      Avcodecidqpeg = 60, Avcodecidpng = 61, Avcodecidppm = 62,
      Avcodecidpbm = 63, Avcodecidpgm = 64, Avcodecidpgmyuv = 65,
      Avcodecidpam = 66, Avcodecidffvhuff = 67, Avcodecidrv30 = 68,
      Avcodecidrv40 = 69, Avcodecidvc1 = 70, Avcodecidwmv3 = 71,
      Avcodecidloco = 72, Avcodecidwnv1 = 73, Avcodecidaasc = 74,
      Avcodecidindeo2 = 75, Avcodecidfraps = 76, Avcodecidtruemotion2 = 77,
      Avcodecidbmp = 78, Avcodecidcscd = 79, Avcodecidmmvideo = 80,
      Avcodecidzmbv = 81, Avcodecidavs = 82, Avcodecidsmackvideo = 83,
      Avcodecidnuv = 84, Avcodecidkmvc = 85, Avcodecidflashsv = 86,
      Avcodecidcavs = 87, Avcodecidjpeg2000 = 88, Avcodecidvmnc = 89,
      Avcodecidvp5 = 90, Avcodecidvp6 = 91, Avcodecidvp6f = 92,
      Avcodecidtarga = 93, Avcodeciddsicinvideo = 94,
      Avcodecidtiertexseqvideo = 95, Avcodecidtiff = 96, Avcodecidgif = 97,
      Avcodeciddxa = 98, Avcodeciddnxhd = 99, Avcodecidthp = 100,
      Avcodecidsgi = 101, Avcodecidc93 = 102, Avcodecidbethsoftvid = 103,
      Avcodecidptx = 104, Avcodecidtxd = 105, Avcodecidvp6a = 106,
      Avcodecidamv = 107, Avcodecidvb = 108, Avcodecidpcx = 109,
      Avcodecidsunrast = 110, Avcodecidindeo4 = 111, Avcodecidindeo5 = 112,
      Avcodecidmimic = 113, Avcodecidrl2 = 114, Avcodecidescape124 = 115,
      Avcodeciddirac = 116, Avcodecidbfi = 117, Avcodecidcmv = 118,
      Avcodecidmotionpixels = 119, Avcodecidtgv = 120, Avcodecidtgq = 121,
      Avcodecidtqi = 122, Avcodecidaura = 123, Avcodecidaura2 = 124,
      Avcodecidv210x = 125, Avcodecidtmv = 126, Avcodecidv210 = 127,
      Avcodeciddpx = 128, Avcodecidmad = 129, Avcodecidfrwu = 130,
      Avcodecidflashsv2 = 131, Avcodecidcdgraphics = 132, Avcodecidr210 = 133,
      Avcodecidanm = 134, Avcodecidbinkvideo = 135, Avcodecidiffilbm = 136,
      Avcodecidkgv1 = 137, Avcodecidyop = 138, Avcodecidvp8 = 139,
      Avcodecidpictor = 140, Avcodecidansi = 141, Avcodecida64multi = 142,
      Avcodecida64multi5 = 143, Avcodecidr10k = 144, Avcodecidmxpeg = 145,
      Avcodecidlagarith = 146, Avcodecidprores = 147, Avcodecidjv = 148,
      Avcodeciddfa = 149, Avcodecidwmv3image = 150, Avcodecidvc1image = 151,
      Avcodecidutvideo = 152, Avcodecidbmvvideo = 153, Avcodecidvble = 154,
      Avcodeciddxtory = 155, Avcodecidv410 = 156, Avcodecidxwd = 157,
      Avcodecidcdxl = 158, Avcodecidxbm = 159, Avcodecidzerocodec = 160,
      Avcodecidmss1 = 161, Avcodecidmsa1 = 162, Avcodecidtscc2 = 163,
      Avcodecidmts2 = 164, Avcodecidcllc = 165, Avcodecidmss2 = 166,
      Avcodecidvp9 = 167, Avcodecidaic = 168, Avcodecidescape130 = 169,
      Avcodecidg2m = 170, Avcodecidwebp = 171, Avcodecidhnm4video = 172,
      Avcodecidhevc = 173, Avcodecidfic = 174, Avcodecidaliaspix = 175,
      Avcodecidbrenderpix = 176, Avcodecidpafvideo = 177, Avcodecidexr = 178,
      Avcodecidvp7 = 179, Avcodecidsanm = 180, Avcodecidsgirle = 181,
      Avcodecidmvc1 = 182, Avcodecidmvc2 = 183, Avcodecidhqx = 184,
      Avcodecidtdsc = 185, Avcodecidhqhqa = 186, Avcodecidhap = 187,
      Avcodeciddds = 188, Avcodeciddxv = 189, Avcodecidscreenpresso = 190,
      Avcodecidrscc = 191, Avcodecidavs2 = 192, Avcodecidpgx = 193,
      Avcodecidavs3 = 194, Avcodecidmsp2 = 195, Avcodecidvvc = 196,
      Avcodecidy41p = 197, Avcodecidavrp = 198, Avcodecid012v = 199,
      Avcodecidavui = 200, Avcodecidtargay216 = 201, Avcodecidv308 = 202,
      Avcodecidv408 = 203, Avcodecidyuv4 = 204, Avcodecidavrn = 205,
      Avcodecidcpia = 206, Avcodecidxface = 207, Avcodecidsnow = 208,
      Avcodecidsmvjpeg = 209, Avcodecidapng = 210, Avcodeciddaala = 211,
      Avcodecidcfhd = 212, Avcodecidtruemotion2rt = 213, Avcodecidm101 = 214,
      Avcodecidmagicyuv = 215, Avcodecidsheervideo = 216, Avcodecidylc = 217,
      Avcodecidpsd = 218, Avcodecidpixlet = 219, Avcodecidspeedhq = 220,
      Avcodecidfmvc = 221, Avcodecidscpr = 222, Avcodecidclearvideo = 223,
      Avcodecidxpm = 224, Avcodecidav1 = 225, Avcodecidbitpacked = 226,
      Avcodecidmscc = 227, Avcodecidsrgc = 228, Avcodecidsvg = 229,
      Avcodecidgdv = 230, Avcodecidfits = 231, Avcodecidimm4 = 232,
      Avcodecidprosumer = 233, Avcodecidmwsc = 234, Avcodecidwcmv = 235,
      Avcodecidrasc = 236, Avcodecidhymt = 237, Avcodecidarbc = 238,
      Avcodecidagm = 239, Avcodecidlscr = 240, Avcodecidvp4 = 241,
      Avcodecidimm5 = 242, Avcodecidmvdv = 243, Avcodecidmvha = 244,
      Avcodecidcdtoons = 245, Avcodecidmv30 = 246, Avcodecidnotchlc = 247,
      Avcodecidpfm = 248, Avcodecidmobiclip = 249, Avcodecidphotocd = 250,
      Avcodecidipu = 251, Avcodecidargo = 252, Avcodecidcri = 253,
      Avcodecidsimbiosisimx = 254, Avcodecidsgavideo = 255, Avcodecidgem = 256,
      Avcodecidvbn = 257, Avcodecidjpegxl = 258, Avcodecidqoi = 259,
      Avcodecidphm = 260, Avcodecidradiancehdr = 261, Avcodecidwbmp = 262,
      Avcodecidmedia100 = 263, Avcodecidvqc = 264, Avcodecidpdv = 265,
      Avcodecidevc = 266, Avcodecidrtv1 = 267, Avcodecidvmix = 268,
      Avcodecidlead = 269, Avcodecidfirstaudio = 65536,
      Avcodecidpcms16be = 65537, Avcodecidpcmu16le = 65538,
      Avcodecidpcmu16be = 65539, Avcodecidpcms8 = 65540, Avcodecidpcmu8 = 65541,
      Avcodecidpcmmulaw = 65542, Avcodecidpcmalaw = 65543,
      Avcodecidpcms32le = 65544, Avcodecidpcms32be = 65545,
      Avcodecidpcmu32le = 65546, Avcodecidpcmu32be = 65547,
      Avcodecidpcms24le = 65548, Avcodecidpcms24be = 65549,
      Avcodecidpcmu24le = 65550, Avcodecidpcmu24be = 65551,
      Avcodecidpcms24daud = 65552, Avcodecidpcmzork = 65553,
      Avcodecidpcms16leplanar = 65554, Avcodecidpcmdvd = 65555,
      Avcodecidpcmf32be = 65556, Avcodecidpcmf32le = 65557,
      Avcodecidpcmf64be = 65558, Avcodecidpcmf64le = 65559,
      Avcodecidpcmbluray = 65560, Avcodecidpcmlxf = 65561,
      Avcodecids302m = 65562, Avcodecidpcms8planar = 65563,
      Avcodecidpcms24leplanar = 65564, Avcodecidpcms32leplanar = 65565,
      Avcodecidpcms16beplanar = 65566, Avcodecidpcms64le = 65567,
      Avcodecidpcms64be = 65568, Avcodecidpcmf16le = 65569,
      Avcodecidpcmf24le = 65570, Avcodecidpcmvidc = 65571,
      Avcodecidpcmsga = 65572, Avcodecidadpcmimaqt = 69632,
      Avcodecidadpcmimawav = 69633, Avcodecidadpcmimadk3 = 69634,
      Avcodecidadpcmimadk4 = 69635, Avcodecidadpcmimaws = 69636,
      Avcodecidadpcmimasmjpeg = 69637, Avcodecidadpcmms = 69638,
      Avcodecidadpcm4xm = 69639, Avcodecidadpcmxa = 69640,
      Avcodecidadpcmadx = 69641, Avcodecidadpcmea = 69642,
      Avcodecidadpcmg726 = 69643, Avcodecidadpcmct = 69644,
      Avcodecidadpcmswf = 69645, Avcodecidadpcmyamaha = 69646,
      Avcodecidadpcmsbpro4 = 69647, Avcodecidadpcmsbpro3 = 69648,
      Avcodecidadpcmsbpro2 = 69649, Avcodecidadpcmthp = 69650,
      Avcodecidadpcmimaamv = 69651, Avcodecidadpcmear1 = 69652,
      Avcodecidadpcmear3 = 69653, Avcodecidadpcmear2 = 69654,
      Avcodecidadpcmimaeasead = 69655, Avcodecidadpcmimaeaeacs = 69656,
      Avcodecidadpcmeaxas = 69657, Avcodecidadpcmeamaxisxa = 69658,
      Avcodecidadpcmimaiss = 69659, Avcodecidadpcmg722 = 69660,
      Avcodecidadpcmimaapc = 69661, Avcodecidadpcmvima = 69662,
      Avcodecidadpcmafc = 69663, Avcodecidadpcmimaoki = 69664,
      Avcodecidadpcmdtk = 69665, Avcodecidadpcmimarad = 69666,
      Avcodecidadpcmg726le = 69667, Avcodecidadpcmthple = 69668,
      Avcodecidadpcmpsx = 69669, Avcodecidadpcmaica = 69670,
      Avcodecidadpcmimadat4 = 69671, Avcodecidadpcmmtaf = 69672,
      Avcodecidadpcmagm = 69673, Avcodecidadpcmargo = 69674,
      Avcodecidadpcmimassi = 69675, Avcodecidadpcmzork = 69676,
      Avcodecidadpcmimaapm = 69677, Avcodecidadpcmimaalp = 69678,
      Avcodecidadpcmimamtf = 69679, Avcodecidadpcmimacunning = 69680,
      Avcodecidadpcmimamoflex = 69681, Avcodecidadpcmimaacorn = 69682,
      Avcodecidadpcmxmd = 69683, Avcodecidamrnb = 73728, Avcodecidamrwb = 73729,
      Avcodecidra144 = 77824, Avcodecidra288 = 77825, Avcodecidroqdpcm = 81920,
      Avcodecidinterplaydpcm = 81921, Avcodecidxandpcm = 81922,
      Avcodecidsoldpcm = 81923, Avcodecidsdx2dpcm = 81924,
      Avcodecidgremlindpcm = 81925, Avcodecidderfdpcm = 81926,
      Avcodecidwadydpcm = 81927, Avcodecidcbd2dpcm = 81928,
      Avcodecidmp2 = 86016, Avcodecidmp3 = 86017, Avcodecidaac = 86018,
      Avcodecidac3 = 86019, Avcodeciddts = 86020, Avcodecidvorbis = 86021,
      Avcodeciddvaudio = 86022, Avcodecidwmav1 = 86023, Avcodecidwmav2 = 86024,
      Avcodecidmace3 = 86025, Avcodecidmace6 = 86026, Avcodecidvmdaudio = 86027,
      Avcodecidflac = 86028, Avcodecidmp3adu = 86029, Avcodecidmp3on4 = 86030,
      Avcodecidshorten = 86031, Avcodecidalac = 86032,
      Avcodecidwestwoodsnd1 = 86033, Avcodecidgsm = 86034,
      Avcodecidqdm2 = 86035, Avcodecidcook = 86036, Avcodecidtruespeech = 86037,
      Avcodecidtta = 86038, Avcodecidsmackaudio = 86039, Avcodecidqcelp = 86040,
      Avcodecidwavpack = 86041, Avcodeciddsicinaudio = 86042,
      Avcodecidimc = 86043, Avcodecidmusepack7 = 86044, Avcodecidmlp = 86045,
      Avcodecidgsmms = 86046, Avcodecidatrac3 = 86047, Avcodecidape = 86048,
      Avcodecidnellymoser = 86049, Avcodecidmusepack8 = 86050,
      Avcodecidspeex = 86051, Avcodecidwmavoice = 86052,
      Avcodecidwmapro = 86053, Avcodecidwmalossless = 86054,
      Avcodecidatrac3p = 86055, Avcodecideac3 = 86056, Avcodecidsipr = 86057,
      Avcodecidmp1 = 86058, Avcodecidtwinvq = 86059, Avcodecidtruehd = 86060,
      Avcodecidmp4als = 86061, Avcodecidatrac1 = 86062,
      Avcodecidbinkaudiordft = 86063, Avcodecidbinkaudiodct = 86064,
      Avcodecidaaclatm = 86065, Avcodecidqdmc = 86066, Avcodecidcelt = 86067,
      Avcodecidg7231 = 86068, Avcodecidg729 = 86069, Avcodecid8svxexp = 86070,
      Avcodecid8svxfib = 86071, Avcodecidbmvaudio = 86072,
      Avcodecidralf = 86073, Avcodecidiac = 86074, Avcodecidilbc = 86075,
      Avcodecidopus = 86076, Avcodecidcomfortnoise = 86077,
      Avcodecidtak = 86078, Avcodecidmetasound = 86079,
      Avcodecidpafaudio = 86080, Avcodecidon2avc = 86081,
      Avcodeciddsssp = 86082, Avcodecidcodec2 = 86083,
      Avcodecidffwavesynth = 86084, Avcodecidsonic = 86085,
      Avcodecidsonicls = 86086, Avcodecidevrc = 86087, Avcodecidsmv = 86088,
      Avcodeciddsdlsbf = 86089, Avcodeciddsdmsbf = 86090,
      Avcodeciddsdlsbfplanar = 86091, Avcodeciddsdmsbfplanar = 86092,
      Avcodecid4gv = 86093, Avcodecidinterplayacm = 86094,
      Avcodecidxma1 = 86095, Avcodecidxma2 = 86096, Avcodeciddst = 86097,
      Avcodecidatrac3al = 86098, Avcodecidatrac3pal = 86099,
      Avcodeciddolbye = 86100, Avcodecidaptx = 86101, Avcodecidaptxhd = 86102,
      Avcodecidsbc = 86103, Avcodecidatrac9 = 86104, Avcodecidhcom = 86105,
      Avcodecidacelpkelvin = 86106, Avcodecidmpegh3daudio = 86107,
      Avcodecidsiren = 86108, Avcodecidhca = 86109, Avcodecidfastaudio = 86110,
      Avcodecidmsnsiren = 86111, Avcodeciddfpwm = 86112, Avcodecidbonk = 86113,
      Avcodecidmisc4 = 86114, Avcodecidapac = 86115, Avcodecidftr = 86116,
      Avcodecidwavarc = 86117, Avcodecidrka = 86118, Avcodecidac4 = 86119,
      Avcodecidosq = 86120, Avcodecidqoa = 86121, Avcodecidlc3 = 86122,
      Avcodecidfirstsubtitle = 94208, Avcodeciddvbsubtitle = 94209,
      Avcodecidtext = 94210, Avcodecidxsub = 94211, Avcodecidssa = 94212,
      Avcodecidmovtext = 94213, Avcodecidhdmvpgssubtitle = 94214,
      Avcodeciddvbteletext = 94215, Avcodecidsrt = 94216,
      Avcodecidmicrodvd = 94217, Avcodecideia608 = 94218,
      Avcodecidjacosub = 94219, Avcodecidsami = 94220,
      Avcodecidrealtext = 94221, Avcodecidstl = 94222,
      Avcodecidsubviewer1 = 94223, Avcodecidsubviewer = 94224,
      Avcodecidsubrip = 94225, Avcodecidwebvtt = 94226, Avcodecidmpl2 = 94227,
      Avcodecidvplayer = 94228, Avcodecidpjs = 94229, Avcodecidass = 94230,
      Avcodecidhdmvtextsubtitle = 94231, Avcodecidttml = 94232,
      Avcodecidaribcaption = 94233, Avcodecidfirstunknown = 98304,
      Avcodecidscte35 = 98305, Avcodecidepg = 98306, Avcodecidbintext = 98307,
      Avcodecidxbin = 98308, Avcodecididf = 98309, Avcodecidotf = 98310,
      Avcodecidsmpteklv = 98311, Avcodeciddvdnav = 98312,
      Avcodecidtimedid3 = 98313, Avcodecidbindata = 98314,
      Avcodecidsmpte2038 = 98315, Avcodecidprobe = 102400,
      Avcodecidmpeg2ts = 131072, Avcodecidmpeg4systems = 131073,
      Avcodecidffmetadata = 135168, Avcodecidwrappedavframe = 135169,
      Avcodecidvnull = 135170, Avcodecidanull = 135171
else:
  static :
    hint("Declaration of " & "enumavcodecid" &
        " already exists, not redeclaring")
when not declared(Avcodecidpcms16le):
  const
    Avcodecidpcms16le* = enumavcodecid.Avcodecidfirstaudio
else:
  static :
    hint("Declaration of " & "Avcodecidpcms16le" &
        " already exists, not redeclaring")
when not declared(Avcodeciddvdsubtitle):
  const
    Avcodeciddvdsubtitle* = enumavcodecid.Avcodecidfirstsubtitle
else:
  static :
    hint("Declaration of " & "Avcodeciddvdsubtitle" &
        " already exists, not redeclaring")
when not declared(Avcodecidttf):
  const
    Avcodecidttf* = enumavcodecid.Avcodecidfirstunknown
else:
  static :
    hint("Declaration of " & "Avcodecidttf" & " already exists, not redeclaring")
when not declared(enumavfieldorder):
  type
    enumavfieldorder* {.size: sizeof(cuint).} = enum
      Avfieldunknown = 0, Avfieldprogressive = 1, Avfieldtt = 2, Avfieldbb = 3,
      Avfieldtb = 4, Avfieldbt = 5
else:
  static :
    hint("Declaration of " & "enumavfieldorder" &
        " already exists, not redeclaring")
when not declared(enumavdiscard):
  type
    enumavdiscard* {.size: sizeof(cint).} = enum
      Avdiscardnone = -16, Avdiscarddefault = 0, Avdiscardnonref = 8,
      Avdiscardbidir = 16, Avdiscardnonintra = 24, Avdiscardnonkey = 32,
      Avdiscardall = 48
else:
  static :
    hint("Declaration of " & "enumavdiscard" &
        " already exists, not redeclaring")
when not declared(enumavaudioservicetype):
  type
    enumavaudioservicetype* {.size: sizeof(cuint).} = enum
      Avaudioservicetypemain = 0, Avaudioservicetypeeffects = 1,
      Avaudioservicetypevisuallyimpaired = 2,
      Avaudioservicetypehearingimpaired = 3, Avaudioservicetypedialogue = 4,
      Avaudioservicetypecommentary = 5, Avaudioservicetypeemergency = 6,
      Avaudioservicetypevoiceover = 7, Avaudioservicetypekaraoke = 8,
      Avaudioservicetypenb = 9
else:
  static :
    hint("Declaration of " & "enumavaudioservicetype" &
        " already exists, not redeclaring")
when not declared(enumavpacketsidedatatype):
  type
    enumavpacketsidedatatype* {.size: sizeof(cuint).} = enum
      Avpktdatapalette = 0, Avpktdatanewextradata = 1, Avpktdataparamchange = 2,
      Avpktdatah263mbinfo = 3, Avpktdatareplaygain = 4,
      Avpktdatadisplaymatrix = 5, Avpktdatastereo3d = 6,
      Avpktdataaudioservicetype = 7, Avpktdataqualitystats = 8,
      Avpktdatafallbacktrack = 9, Avpktdatacpbproperties = 10,
      Avpktdataskipsamples = 11, Avpktdatajpdualmono = 12,
      Avpktdatastringsmetadata = 13, Avpktdatasubtitleposition = 14,
      Avpktdatamatroskablockadditional = 15, Avpktdatawebvttidentifier = 16,
      Avpktdatawebvttsettings = 17, Avpktdatametadataupdate = 18,
      Avpktdatampegtsstreamid = 19, Avpktdatamasteringdisplaymetadata = 20,
      Avpktdataspherical = 21, Avpktdatacontentlightlevel = 22,
      Avpktdataa53cc = 23, Avpktdataencryptioninitinfo = 24,
      Avpktdataencryptioninfo = 25, Avpktdataafd = 26, Avpktdataprft = 27,
      Avpktdataiccprofile = 28, Avpktdatadoviconf = 29,
      Avpktdatas12mtimecode = 30, Avpktdatadynamichdr10plus = 31,
      Avpktdataiamfmixgainparam = 32, Avpktdataiamfdemixinginfoparam = 33,
      Avpktdataiamfrecongaininfoparam = 34,
      Avpktdataambientviewingenvironment = 35, Avpktdatanb = 36
else:
  static :
    hint("Declaration of " & "enumavpacketsidedatatype" &
        " already exists, not redeclaring")
when not declared(enumavsidedataparamchangeflags):
  type
    enumavsidedataparamchangeflags* {.size: sizeof(cuint).} = enum
      Avsidedataparamchangesamplerate = 4, Avsidedataparamchangedimensions = 8
else:
  static :
    hint("Declaration of " & "enumavsidedataparamchangeflags" &
        " already exists, not redeclaring")
when not declared(enumavframesidedatatype):
  type
    enumavframesidedatatype* {.size: sizeof(cuint).} = enum
      Avframedatapanscan = 0, Avframedataa53cc = 1, Avframedatastereo3d = 2,
      Avframedatamatrixencoding = 3, Avframedatadownmixinfo = 4,
      Avframedatareplaygain = 5, Avframedatadisplaymatrix = 6,
      Avframedataafd = 7, Avframedatamotionvectors = 8,
      Avframedataskipsamples = 9, Avframedataaudioservicetype = 10,
      Avframedatamasteringdisplaymetadata = 11, Avframedatagoptimecode = 12,
      Avframedataspherical = 13, Avframedatacontentlightlevel = 14,
      Avframedataiccprofile = 15, Avframedatas12mtimecode = 16,
      Avframedatadynamichdrplus = 17, Avframedataregionsofinterest = 18,
      Avframedatavideoencparams = 19, Avframedataseiunregistered = 20,
      Avframedatafilmgrainparams = 21, Avframedatadetectionbboxes = 22,
      Avframedatadovirpubuffer = 23, Avframedatadovimetadata = 24,
      Avframedatadynamichdrvivid = 25,
      Avframedataambientviewingenvironment = 26, Avframedatavideohint = 27
else:
  static :
    hint("Declaration of " & "enumavframesidedatatype" &
        " already exists, not redeclaring")
when not declared(enumavactiveformatdescription):
  type
    enumavactiveformatdescription* {.size: sizeof(cuint).} = enum
      Avafdsame = 8, Avafd43 = 9, Avafd169 = 10, Avafd149 = 11,
      Avafd43sp149 = 13, Avafd169sp149 = 14, Avafdsp43 = 15
else:
  static :
    hint("Declaration of " & "enumavactiveformatdescription" &
        " already exists, not redeclaring")
when not declared(enumavsidedataprops):
  type
    enumavsidedataprops* {.size: sizeof(cuint).} = enum
      Avsidedatapropglobal = 1, Avsidedatapropmulti = 2
else:
  static :
    hint("Declaration of " & "enumavsidedataprops" &
        " already exists, not redeclaring")
when not declared(enumavhwdevicetype):
  type
    enumavhwdevicetype* {.size: sizeof(cuint).} = enum
      Avhwdevicetypenone = 0, Avhwdevicetypevdpau = 1, Avhwdevicetypecuda = 2,
      Avhwdevicetypevaapi = 3, Avhwdevicetypedxva2 = 4, Avhwdevicetypeqsv = 5,
      Avhwdevicetypevideotoolbox = 6, Avhwdevicetyped3d11va = 7,
      Avhwdevicetypedrm = 8, Avhwdevicetypeopencl = 9,
      Avhwdevicetypemediacodec = 10, Avhwdevicetypevulkan = 11,
      Avhwdevicetyped3d12va = 12
else:
  static :
    hint("Declaration of " & "enumavhwdevicetype" &
        " already exists, not redeclaring")
when not declared(enumavhwframetransferdirection):
  type
    enumavhwframetransferdirection* {.size: sizeof(cuint).} = enum
      Avhwframetransferdirectionfrom = 0, Avhwframetransferdirectionto = 1
else:
  static :
    hint("Declaration of " & "enumavhwframetransferdirection" &
        " already exists, not redeclaring")
when not declared(enumavstreamparsetype):
  type
    enumavstreamparsetype* {.size: sizeof(cuint).} = enum
      Avstreamparsenone = 0, Avstreamparsefull = 1, Avstreamparseheaders = 2,
      Avstreamparsetimestamps = 3, Avstreamparsefullonce = 4,
      Avstreamparsefullraw = 5
else:
  static :
    hint("Declaration of " & "enumavstreamparsetype" &
        " already exists, not redeclaring")
when not declared(enumavdurationestimationmethod):
  type
    enumavdurationestimationmethod* {.size: sizeof(cuint).} = enum
      Avfmtdurationfrompts = 0, Avfmtdurationfromstream = 1,
      Avfmtdurationfrombitrate = 2
else:
  static :
    hint("Declaration of " & "enumavdurationestimationmethod" &
        " already exists, not redeclaring")
when not declared(enumavtimebasesource):
  type
    enumavtimebasesource* {.size: sizeof(cint).} = enum
      Avfmttbcfauto = -1, Avfmttbcfdecoder = 0, Avfmttbcfdemuxer = 1,
      Avfmttbcfrframerate = 2
else:
  static :
    hint("Declaration of " & "enumavtimebasesource" &
        " already exists, not redeclaring")
when not declared(authority):
  type
    authority* = distinct object
else:
  static :
    hint("Declaration of " & "authority" & " already exists, not redeclaring")
when not declared(path):
  type
    path* = distinct object
else:
  static :
    hint("Declaration of " & "path" & " already exists, not redeclaring")
when not declared(structavdeviceinfolist):
  type
    structavdeviceinfolist* = distinct object
else:
  static :
    hint("Declaration of " & "structavdeviceinfolist" &
        " already exists, not redeclaring")
when not declared(structavbprint):
  type
    structavbprint* = distinct object
else:
  static :
    hint("Declaration of " & "structavbprint" &
        " already exists, not redeclaring")
when not declared(structaviodircontext):
  type
    structaviodircontext* = distinct object
else:
  static :
    hint("Declaration of " & "structaviodircontext" &
        " already exists, not redeclaring")
when not declared(structavbufferpool):
  type
    structavbufferpool* = distinct object
else:
  static :
    hint("Declaration of " & "structavbufferpool" &
        " already exists, not redeclaring")
when not declared(fragment):
  type
    fragment* = distinct object
else:
  static :
    hint("Declaration of " & "fragment" & " already exists, not redeclaring")
when not declared(Avceilrshift):
  type
    Avceilrshift* = distinct object
else:
  static :
    hint("Declaration of " & "Avceilrshift" & " already exists, not redeclaring")
when not declared(structavcodectag):
  type
    structavcodectag* = distinct object
else:
  static :
    hint("Declaration of " & "structavcodectag" &
        " already exists, not redeclaring")
when not declared(structiowidedata):
  type
    structiowidedata* = distinct object
else:
  static :
    hint("Declaration of " & "structiowidedata" &
        " already exists, not redeclaring")
when not declared(Libavutilversionint):
  type
    Libavutilversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libavutilversionint" &
        " already exists, not redeclaring")
when not declared(structavoption):
  type
    structavoption* = distinct object
else:
  static :
    hint("Declaration of " & "structavoption" &
        " already exists, not redeclaring")
when not declared(userinfo):
  type
    userinfo* = distinct object
else:
  static :
    hint("Declaration of " & "userinfo" & " already exists, not redeclaring")
when not declared(host):
  type
    host* = distinct object
else:
  static :
    hint("Declaration of " & "host" & " already exists, not redeclaring")
when not declared(compilerbuiltinconstantp):
  type
    compilerbuiltinconstantp* = distinct object
else:
  static :
    hint("Declaration of " & "compilerbuiltinconstantp" &
        " already exists, not redeclaring")
when not declared(structavoptionranges):
  type
    structavoptionranges* = distinct object
else:
  static :
    hint("Declaration of " & "structavoptionranges" &
        " already exists, not redeclaring")
when not declared(Avchlayout5point1point2back):
  type
    Avchlayout5point1point2back* = distinct object
else:
  static :
    hint("Declaration of " & "Avchlayout5point1point2back" &
        " already exists, not redeclaring")
when not declared(structavdictionary):
  type
    structavdictionary* = distinct object
else:
  static :
    hint("Declaration of " & "structavdictionary" &
        " already exists, not redeclaring")
when not declared(query):
  type
    query* = distinct object
else:
  static :
    hint("Declaration of " & "query" & " already exists, not redeclaring")
when not declared(Fflambdascale):
  type
    Fflambdascale* = distinct object
else:
  static :
    hint("Declaration of " & "Fflambdascale" &
        " already exists, not redeclaring")
when not declared(structiocodecvt):
  type
    structiocodecvt* = distinct object
else:
  static :
    hint("Declaration of " & "structiocodecvt" &
        " already exists, not redeclaring")
when not declared(Avchfrontcenter):
  type
    Avchfrontcenter* = distinct object
else:
  static :
    hint("Declaration of " & "Avchfrontcenter" &
        " already exists, not redeclaring")
when not declared(Libavformatversionint):
  type
    Libavformatversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libavformatversionint" &
        " already exists, not redeclaring")
when not declared(structavcodecparsercontext):
  type
    structavcodecparsercontext* = distinct object
else:
  static :
    hint("Declaration of " & "structavcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(structavbuffer):
  type
    structavbuffer* = distinct object
else:
  static :
    hint("Declaration of " & "structavbuffer" &
        " already exists, not redeclaring")
when not declared(port):
  type
    port* = distinct object
else:
  static :
    hint("Declaration of " & "port" & " already exists, not redeclaring")
when not declared(Avchannellayout5point1point2back):
  type
    Avchannellayout5point1point2back* = distinct object
else:
  static :
    hint("Declaration of " & "Avchannellayout5point1point2back" &
        " already exists, not redeclaring")
when not declared(compilerbuiltinvalist):
  type
    compilerbuiltinvalist* = distinct object
else:
  static :
    hint("Declaration of " & "compilerbuiltinvalist" &
        " already exists, not redeclaring")
when not declared(structiomarker):
  type
    structiomarker* = distinct object
else:
  static :
    hint("Declaration of " & "structiomarker" &
        " already exists, not redeclaring")
type
  structavdictionaryentry_520094078 {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:89:16
    value*: cstring

  Avdictionaryentry_520094080 = structavdictionaryentry_520094079 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:92:3
  Avdictionary_520094082 = structavdictionary ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:94:29
  Avclasscategory_520094086 = enumavclasscategory_520094085 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:47:2
  structavclass_520094088 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094087
    getcategory*: proc (a0: pointer): Avclasscategory_520094087 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094089 {.
        cdecl.}

  Avclass_520094090 = structavclass_520094089 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:147:3
  valist_520094092 = compilerbuiltinvalist ## Generated based on /usr/lib/clang/17/include/stdarg.h:22:27
  structaviointerruptcb_520094094 {.pure, inheritable, bycopy.} = object
    callback*: proc (a0: pointer): cint {.cdecl.} ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:59:16
    opaque*: pointer

  Aviointerruptcb_520094096 = structaviointerruptcb_520094095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:62:3
  structaviodirentry_520094100 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:87:16
    typefield*: cint
    utf8*: cint
    size*: int64
    modificationtimestamp*: int64
    accesstimestamp*: int64
    statuschangetimestamp*: int64
    userid*: int64
    groupid*: int64
    filemode*: int64

  Aviodirentry_520094102 = structaviodirentry_520094101 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:102:3
  Aviodircontext_520094104 = structaviodircontext ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:104:31
  structaviocontext_520094108 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:160:16
    buffer*: ptr uint8
    buffersize*: cint
    bufptr*: ptr uint8
    bufend*: ptr uint8
    opaque*: pointer
    readpacket*: proc (a0: pointer; a1: ptr uint8; a2: cint): cint {.cdecl.}
    writepacket*: proc (a0: pointer; a1: ptr uint8; a2: cint): cint {.cdecl.}
    seek*: proc (a0: pointer; a1: int64; a2: cint): int64 {.cdecl.}
    pos*: int64
    eofreached*: cint
    error*: cint
    writeflag*: cint
    maxpacketsize*: cint
    minpacketsize*: cint
    checksum*: culong
    checksumptr*: ptr uint8
    updatechecksum*: proc (a0: culong; a1: ptr uint8; a2: cuint): culong {.cdecl.}
    readpause*: proc (a0: pointer; a1: cint): cint {.cdecl.}
    readseek*: proc (a0: pointer; a1: cint; a2: int64; a3: cint): int64 {.cdecl.}
    seekable*: cint
    direct*: cint
    protocolwhitelist*: cstring
    protocolblacklist*: cstring
    writedatatype*: proc (a0: pointer; a1: ptr uint8; a2: cint;
                          a3: enumaviodatamarkertype_520094107; a4: int64): cint {.
        cdecl.}
    ignoreboundarypoint*: cint
    bufptrmax*: ptr uint8
    bytesread*: int64
    byteswritten*: int64

  Aviocontext_520094110 = structaviocontext_520094109 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:307:3
  structurlcontext_520094112 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:35:16
    prot*: ptr structurlprotocol_520094115
    privdata*: pointer
    filename*: cstring
    flags*: cint
    maxpacketsize*: cint
    isstreamed*: cint
    isconnected*: cint
    interruptcallback*: Aviointerruptcb_520094097
    rwtimeout*: int64
    protocolwhitelist*: cstring
    protocolblacklist*: cstring
    minpacketsize*: cint

  structurlprotocol_520094114 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:51:16
    urlopen*: proc (a0: ptr Urlcontext_520094124; a1: cstring; a2: cint): cint {.
        cdecl.}
    urlopen2*: proc (a0: ptr Urlcontext_520094124; a1: cstring; a2: cint;
                     a3: ptr ptr Avdictionary_520094083): cint {.cdecl.}
    urlaccept*: proc (a0: ptr Urlcontext_520094124; a1: ptr ptr Urlcontext_520094124): cint {.
        cdecl.}
    urlhandshake*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlread*: proc (a0: ptr Urlcontext_520094124; a1: ptr uint8; a2: cint): cint {.
        cdecl.}
    urlwrite*: proc (a0: ptr Urlcontext_520094124; a1: ptr uint8; a2: cint): cint {.
        cdecl.}
    urlseek*: proc (a0: ptr Urlcontext_520094124; a1: int64; a2: cint): int64 {.
        cdecl.}
    urlclose*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlreadpause*: proc (a0: pointer; a1: cint): cint {.cdecl.}
    urlreadseek*: proc (a0: pointer; a1: cint; a2: int64; a3: cint): int64 {.
        cdecl.}
    urlgetfilehandle*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlgetmultifilehandle*: proc (a0: ptr Urlcontext_520094124;
                                  a1: ptr ptr cint; a2: ptr cint): cint {.cdecl.}
    urlgetshortseek*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlshutdown*: proc (a0: ptr Urlcontext_520094124; a1: cint): cint {.cdecl.}
    privdataclass*: ptr Avclass_520094091
    privdatasize*: cint
    flags*: cint
    urlcheck*: proc (a0: ptr Urlcontext_520094124; a1: cint): cint {.cdecl.}
    urlopendir*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlreaddir*: proc (a0: ptr Urlcontext_520094124; a1: ptr ptr Aviodirentry_520094103): cint {.
        cdecl.}
    urlclosedir*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urldelete*: proc (a0: ptr Urlcontext_520094124): cint {.cdecl.}
    urlmove*: proc (a0: ptr Urlcontext_520094124; a1: ptr Urlcontext_520094124): cint {.
        cdecl.}
    defaultwhitelist*: cstring

  Urlcontext_520094123 = structurlcontext_520094113 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:49:3
  Urlprotocol_520094125 = structurlprotocol_520094115 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:97:3
  structurlcomponents_520094127 {.pure, inheritable, bycopy.} = object
    url*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:359:16
    scheme*: cstring
    authority*: cstring
    userinfo*: cstring
    host*: cstring
    port*: cstring
    path*: cstring
    query*: cstring
    fragment*: cstring
    endfield*: cstring

  Urlcomponents_520094129 = structurlcomponents_520094128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:370:3
  structavrational_520094135 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094137 = structavrational_520094136 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:61:3
  unionavintfloat32_520094139 {.union, bycopy.} = object
    i*: uint32               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:27:7
    f*: cfloat

  unionavintfloat64_520094141 {.union, bycopy.} = object
    i*: uint64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:32:7
    f*: cdouble

  structavchannelcustom_520094163 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094158 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:267:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom_520094165 = structavchannelcustom_520094164 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:271:3
  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094166

  structavchannellayout_520094167 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094160 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:303:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout_520094169 = structavchannellayout_520094168 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:361:3
  structavpanscan_520094181 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:240:16
    width*: cint
    height*: cint
    position*: array[3'i64, array[2'i64, int16]]

  Avpanscan_520094183 = structavpanscan_520094182 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:262:3
  structavcpbproperties_520094185 {.pure, inheritable, bycopy.} = object
    maxbitrate*: int64       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:269:16
    minbitrate*: int64
    avgbitrate*: int64
    buffersize*: int64
    vbvdelay*: uint64

  Avcpbproperties_520094187 = structavcpbproperties_520094186 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:300:3
  structavproducerreferencetime_520094189 {.pure, inheritable, bycopy.} = object
    wallclock*: int64        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:318:16
    flags*: cint

  Avproducerreferencetime_520094191 = structavproducerreferencetime_520094190 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:324:3
  Avbuffer_520094193 = structavbuffer ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:74:25
  structavbufferref_520094195 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520094194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  Avbufferref_520094197 = structavbufferref_520094196 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:95:3
  Avbufferpool_520094199 = structavbufferpool ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:255:29
  structavpacketsidedata_520094203 {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:375:16
    size*: csize_t
    typefield*: enumavpacketsidedatatype_520094202

  Avpacketsidedata_520094205 = structavpacketsidedata_520094204 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:379:3
  structavpacket_520094207 {.pure, inheritable, bycopy.} = object
    buf*: ptr Avbufferref_520094198 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:501:16
    pts*: int64
    dts*: int64
    data*: ptr uint8
    size*: cint
    streamindex*: cint
    flags*: cint
    sidedata*: ptr Avpacketsidedata_520094206
    sidedataelems*: cint
    duration*: int64
    pos*: int64
    opaque*: pointer
    opaqueref*: ptr Avbufferref_520094198
    timebase*: Avrational_520094138

  Avpacket_520094209 = structavpacket_520094208 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:569:3
  structavpacketlist_520094211 {.pure, inheritable, bycopy.} = object
    pkt*: Avpacket_520094210 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:573:16
    next*: ptr structavpacketlist_520094212

  Avpacketlist_520094213 = structavpacketlist_520094212 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:576:3
  structavcodecparameters_520094217 {.pure, inheritable, bycopy.} = object
    codectype*: enumavmediatype_520094132 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_par.h:47:16
    codecid*: enumavcodecid_520094174
    codectag*: uint32
    extradata*: ptr uint8
    extradatasize*: cint
    codedsidedata*: ptr Avpacketsidedata_520094206
    nbcodedsidedata*: cint
    format*: cint
    bitrate*: int64
    bitspercodedsample*: cint
    bitsperrawsample*: cint
    profile*: cint
    level*: cint
    width*: cint
    height*: cint
    sampleaspectratio*: Avrational_520094138
    framerate*: Avrational_520094138
    fieldorder*: enumavfieldorder_520094176
    colorrange*: enumavcolorrange_520094154
    colorprimaries*: enumavcolorprimaries_520094148
    colortrc*: enumavcolortransfercharacteristic_520094150
    colorspace*: enumavcolorspace_520094152
    chromalocation*: enumavchromalocation_520094156
    videodelay*: cint
    chlayout*: Avchannellayout_520094170
    samplerate*: cint
    blockalign*: cint
    framesize*: cint
    initialpadding*: cint
    trailingpadding*: cint
    seekpreroll*: cint

  Avcodecparameters_520094219 = structavcodecparameters_520094218 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_par.h:215:3
  structavframesidedata_520094225 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520094222 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:250:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520094083
    buf*: ptr Avbufferref_520094198

  Avframesidedata_520094227 = structavframesidedata_520094226 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:256:3
  structavsidedatadescriptor_520094231 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:277:16
    props*: cuint

  Avsidedatadescriptor_520094233 = structavsidedatadescriptor_520094232 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:287:3
  structavregionofinterest_520094235 {.pure, inheritable, bycopy.} = object
    selfsize*: uint32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:300:16
    top*: cint
    bottom*: cint
    left*: cint
    right*: cint
    qoffset*: Avrational_520094138

  Avregionofinterest_520094237 = structavregionofinterest_520094236 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:343:3
  structavframe_520094239 {.pure, inheritable, bycopy.} = object
    data*: array[8'i64, ptr uint8] ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:374:16
    linesize*: array[8'i64, cint]
    extendeddata*: ptr ptr uint8
    width*: cint
    height*: cint
    nbsamples*: cint
    format*: cint
    keyframe*: cint
    picttype*: enumavpicturetype_520094134
    sampleaspectratio*: Avrational_520094138
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520094138
    quality*: cint
    opaque*: pointer
    repeatpict*: cint
    interlacedframe*: cint
    topfieldfirst*: cint
    palettehaschanged*: cint
    samplerate*: cint
    buf*: array[8'i64, ptr Avbufferref_520094198]
    extendedbuf*: ptr ptr Avbufferref_520094198
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520094228
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520094154
    colorprimaries*: enumavcolorprimaries_520094148
    colortrc*: enumavcolortransfercharacteristic_520094150
    colorspace*: enumavcolorspace_520094152
    chromalocation*: enumavchromalocation_520094156
    bestefforttimestamp*: int64
    pktpos*: int64
    metadata*: ptr Avdictionary_520094083
    decodeerrorflags*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520094198
    opaqueref*: ptr Avbufferref_520094198
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520094198
    chlayout*: Avchannellayout_520094170
    duration*: int64

  Avframe_520094241 = structavframe_520094240 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:781:3
  structavhwdevicecontext_520094245 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:60:16
    typefield*: enumavhwdevicetype_520094244
    hwctx*: pointer
    free*: proc (a0: ptr structavhwdevicecontext_520094246): void {.cdecl.}
    useropaque*: pointer

  Avhwdevicecontext_520094247 = structavhwdevicecontext_520094246 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:103:3
  structavhwframescontext_520094249 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:115:16
    deviceref*: ptr Avbufferref_520094198
    devicectx*: ptr Avhwdevicecontext_520094248
    hwctx*: pointer
    free*: proc (a0: ptr structavhwframescontext_520094250): void {.cdecl.}
    useropaque*: pointer
    pool*: ptr Avbufferpool_520094200
    initialpoolsize*: cint
    format*: enumavpixelformat_520094146
    swformat*: enumavpixelformat_520094146
    width*: cint
    height*: cint

  Avhwframescontext_520094251 = structavhwframescontext_520094250 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:218:3
  structavhwframesconstraints_520094255 {.pure, inheritable, bycopy.} = object
    validhwformats*: ptr enumavpixelformat_520094146 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:441:16
    validswformats*: ptr enumavpixelformat_520094146
    minwidth*: cint
    minheight*: cint
    maxwidth*: cint
    maxheight*: cint

  Avhwframesconstraints_520094257 = structavhwframesconstraints_520094256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:468:3
  structavprofile_520094259 {.pure, inheritable, bycopy.} = object
    profile*: cint           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:179:16
    name*: cstring

  Avprofile_520094261 = structavprofile_520094260 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:182:3
  structavcodec_520094263 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:187:16
    longname*: cstring
    typefield*: enumavmediatype_520094132
    id*: enumavcodecid_520094174
    capabilities*: cint
    maxlowres*: uint8
    supportedframerates*: ptr Avrational_520094138
    pixfmts*: ptr enumavpixelformat_520094146
    supportedsamplerates*: ptr cint
    samplefmts*: ptr enumavsampleformat_520094172
    privclass*: ptr Avclass_520094091
    profiles*: ptr Avprofile_520094262
    wrappername*: cstring
    chlayouts*: ptr Avchannellayout_520094170

  Avcodec_520094265 = structavcodec_520094264 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:231:3
  structavcodechwconfig_520094267 {.pure, inheritable, bycopy.} = object
    pixfmt*: enumavpixelformat_520094146 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:334:16
    methods*: cint
    devicetype*: enumavhwdevicetype_520094244

  Avcodechwconfig_520094269 = structavcodechwconfig_520094268 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:356:3
  structavprobedata_520094271 {.pure, inheritable, bycopy.} = object
    filename*: cstring       ## Generated based on /usr/include/libavformat/avformat.h:452:16
    buf*: ptr uint8
    bufsize*: cint
    mimetype*: cstring

  Avprobedata_520094273 = structavprobedata_520094272 ## Generated based on /usr/include/libavformat/avformat.h:457:3
  structavoutputformat_520094275 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/libavformat/avformat.h:510:16
    longname*: cstring
    mimetype*: cstring
    extensions*: cstring
    audiocodec*: enumavcodecid_520094174
    videocodec*: enumavcodecid_520094174
    subtitlecodec*: enumavcodecid_520094174
    flags*: cint
    codectag*: ptr ptr structavcodectag
    privclass*: ptr Avclass_520094091

  Avoutputformat_520094277 = structavoutputformat_520094276 ## Generated based on /usr/include/libavformat/avformat.h:540:3
  structavinputformat_520094279 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/libavformat/avformat.h:549:16
    longname*: cstring
    flags*: cint
    extensions*: cstring
    codectag*: ptr ptr structavcodectag
    privclass*: ptr Avclass_520094091
    mimetype*: cstring
    rawcodecid*: cint
    privdatasize*: cint
    flagsinternal*: cint
    readprobe*: proc (a0: ptr Avprobedata_520094274): cint {.cdecl.}
    readheader*: proc (a0: ptr structavformatcontext_520094282): cint {.cdecl.}
    readpacket*: proc (a0: ptr structavformatcontext_520094282; a1: ptr Avpacket_520094210): cint {.
        cdecl.}
    readclose*: proc (a0: ptr structavformatcontext_520094282): cint {.cdecl.}
    readseek*: proc (a0: ptr structavformatcontext_520094282; a1: cint;
                     a2: int64; a3: cint): cint {.cdecl.}
    readtimestamp*: proc (a0: ptr structavformatcontext_520094282; a1: cint;
                          a2: ptr int64; a3: int64): int64 {.cdecl.}
    readplay*: proc (a0: ptr structavformatcontext_520094282): cint {.cdecl.}
    readpause*: proc (a0: ptr structavformatcontext_520094282): cint {.cdecl.}
    readseek2*: proc (a0: ptr structavformatcontext_520094282; a1: cint;
                      a2: int64; a3: int64; a4: int64; a5: cint): cint {.cdecl.}
    getdevicelist*: proc (a0: ptr structavformatcontext_520094282;
                          a1: ptr structavdeviceinfolist): cint {.cdecl.}

  structavformatcontext_520094281 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /usr/include/libavformat/avformat.h:1121:16
    iformat*: ptr structavinputformat_520094280
    oformat*: ptr structavoutputformat_520094276
    privdata*: pointer
    pb*: ptr Aviocontext_520094111
    ctxflags*: cint
    nbstreams*: cuint
    streams*: ptr ptr Avstream_520094294
    url*: cstring
    starttime*: int64
    duration*: int64
    bitrate*: int64
    packetsize*: cuint
    maxdelay*: cint
    flags*: cint
    probesize*: int64
    maxanalyzeduration*: int64
    key*: ptr uint8
    keylen*: cint
    nbprograms*: cuint
    programs*: ptr ptr Avprogram_520094298
    videocodecid*: enumavcodecid_520094174
    audiocodecid*: enumavcodecid_520094174
    subtitlecodecid*: enumavcodecid_520094174
    maxindexsize*: cuint
    maxpicturebuffer*: cuint
    nbchapters*: cuint
    chapters*: ptr ptr Avchapter_520094302
    metadata*: ptr Avdictionary_520094083
    starttimerealtime*: int64
    fpsprobesize*: cint
    errorrecognition*: cint
    interruptcallback*: Aviointerruptcb_520094097
    debug*: cint
    maxinterleavedelta*: int64
    strictstdcompliance*: cint
    eventflags*: cint
    maxtsprobe*: cint
    avoidnegativets*: cint
    tsid*: cint
    audiopreload*: cint
    maxchunkduration*: cint
    maxchunksize*: cint
    usewallclockastimestamps*: cint
    avioflags*: cint
    durationestimationmethod*: enumavdurationestimationmethod_520094308
    skipinitialbytes*: int64
    correcttsoverflow*: cuint
    seek2any*: cint
    flushpackets*: cint
    probescore*: cint
    formatprobesize*: cint
    codecwhitelist*: cstring
    formatwhitelist*: cstring
    iorepositioned*: cint
    videocodec*: ptr structavcodec_520094264
    audiocodec*: ptr structavcodec_520094264
    subtitlecodec*: ptr structavcodec_520094264
    datacodec*: ptr structavcodec_520094264
    metadataheaderpadding*: cint
    opaque*: pointer
    controlmessagecb*: avformatcontrolmessage_520094304
    outputtsoffset*: int64
    dumpseparator*: ptr uint8
    datacodecid*: enumavcodecid_520094174
    protocolwhitelist*: cstring
    ioopen*: proc (a0: ptr structavformatcontext_520094282;
                   a1: ptr ptr Aviocontext_520094111; a2: cstring; a3: cint;
                   a4: ptr ptr Avdictionary_520094083): cint {.cdecl.}
    protocolblacklist*: cstring
    maxstreams*: cint
    skipestimatedurationfrompts*: cint
    maxprobepackets*: cint
    ioclose2*: proc (a0: ptr structavformatcontext_520094282;
                     a1: ptr Aviocontext_520094111): cint {.cdecl.}

  Avinputformat_520094283 = structavinputformat_520094280 ## Generated based on /usr/include/libavformat/avformat.h:684:3
  structavindexentry_520094287 {.pure, inheritable, bycopy.} = object
    pos*: int64              ## Generated based on /usr/include/libavformat/avformat.h:700:16
    timestamp*: int64
    flags* {.bitsize: 2'i64.}: cint
    size* {.bitsize: 30'i64.}: cint
    mindistance*: cint

  Avindexentry_520094289 = structavindexentry_520094288 ## Generated based on /usr/include/libavformat/avformat.h:715:3
  structavstream_520094291 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094091 ## Generated based on /usr/include/libavformat/avformat.h:843:16
    index*: cint
    id*: cint
    codecpar*: ptr Avcodecparameters_520094220
    privdata*: pointer
    timebase*: Avrational_520094138
    starttime*: int64
    duration*: int64
    nbframes*: int64
    disposition*: cint
    discardfield*: enumavdiscard_520094178
    sampleaspectratio*: Avrational_520094138
    metadata*: ptr Avdictionary_520094083
    avgframerate*: Avrational_520094138
    attachedpic*: Avpacket_520094210
    sidedata*: ptr Avpacketsidedata_520094206
    nbsidedata*: cint
    eventflags*: cint
    rframerate*: Avrational_520094138
    ptswrapbits*: cint

  Avstream_520094293 = structavstream_520094292 ## Generated based on /usr/include/libavformat/avformat.h:1019:3
  structavprogram_520094295 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /usr/include/libavformat/avformat.h:1045:16
    flags*: cint
    discardfield*: enumavdiscard_520094178
    streamindex*: ptr cuint
    nbstreamindexes*: cuint
    metadata*: ptr Avdictionary_520094083
    programnum*: cint
    pmtpid*: cint
    pcrpid*: cint
    pmtversion*: cint
    starttime*: int64
    endtime*: int64
    ptswrapreference*: int64
    ptswrapbehavior*: cint

  Avprogram_520094297 = structavprogram_520094296 ## Generated based on /usr/include/libavformat/avformat.h:1070:3
  structavchapter_520094299 {.pure, inheritable, bycopy.} = object
    id*: int64               ## Generated based on /usr/include/libavformat/avformat.h:1080:16
    timebase*: Avrational_520094138
    start*: int64
    endfield*: int64
    metadata*: ptr Avdictionary_520094083

  Avchapter_520094301 = structavchapter_520094300 ## Generated based on /usr/include/libavformat/avformat.h:1085:3
  avformatcontrolmessage_520094303 = proc (a0: ptr structavformatcontext_520094282;
      a1: cint; a2: pointer; a3: csize_t): cint {.cdecl.} ## Generated based on /usr/include/libavformat/avformat.h:1091:15
  Avopencallback_520094305 = proc (a0: ptr structavformatcontext_520094282;
                                   a1: ptr ptr Aviocontext_520094111;
                                   a2: cstring; a3: cint;
                                   a4: ptr Aviointerruptcb_520094097;
                                   a5: ptr ptr Avdictionary_520094083): cint {.
      cdecl.}                ## Generated based on /usr/include/libavformat/avformat.h:1094:15
  Avformatcontext_520094309 = structavformatcontext_520094282 ## Generated based on /usr/include/libavformat/avformat.h:1733:3
  File_520094311 = structiofile_520094316 ## Generated based on /usr/include/bits/types/FILE.h:7:25
  structiofile_520094315 {.pure, inheritable, bycopy.} = object
    internalflags*: cint     ## Generated based on /usr/include/bits/types/struct_FILE.h:49:8
    internalioreadptr*: cstring
    internalioreadend*: cstring
    internalioreadbase*: cstring
    internaliowritebase*: cstring
    internaliowriteptr*: cstring
    internaliowriteend*: cstring
    internaliobufbase*: cstring
    internaliobufend*: cstring
    internaliosavebase*: cstring
    internaliobackupbase*: cstring
    internaliosaveend*: cstring
    internalmarkers*: ptr structiomarker
    internalchain*: ptr structiofile_520094316
    internalfileno*: cint
    internalflags2*: cint
    internaloldoffset*: compilerofft_520094318
    internalcurcolumn*: cushort
    internalvtableoffset*: cschar
    internalshortbuf*: array[1'i64, cschar]
    internallock*: pointer
    internaloffset*: compileroff64t_520094322
    internalcodecvt*: ptr structiocodecvt
    internalwidedata*: ptr structiowidedata
    internalfreereslist*: ptr structiofile_520094316
    internalfreeresbuf*: pointer
    compilerpad5*: csize_t
    internalmode*: cint
    internalunused2*: array[20'i64, cschar]

  compilerofft_520094317 = clong ## Generated based on /usr/include/bits/types.h:152:25
  compileroff64t_520094321 = clong ## Generated based on /usr/include/bits/types.h:153:27
  structavregionofinterest_520094236 = (when declared(structavregionofinterest):
    structavregionofinterest
   else:
    structavregionofinterest_520094235)
  Avhwdevicecontext_520094248 = (when declared(Avhwdevicecontext):
    Avhwdevicecontext
   else:
    Avhwdevicecontext_520094247)
  structaviointerruptcb_520094095 = (when declared(structaviointerruptcb):
    structaviointerruptcb
   else:
    structaviointerruptcb_520094094)
  structavinputformat_520094280 = (when declared(structavinputformat):
    structavinputformat
   else:
    structavinputformat_520094279)
  Avcpbproperties_520094188 = (when declared(Avcpbproperties):
    Avcpbproperties
   else:
    Avcpbproperties_520094187)
  enumavsidedataprops_520094230 = (when declared(enumavsidedataprops):
    enumavsidedataprops
   else:
    enumavsidedataprops_520094229)
  structiofile_520094316 = (when declared(structiofile):
    structiofile
   else:
    structiofile_520094315)
  structavstream_520094292 = (when declared(structavstream):
    structavstream
   else:
    structavstream_520094291)
  Avcodec_520094266 = (when declared(Avcodec):
    Avcodec
   else:
    Avcodec_520094265)
  enumavframesidedatatype_520094222 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520094221)
  Aviodircontext_520094105 = (when declared(Aviodircontext):
    Aviodircontext
   else:
    Aviodircontext_520094104)
  Urlprotocol_520094126 = (when declared(Urlprotocol):
    Urlprotocol
   else:
    Urlprotocol_520094125)
  enumavcolorrange_520094154 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094153)
  structavpacket_520094208 = (when declared(structavpacket):
    structavpacket
   else:
    structavpacket_520094207)
  Avdictionaryentry_520094081 = (when declared(Avdictionaryentry):
    Avdictionaryentry
   else:
    Avdictionaryentry_520094080)
  structavchannelcustom_520094164 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094163)
  Aviointerruptcb_520094097 = (when declared(Aviointerruptcb):
    Aviointerruptcb
   else:
    Aviointerruptcb_520094096)
  structavframesidedata_520094226 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520094225)
  enumavchromalocation_520094156 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094155)
  structurlcontext_520094113 = (when declared(structurlcontext):
    structurlcontext
   else:
    structurlcontext_520094112)
  structavformatcontext_520094282 = (when declared(structavformatcontext):
    structavformatcontext
   else:
    structavformatcontext_520094281)
  Avbufferref_520094198 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520094197)
  enumavdurationestimationmethod_520094308 = (when declared(
      enumavdurationestimationmethod):
    enumavdurationestimationmethod
   else:
    enumavdurationestimationmethod_520094307)
  compileroff64t_520094322 = (when declared(compileroff64t):
    compileroff64t
   else:
    compileroff64t_520094321)
  structavproducerreferencetime_520094190 = (when declared(
      structavproducerreferencetime):
    structavproducerreferencetime
   else:
    structavproducerreferencetime_520094189)
  Aviocontext_520094111 = (when declared(Aviocontext):
    Aviocontext
   else:
    Aviocontext_520094110)
  structavcpbproperties_520094186 = (when declared(structavcpbproperties):
    structavcpbproperties
   else:
    structavcpbproperties_520094185)
  structavpacketsidedata_520094204 = (when declared(structavpacketsidedata):
    structavpacketsidedata
   else:
    structavpacketsidedata_520094203)
  enumavclasscategory_520094085 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094084)
  Avframesidedata_520094228 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520094227)
  structavcodec_520094264 = (when declared(structavcodec):
    structavcodec
   else:
    structavcodec_520094263)
  Urlcontext_520094124 = (when declared(Urlcontext):
    Urlcontext
   else:
    Urlcontext_520094123)
  Avinputformat_520094284 = (when declared(Avinputformat):
    Avinputformat
   else:
    Avinputformat_520094283)
  Avproducerreferencetime_520094192 = (when declared(Avproducerreferencetime):
    Avproducerreferencetime
   else:
    Avproducerreferencetime_520094191)
  Avcodechwconfig_520094270 = (when declared(Avcodechwconfig):
    Avcodechwconfig
   else:
    Avcodechwconfig_520094269)
  structavprobedata_520094272 = (when declared(structavprobedata):
    structavprobedata
   else:
    structavprobedata_520094271)
  enumavaudioservicetype_520094180 = (when declared(enumavaudioservicetype):
    enumavaudioservicetype
   else:
    enumavaudioservicetype_520094179)
  enumavhwframetransferdirection_520094254 = (when declared(
      enumavhwframetransferdirection):
    enumavhwframetransferdirection
   else:
    enumavhwframetransferdirection_520094253)
  enumavmatrixencoding_520094162 = (when declared(enumavmatrixencoding):
    enumavmatrixencoding
   else:
    enumavmatrixencoding_520094161)
  Avpacket_520094210 = (when declared(Avpacket):
    Avpacket
   else:
    Avpacket_520094209)
  valist_520094093 = (when declared(valist):
    valist
   else:
    valist_520094092)
  unionavintfloat64_520094142 = (when declared(unionavintfloat64):
    unionavintfloat64
   else:
    unionavintfloat64_520094141)
  enumavfieldorder_520094176 = (when declared(enumavfieldorder):
    enumavfieldorder
   else:
    enumavfieldorder_520094175)
  structaviocontext_520094109 = (when declared(structaviocontext):
    structaviocontext
   else:
    structaviocontext_520094108)
  Urlcomponents_520094130 = (when declared(Urlcomponents):
    Urlcomponents
   else:
    Urlcomponents_520094129)
  Avprofile_520094262 = (when declared(Avprofile):
    Avprofile
   else:
    Avprofile_520094261)
  Avchannelcustom_520094166 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094165)
  enumavpacketsidedatatype_520094202 = (when declared(enumavpacketsidedatatype):
    enumavpacketsidedatatype
   else:
    enumavpacketsidedatatype_520094201)
  enumaviodirentrytype_520094099 = (when declared(enumaviodirentrytype):
    enumaviodirentrytype
   else:
    enumaviodirentrytype_520094098)
  Avoutputformat_520094278 = (when declared(Avoutputformat):
    Avoutputformat
   else:
    Avoutputformat_520094277)
  structavchannellayout_520094168 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094167)
  Avchapter_520094302 = (when declared(Avchapter):
    Avchapter
   else:
    Avchapter_520094301)
  structaviodirentry_520094101 = (when declared(structaviodirentry):
    structaviodirentry
   else:
    structaviodirentry_520094100)
  structavrational_520094136 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094135)
  enumavhwdevicetype_520094244 = (when declared(enumavhwdevicetype):
    enumavhwdevicetype
   else:
    enumavhwdevicetype_520094243)
  unionavintfloat32_520094140 = (when declared(unionavintfloat32):
    unionavintfloat32
   else:
    unionavintfloat32_520094139)
  enumavcolortransfercharacteristic_520094150 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094149)
  enumavsidedataparamchangeflags_520094216 = (when declared(
      enumavsidedataparamchangeflags):
    enumavsidedataparamchangeflags
   else:
    enumavsidedataparamchangeflags_520094215)
  enumavchannel_520094158 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094157)
  enumavpixelformat_520094146 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094145)
  Aviodirentry_520094103 = (when declared(Aviodirentry):
    Aviodirentry
   else:
    Aviodirentry_520094102)
  structavprofile_520094260 = (when declared(structavprofile):
    structavprofile
   else:
    structavprofile_520094259)
  enumavcolorspace_520094152 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094151)
  Avhwframesconstraints_520094258 = (when declared(Avhwframesconstraints):
    Avhwframesconstraints
   else:
    Avhwframesconstraints_520094257)
  Avindexentry_520094290 = (when declared(Avindexentry):
    Avindexentry
   else:
    Avindexentry_520094289)
  Avdictionary_520094083 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094082)
  structavclass_520094089 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094088)
  structavchapter_520094300 = (when declared(structavchapter):
    structavchapter
   else:
    structavchapter_520094299)
  enumavchannelorder_520094160 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094159)
  enumavpicturetype_520094134 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094133)
  enumavcolorprimaries_520094148 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094147)
  enumavrounding_520094144 = (when declared(enumavrounding):
    enumavrounding
   else:
    enumavrounding_520094143)
  enumavstreamparsetype_520094286 = (when declared(enumavstreamparsetype):
    enumavstreamparsetype
   else:
    enumavstreamparsetype_520094285)
  Avstream_520094294 = (when declared(Avstream):
    Avstream
   else:
    Avstream_520094293)
  structavprogram_520094296 = (when declared(structavprogram):
    structavprogram
   else:
    structavprogram_520094295)
  Avpacketlist_520094214 = (when declared(Avpacketlist):
    Avpacketlist
   else:
    Avpacketlist_520094213)
  Avpacketsidedata_520094206 = (when declared(Avpacketsidedata):
    Avpacketsidedata
   else:
    Avpacketsidedata_520094205)
  enumavsampleformat_520094172 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094171)
  structavsidedatadescriptor_520094232 = (when declared(
      structavsidedatadescriptor):
    structavsidedatadescriptor
   else:
    structavsidedatadescriptor_520094231)
  Avclasscategory_520094087 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094086)
  structavhwdevicecontext_520094246 = (when declared(structavhwdevicecontext):
    structavhwdevicecontext
   else:
    structavhwdevicecontext_520094245)
  compilerofft_520094318 = (when declared(compilerofft):
    compilerofft
   else:
    compilerofft_520094317)
  Avclass_520094091 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094090)
  Avprobedata_520094274 = (when declared(Avprobedata):
    Avprobedata
   else:
    Avprobedata_520094273)
  structavhwframescontext_520094250 = (when declared(structavhwframescontext):
    structavhwframescontext
   else:
    structavhwframescontext_520094249)
  Avopencallback_520094306 = (when declared(Avopencallback):
    Avopencallback
   else:
    Avopencallback_520094305)
  structavoutputformat_520094276 = (when declared(structavoutputformat):
    structavoutputformat
   else:
    structavoutputformat_520094275)
  structavdictionaryentry_520094079 = (when declared(structavdictionaryentry):
    structavdictionaryentry
   else:
    structavdictionaryentry_520094078)
  enumavcodecid_520094174 = (when declared(enumavcodecid):
    enumavcodecid
   else:
    enumavcodecid_520094173)
  structavhwframesconstraints_520094256 = (when declared(
      structavhwframesconstraints):
    structavhwframesconstraints
   else:
    structavhwframesconstraints_520094255)
  Avhwframescontext_520094252 = (when declared(Avhwframescontext):
    Avhwframescontext
   else:
    Avhwframescontext_520094251)
  Avbufferpool_520094200 = (when declared(Avbufferpool):
    Avbufferpool
   else:
    Avbufferpool_520094199)
  Avrational_520094138 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094137)
  structurlprotocol_520094115 = (when declared(structurlprotocol):
    structurlprotocol
   else:
    structurlprotocol_520094114)
  Avprogram_520094298 = (when declared(Avprogram):
    Avprogram
   else:
    Avprogram_520094297)
  structurlcomponents_520094128 = (when declared(structurlcomponents):
    structurlcomponents
   else:
    structurlcomponents_520094127)
  Avcodecparameters_520094220 = (when declared(Avcodecparameters):
    Avcodecparameters
   else:
    Avcodecparameters_520094219)
  Avframe_520094242 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520094241)
  structavpanscan_520094182 = (when declared(structavpanscan):
    structavpanscan
   else:
    structavpanscan_520094181)
  structavbufferref_520094196 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520094195)
  enumavmediatype_520094132 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094131)
  structavpacketlist_520094212 = (when declared(structavpacketlist):
    structavpacketlist
   else:
    structavpacketlist_520094211)
  Avbuffer_520094194 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520094193)
  File_520094312 = (when declared(File):
    File
   else:
    File_520094311)
  Avchannellayout_520094170 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094169)
  Avregionofinterest_520094238 = (when declared(Avregionofinterest):
    Avregionofinterest
   else:
    Avregionofinterest_520094237)
  structavindexentry_520094288 = (when declared(structavindexentry):
    structavindexentry
   else:
    structavindexentry_520094287)
  Avformatcontext_520094310 = (when declared(Avformatcontext):
    Avformatcontext
   else:
    Avformatcontext_520094309)
  enumavtimebasesource_520094314 = (when declared(enumavtimebasesource):
    enumavtimebasesource
   else:
    enumavtimebasesource_520094313)
  Avpanscan_520094184 = (when declared(Avpanscan):
    Avpanscan
   else:
    Avpanscan_520094183)
  enumaviodatamarkertype_520094107 = (when declared(enumaviodatamarkertype):
    enumaviodatamarkertype
   else:
    enumaviodatamarkertype_520094106)
  structavcodechwconfig_520094268 = (when declared(structavcodechwconfig):
    structavcodechwconfig
   else:
    structavcodechwconfig_520094267)
  enumavdiscard_520094178 = (when declared(enumavdiscard):
    enumavdiscard
   else:
    enumavdiscard_520094177)
  enumavactiveformatdescription_520094224 = (when declared(
      enumavactiveformatdescription):
    enumavactiveformatdescription
   else:
    enumavactiveformatdescription_520094223)
  Avsidedatadescriptor_520094234 = (when declared(Avsidedatadescriptor):
    Avsidedatadescriptor
   else:
    Avsidedatadescriptor_520094233)
  structavcodecparameters_520094218 = (when declared(structavcodecparameters):
    structavcodecparameters
   else:
    structavcodecparameters_520094217)
  avformatcontrolmessage_520094304 = (when declared(avformatcontrolmessage):
    avformatcontrolmessage
   else:
    avformatcontrolmessage_520094303)
  structavframe_520094240 = (when declared(structavframe):
    structavframe
   else:
    structavframe_520094239)
when not declared(structavregionofinterest):
  type
    structavregionofinterest* = structavregionofinterest_520094235
else:
  static :
    hint("Declaration of " & "structavregionofinterest" &
        " already exists, not redeclaring")
when not declared(Avhwdevicecontext):
  type
    Avhwdevicecontext* = Avhwdevicecontext_520094247
else:
  static :
    hint("Declaration of " & "Avhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(structaviointerruptcb):
  type
    structaviointerruptcb* = structaviointerruptcb_520094094
else:
  static :
    hint("Declaration of " & "structaviointerruptcb" &
        " already exists, not redeclaring")
when not declared(structavinputformat):
  type
    structavinputformat* = structavinputformat_520094279
else:
  static :
    hint("Declaration of " & "structavinputformat" &
        " already exists, not redeclaring")
when not declared(Avcpbproperties):
  type
    Avcpbproperties* = Avcpbproperties_520094187
else:
  static :
    hint("Declaration of " & "Avcpbproperties" &
        " already exists, not redeclaring")
when not declared(structiofile):
  type
    structiofile* = structiofile_520094315
else:
  static :
    hint("Declaration of " & "structiofile" & " already exists, not redeclaring")
when not declared(structavstream):
  type
    structavstream* = structavstream_520094291
else:
  static :
    hint("Declaration of " & "structavstream" &
        " already exists, not redeclaring")
when not declared(Avcodec):
  type
    Avcodec* = Avcodec_520094265
else:
  static :
    hint("Declaration of " & "Avcodec" & " already exists, not redeclaring")
when not declared(Aviodircontext):
  type
    Aviodircontext* = Aviodircontext_520094104
else:
  static :
    hint("Declaration of " & "Aviodircontext" &
        " already exists, not redeclaring")
when not declared(Urlprotocol):
  type
    Urlprotocol* = Urlprotocol_520094125
else:
  static :
    hint("Declaration of " & "Urlprotocol" & " already exists, not redeclaring")
when not declared(structavpacket):
  type
    structavpacket* = structavpacket_520094207
else:
  static :
    hint("Declaration of " & "structavpacket" &
        " already exists, not redeclaring")
when not declared(Avdictionaryentry):
  type
    Avdictionaryentry* = Avdictionaryentry_520094080
else:
  static :
    hint("Declaration of " & "Avdictionaryentry" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094163
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(Aviointerruptcb):
  type
    Aviointerruptcb* = Aviointerruptcb_520094096
else:
  static :
    hint("Declaration of " & "Aviointerruptcb" &
        " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520094225
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
        " already exists, not redeclaring")
when not declared(structurlcontext):
  type
    structurlcontext* = structurlcontext_520094112
else:
  static :
    hint("Declaration of " & "structurlcontext" &
        " already exists, not redeclaring")
when not declared(structavformatcontext):
  type
    structavformatcontext* = structavformatcontext_520094281
else:
  static :
    hint("Declaration of " & "structavformatcontext" &
        " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520094197
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(compileroff64t):
  type
    compileroff64t* = compileroff64t_520094321
else:
  static :
    hint("Declaration of " & "compileroff64t" &
        " already exists, not redeclaring")
when not declared(structavproducerreferencetime):
  type
    structavproducerreferencetime* = structavproducerreferencetime_520094189
else:
  static :
    hint("Declaration of " & "structavproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Aviocontext):
  type
    Aviocontext* = Aviocontext_520094110
else:
  static :
    hint("Declaration of " & "Aviocontext" & " already exists, not redeclaring")
when not declared(structavcpbproperties):
  type
    structavcpbproperties* = structavcpbproperties_520094185
else:
  static :
    hint("Declaration of " & "structavcpbproperties" &
        " already exists, not redeclaring")
when not declared(structavpacketsidedata):
  type
    structavpacketsidedata* = structavpacketsidedata_520094203
else:
  static :
    hint("Declaration of " & "structavpacketsidedata" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520094227
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(structavcodec):
  type
    structavcodec* = structavcodec_520094263
else:
  static :
    hint("Declaration of " & "structavcodec" &
        " already exists, not redeclaring")
when not declared(Urlcontext):
  type
    Urlcontext* = Urlcontext_520094123
else:
  static :
    hint("Declaration of " & "Urlcontext" & " already exists, not redeclaring")
when not declared(Avinputformat):
  type
    Avinputformat* = Avinputformat_520094283
else:
  static :
    hint("Declaration of " & "Avinputformat" &
        " already exists, not redeclaring")
when not declared(Avproducerreferencetime):
  type
    Avproducerreferencetime* = Avproducerreferencetime_520094191
else:
  static :
    hint("Declaration of " & "Avproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfig):
  type
    Avcodechwconfig* = Avcodechwconfig_520094269
else:
  static :
    hint("Declaration of " & "Avcodechwconfig" &
        " already exists, not redeclaring")
when not declared(structavprobedata):
  type
    structavprobedata* = structavprobedata_520094271
else:
  static :
    hint("Declaration of " & "structavprobedata" &
        " already exists, not redeclaring")
when not declared(Avpacket):
  type
    Avpacket* = Avpacket_520094209
else:
  static :
    hint("Declaration of " & "Avpacket" & " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094092
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(unionavintfloat64):
  type
    unionavintfloat64* = unionavintfloat64_520094141
else:
  static :
    hint("Declaration of " & "unionavintfloat64" &
        " already exists, not redeclaring")
when not declared(structaviocontext):
  type
    structaviocontext* = structaviocontext_520094108
else:
  static :
    hint("Declaration of " & "structaviocontext" &
        " already exists, not redeclaring")
when not declared(Urlcomponents):
  type
    Urlcomponents* = Urlcomponents_520094129
else:
  static :
    hint("Declaration of " & "Urlcomponents" &
        " already exists, not redeclaring")
when not declared(Avprofile):
  type
    Avprofile* = Avprofile_520094261
else:
  static :
    hint("Declaration of " & "Avprofile" & " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094165
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avoutputformat):
  type
    Avoutputformat* = Avoutputformat_520094277
else:
  static :
    hint("Declaration of " & "Avoutputformat" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094167
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(Avchapter):
  type
    Avchapter* = Avchapter_520094301
else:
  static :
    hint("Declaration of " & "Avchapter" & " already exists, not redeclaring")
when not declared(structaviodirentry):
  type
    structaviodirentry* = structaviodirentry_520094100
else:
  static :
    hint("Declaration of " & "structaviodirentry" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094135
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(unionavintfloat32):
  type
    unionavintfloat32* = unionavintfloat32_520094139
else:
  static :
    hint("Declaration of " & "unionavintfloat32" &
        " already exists, not redeclaring")
when not declared(Aviodirentry):
  type
    Aviodirentry* = Aviodirentry_520094102
else:
  static :
    hint("Declaration of " & "Aviodirentry" & " already exists, not redeclaring")
when not declared(structavprofile):
  type
    structavprofile* = structavprofile_520094259
else:
  static :
    hint("Declaration of " & "structavprofile" &
        " already exists, not redeclaring")
when not declared(Avhwframesconstraints):
  type
    Avhwframesconstraints* = Avhwframesconstraints_520094257
else:
  static :
    hint("Declaration of " & "Avhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avindexentry):
  type
    Avindexentry* = Avindexentry_520094289
else:
  static :
    hint("Declaration of " & "Avindexentry" & " already exists, not redeclaring")
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094082
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
when not declared(structavclass):
  type
    structavclass* = structavclass_520094088
else:
  static :
    hint("Declaration of " & "structavclass" &
        " already exists, not redeclaring")
when not declared(structavchapter):
  type
    structavchapter* = structavchapter_520094299
else:
  static :
    hint("Declaration of " & "structavchapter" &
        " already exists, not redeclaring")
when not declared(Avstream):
  type
    Avstream* = Avstream_520094293
else:
  static :
    hint("Declaration of " & "Avstream" & " already exists, not redeclaring")
when not declared(structavprogram):
  type
    structavprogram* = structavprogram_520094295
else:
  static :
    hint("Declaration of " & "structavprogram" &
        " already exists, not redeclaring")
when not declared(Avpacketlist):
  type
    Avpacketlist* = Avpacketlist_520094213
else:
  static :
    hint("Declaration of " & "Avpacketlist" & " already exists, not redeclaring")
when not declared(Avpacketsidedata):
  type
    Avpacketsidedata* = Avpacketsidedata_520094205
else:
  static :
    hint("Declaration of " & "Avpacketsidedata" &
        " already exists, not redeclaring")
when not declared(structavsidedatadescriptor):
  type
    structavsidedatadescriptor* = structavsidedatadescriptor_520094231
else:
  static :
    hint("Declaration of " & "structavsidedatadescriptor" &
        " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520094086
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(structavhwdevicecontext):
  type
    structavhwdevicecontext* = structavhwdevicecontext_520094245
else:
  static :
    hint("Declaration of " & "structavhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(compilerofft):
  type
    compilerofft* = compilerofft_520094317
else:
  static :
    hint("Declaration of " & "compilerofft" & " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094090
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(Avprobedata):
  type
    Avprobedata* = Avprobedata_520094273
else:
  static :
    hint("Declaration of " & "Avprobedata" & " already exists, not redeclaring")
when not declared(structavhwframescontext):
  type
    structavhwframescontext* = structavhwframescontext_520094249
else:
  static :
    hint("Declaration of " & "structavhwframescontext" &
        " already exists, not redeclaring")
when not declared(Avopencallback):
  type
    Avopencallback* = Avopencallback_520094305
else:
  static :
    hint("Declaration of " & "Avopencallback" &
        " already exists, not redeclaring")
when not declared(structavoutputformat):
  type
    structavoutputformat* = structavoutputformat_520094275
else:
  static :
    hint("Declaration of " & "structavoutputformat" &
        " already exists, not redeclaring")
when not declared(structavdictionaryentry):
  type
    structavdictionaryentry* = structavdictionaryentry_520094078
else:
  static :
    hint("Declaration of " & "structavdictionaryentry" &
        " already exists, not redeclaring")
when not declared(structavhwframesconstraints):
  type
    structavhwframesconstraints* = structavhwframesconstraints_520094255
else:
  static :
    hint("Declaration of " & "structavhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avhwframescontext):
  type
    Avhwframescontext* = Avhwframescontext_520094251
else:
  static :
    hint("Declaration of " & "Avhwframescontext" &
        " already exists, not redeclaring")
when not declared(Avbufferpool):
  type
    Avbufferpool* = Avbufferpool_520094199
else:
  static :
    hint("Declaration of " & "Avbufferpool" & " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094137
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(structurlprotocol):
  type
    structurlprotocol* = structurlprotocol_520094114
else:
  static :
    hint("Declaration of " & "structurlprotocol" &
        " already exists, not redeclaring")
when not declared(Avprogram):
  type
    Avprogram* = Avprogram_520094297
else:
  static :
    hint("Declaration of " & "Avprogram" & " already exists, not redeclaring")
when not declared(structurlcomponents):
  type
    structurlcomponents* = structurlcomponents_520094127
else:
  static :
    hint("Declaration of " & "structurlcomponents" &
        " already exists, not redeclaring")
when not declared(Avcodecparameters):
  type
    Avcodecparameters* = Avcodecparameters_520094219
else:
  static :
    hint("Declaration of " & "Avcodecparameters" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520094241
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavpanscan):
  type
    structavpanscan* = structavpanscan_520094181
else:
  static :
    hint("Declaration of " & "structavpanscan" &
        " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520094195
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(structavpacketlist):
  type
    structavpacketlist* = structavpacketlist_520094211
else:
  static :
    hint("Declaration of " & "structavpacketlist" &
        " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520094193
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(File):
  type
    File* = File_520094311
else:
  static :
    hint("Declaration of " & "File" & " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094169
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(Avregionofinterest):
  type
    Avregionofinterest* = Avregionofinterest_520094237
else:
  static :
    hint("Declaration of " & "Avregionofinterest" &
        " already exists, not redeclaring")
when not declared(structavindexentry):
  type
    structavindexentry* = structavindexentry_520094287
else:
  static :
    hint("Declaration of " & "structavindexentry" &
        " already exists, not redeclaring")
when not declared(Avformatcontext):
  type
    Avformatcontext* = Avformatcontext_520094309
else:
  static :
    hint("Declaration of " & "Avformatcontext" &
        " already exists, not redeclaring")
when not declared(Avpanscan):
  type
    Avpanscan* = Avpanscan_520094183
else:
  static :
    hint("Declaration of " & "Avpanscan" & " already exists, not redeclaring")
when not declared(structavcodechwconfig):
  type
    structavcodechwconfig* = structavcodechwconfig_520094267
else:
  static :
    hint("Declaration of " & "structavcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avsidedatadescriptor):
  type
    Avsidedatadescriptor* = Avsidedatadescriptor_520094233
else:
  static :
    hint("Declaration of " & "Avsidedatadescriptor" &
        " already exists, not redeclaring")
when not declared(structavcodecparameters):
  type
    structavcodecparameters* = structavcodecparameters_520094217
else:
  static :
    hint("Declaration of " & "structavcodecparameters" &
        " already exists, not redeclaring")
when not declared(avformatcontrolmessage):
  type
    avformatcontrolmessage* = avformatcontrolmessage_520094303
else:
  static :
    hint("Declaration of " & "avformatcontrolmessage" &
        " already exists, not redeclaring")
when not declared(structavframe):
  type
    structavframe* = structavframe_520094239
else:
  static :
    hint("Declaration of " & "structavframe" &
        " already exists, not redeclaring")
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
when not declared(Libavformatversionmajor):
  when 61 is static:
    const
      Libavformatversionmajor* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version_major.h:32:9
  else:
    let Libavformatversionmajor* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version_major.h:32:9
else:
  static :
    hint("Declaration of " & "Libavformatversionmajor" &
        " already exists, not redeclaring")
when not declared(Ffapirframerate):
  when 1 is static:
    const
      Ffapirframerate* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version_major.h:51:9
  else:
    let Ffapirframerate* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version_major.h:51:9
else:
  static :
    hint("Declaration of " & "Ffapirframerate" &
        " already exists, not redeclaring")
when not declared(Libavformatversionminor):
  when 3 is static:
    const
      Libavformatversionminor* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version.h:34:9
  else:
    let Libavformatversionminor* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version.h:34:9
else:
  static :
    hint("Declaration of " & "Libavformatversionminor" &
        " already exists, not redeclaring")
when not declared(Libavformatversionmicro):
  when 100 is static:
    const
      Libavformatversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version.h:35:9
  else:
    let Libavformatversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/version.h:35:9
else:
  static :
    hint("Declaration of " & "Libavformatversionmicro" &
        " already exists, not redeclaring")
when not declared(Avdictmatchcase):
  when 1 is static:
    const
      Avdictmatchcase* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:74:9
  else:
    let Avdictmatchcase* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:74:9
else:
  static :
    hint("Declaration of " & "Avdictmatchcase" &
        " already exists, not redeclaring")
when not declared(Avdictignoresuffix):
  when 2 is static:
    const
      Avdictignoresuffix* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:75:9
  else:
    let Avdictignoresuffix* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:75:9
else:
  static :
    hint("Declaration of " & "Avdictignoresuffix" &
        " already exists, not redeclaring")
when not declared(Avdictdontstrdupkey):
  when 4 is static:
    const
      Avdictdontstrdupkey* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:77:9
  else:
    let Avdictdontstrdupkey* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:77:9
else:
  static :
    hint("Declaration of " & "Avdictdontstrdupkey" &
        " already exists, not redeclaring")
when not declared(Avdictdontstrdupval):
  when 8 is static:
    const
      Avdictdontstrdupval* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:79:9
  else:
    let Avdictdontstrdupval* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:79:9
else:
  static :
    hint("Declaration of " & "Avdictdontstrdupval" &
        " already exists, not redeclaring")
when not declared(Avdictdontoverwrite):
  when 16 is static:
    const
      Avdictdontoverwrite* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:81:9
  else:
    let Avdictdontoverwrite* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:81:9
else:
  static :
    hint("Declaration of " & "Avdictdontoverwrite" &
        " already exists, not redeclaring")
when not declared(Avdictappend):
  when 32 is static:
    const
      Avdictappend* = 32     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:82:9
  else:
    let Avdictappend* = 32   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:82:9
else:
  static :
    hint("Declaration of " & "Avdictappend" & " already exists, not redeclaring")
when not declared(Avdictmultikey):
  when 64 is static:
    const
      Avdictmultikey* = 64   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:84:9
  else:
    let Avdictmultikey* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:84:9
else:
  static :
    hint("Declaration of " & "Avdictmultikey" &
        " already exists, not redeclaring")
when not declared(Avlogquiet):
  when -8 is static:
    const
      Avlogquiet* = -8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:162:9
  else:
    let Avlogquiet* = -8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:162:9
else:
  static :
    hint("Declaration of " & "Avlogquiet" & " already exists, not redeclaring")
when not declared(Avlogpanic):
  when 0 is static:
    const
      Avlogpanic* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:167:9
  else:
    let Avlogpanic* = 0      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:167:9
else:
  static :
    hint("Declaration of " & "Avlogpanic" & " already exists, not redeclaring")
when not declared(Avlogfatal):
  when 8 is static:
    const
      Avlogfatal* = 8        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:174:9
  else:
    let Avlogfatal* = 8      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:174:9
else:
  static :
    hint("Declaration of " & "Avlogfatal" & " already exists, not redeclaring")
when not declared(Avlogerror):
  when 16 is static:
    const
      Avlogerror* = 16       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:180:9
  else:
    let Avlogerror* = 16     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:180:9
else:
  static :
    hint("Declaration of " & "Avlogerror" & " already exists, not redeclaring")
when not declared(Avlogwarning):
  when 24 is static:
    const
      Avlogwarning* = 24     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:186:9
  else:
    let Avlogwarning* = 24   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:186:9
else:
  static :
    hint("Declaration of " & "Avlogwarning" & " already exists, not redeclaring")
when not declared(Avloginfo):
  when 32 is static:
    const
      Avloginfo* = 32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:191:9
  else:
    let Avloginfo* = 32      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:191:9
else:
  static :
    hint("Declaration of " & "Avloginfo" & " already exists, not redeclaring")
when not declared(Avlogverbose):
  when 40 is static:
    const
      Avlogverbose* = 40     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:196:9
  else:
    let Avlogverbose* = 40   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:196:9
else:
  static :
    hint("Declaration of " & "Avlogverbose" & " already exists, not redeclaring")
when not declared(Avlogdebug):
  when 48 is static:
    const
      Avlogdebug* = 48       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:201:9
  else:
    let Avlogdebug* = 48     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:201:9
else:
  static :
    hint("Declaration of " & "Avlogdebug" & " already exists, not redeclaring")
when not declared(Avlogtrace):
  when 56 is static:
    const
      Avlogtrace* = 56       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:206:9
  else:
    let Avlogtrace* = 56     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:206:9
else:
  static :
    hint("Declaration of " & "Avlogtrace" & " already exists, not redeclaring")
when not declared(Avlogskiprepeated):
  when 1 is static:
    const
      Avlogskiprepeated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:370:9
  else:
    let Avlogskiprepeated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:370:9
else:
  static :
    hint("Declaration of " & "Avlogskiprepeated" &
        " already exists, not redeclaring")
when not declared(Avlogprintlevel):
  when 2 is static:
    const
      Avlogprintlevel* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:378:9
  else:
    let Avlogprintlevel* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:378:9
else:
  static :
    hint("Declaration of " & "Avlogprintlevel" &
        " already exists, not redeclaring")
when not declared(Avseeksize):
  when 65536 is static:
    const
      Avseeksize* = 65536    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:468:9
  else:
    let Avseeksize* = 65536  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:468:9
else:
  static :
    hint("Declaration of " & "Avseeksize" & " already exists, not redeclaring")
when not declared(Avseekforce):
  when 131072 is static:
    const
      Avseekforce* = 131072  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:476:9
  else:
    let Avseekforce* = 131072 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:476:9
else:
  static :
    hint("Declaration of " & "Avseekforce" & " already exists, not redeclaring")
when not declared(Avioflagread):
  when 1 is static:
    const
      Avioflagread* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:617:9
  else:
    let Avioflagread* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:617:9
else:
  static :
    hint("Declaration of " & "Avioflagread" & " already exists, not redeclaring")
when not declared(Avioflagwrite):
  when 2 is static:
    const
      Avioflagwrite* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:618:9
  else:
    let Avioflagwrite* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:618:9
else:
  static :
    hint("Declaration of " & "Avioflagwrite" &
        " already exists, not redeclaring")
when not declared(Avioflagnonblock):
  when 8 is static:
    const
      Avioflagnonblock* = 8  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:636:9
  else:
    let Avioflagnonblock* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:636:9
else:
  static :
    hint("Declaration of " & "Avioflagnonblock" &
        " already exists, not redeclaring")
when not declared(Avioflagdirect):
  when 32768 is static:
    const
      Avioflagdirect* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:644:9
  else:
    let Avioflagdirect* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/avio.h:644:9
else:
  static :
    hint("Declaration of " & "Avioflagdirect" &
        " already exists, not redeclaring")
when not declared(Urlprotocolflagnestedscheme):
  when 1 is static:
    const
      Urlprotocolflagnestedscheme* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:32:9
  else:
    let Urlprotocolflagnestedscheme* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:32:9
else:
  static :
    hint("Declaration of " & "Urlprotocolflagnestedscheme" &
        " already exists, not redeclaring")
when not declared(Urlprotocolflagnetwork):
  when 2 is static:
    const
      Urlprotocolflagnetwork* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:33:9
  else:
    let Urlprotocolflagnetwork* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:33:9
else:
  static :
    hint("Declaration of " & "Urlprotocolflagnetwork" &
        " already exists, not redeclaring")
when not declared(urlcomponentendscheme):
  when authority is typedesc:
    type
      urlcomponentendscheme* = authority ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:372:9
  else:
    when authority is static:
      const
        urlcomponentendscheme* = authority ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:372:9
    else:
      let urlcomponentendscheme* = authority ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:372:9
else:
  static :
    hint("Declaration of " & "urlcomponentendscheme" &
        " already exists, not redeclaring")
when not declared(urlcomponentendauthority):
  when userinfo is typedesc:
    type
      urlcomponentendauthority* = userinfo ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:373:9
  else:
    when userinfo is static:
      const
        urlcomponentendauthority* = userinfo ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:373:9
    else:
      let urlcomponentendauthority* = userinfo ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:373:9
else:
  static :
    hint("Declaration of " & "urlcomponentendauthority" &
        " already exists, not redeclaring")
when not declared(urlcomponentenduserinfo):
  when host is typedesc:
    type
      urlcomponentenduserinfo* = host ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:374:9
  else:
    when host is static:
      const
        urlcomponentenduserinfo* = host ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:374:9
    else:
      let urlcomponentenduserinfo* = host ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:374:9
else:
  static :
    hint("Declaration of " & "urlcomponentenduserinfo" &
        " already exists, not redeclaring")
when not declared(urlcomponentendhost):
  when port is typedesc:
    type
      urlcomponentendhost* = port ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:375:9
  else:
    when port is static:
      const
        urlcomponentendhost* = port ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:375:9
    else:
      let urlcomponentendhost* = port ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:375:9
else:
  static :
    hint("Declaration of " & "urlcomponentendhost" &
        " already exists, not redeclaring")
when not declared(urlcomponentendport):
  when path is typedesc:
    type
      urlcomponentendport* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:376:9
  else:
    when path is static:
      const
        urlcomponentendport* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:376:9
    else:
      let urlcomponentendport* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:376:9
else:
  static :
    hint("Declaration of " & "urlcomponentendport" &
        " already exists, not redeclaring")
when not declared(urlcomponentendpath):
  when query is typedesc:
    type
      urlcomponentendpath* = query ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:377:9
  else:
    when query is static:
      const
        urlcomponentendpath* = query ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:377:9
    else:
      let urlcomponentendpath* = query ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:377:9
else:
  static :
    hint("Declaration of " & "urlcomponentendpath" &
        " already exists, not redeclaring")
when not declared(urlcomponentendquery):
  when fragment is typedesc:
    type
      urlcomponentendquery* = fragment ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:378:9
  else:
    when fragment is static:
      const
        urlcomponentendquery* = fragment ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:378:9
    else:
      let urlcomponentendquery* = fragment ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:378:9
else:
  static :
    hint("Declaration of " & "urlcomponentendquery" &
        " already exists, not redeclaring")
when not declared(urlcomponentendauthorityfull):
  when path is typedesc:
    type
      urlcomponentendauthorityfull* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:380:9
  else:
    when path is static:
      const
        urlcomponentendauthorityfull* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:380:9
    else:
      let urlcomponentendauthorityfull* = path ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavformat/url.h:380:9
else:
  static :
    hint("Declaration of " & "urlcomponentendauthorityfull" &
        " already exists, not redeclaring")
when not declared(Fflambdashift):
  when 7 is static:
    const
      Fflambdashift* = 7     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:225:9
  else:
    let Fflambdashift* = 7   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:225:9
else:
  static :
    hint("Declaration of " & "Fflambdashift" &
        " already exists, not redeclaring")
when not declared(Ffqp2lambda):
  when 118 is static:
    const
      Ffqp2lambda* = 118     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:227:9
  else:
    let Ffqp2lambda* = 118   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:227:9
else:
  static :
    hint("Declaration of " & "Ffqp2lambda" & " already exists, not redeclaring")
when not declared(Avtimebase):
  when 1000000 is static:
    const
      Avtimebase* = 1000000  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:254:9
  else:
    let Avtimebase* = 1000000 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:254:9
else:
  static :
    hint("Declaration of " & "Avtimebase" & " already exists, not redeclaring")
when not declared(Averrormaxstringsize):
  when 64 is static:
    const
      Averrormaxstringsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/error.h:85:9
  else:
    let Averrormaxstringsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/error.h:85:9
else:
  static :
    hint("Declaration of " & "Averrormaxstringsize" &
        " already exists, not redeclaring")
when not declared(Mef):
  when 2.718281828459045 is static:
    const
      Mef* = 2.718281828459045 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:40:9
  else:
    let Mef* = 2.718281828459045 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:40:9
else:
  static :
    hint("Declaration of " & "Mef" & " already exists, not redeclaring")
when not declared(Mln2f):
  when 0.6931471805599453 is static:
    const
      Mln2f* = 0.6931471805599453 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:46:9
  else:
    let Mln2f* = 0.6931471805599453 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:46:9
else:
  static :
    hint("Declaration of " & "Mln2f" & " already exists, not redeclaring")
when not declared(Mln10f):
  when 2.302585092994046 is static:
    const
      Mln10f* = 2.302585092994046 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:52:9
  else:
    let Mln10f* = 2.302585092994046 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:52:9
else:
  static :
    hint("Declaration of " & "Mln10f" & " already exists, not redeclaring")
when not declared(Mlog210):
  when 3.321928094887362 is static:
    const
      Mlog210* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:55:9
  else:
    let Mlog210* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:55:9
else:
  static :
    hint("Declaration of " & "Mlog210" & " already exists, not redeclaring")
when not declared(Mlog210f):
  when 3.321928094887362 is static:
    const
      Mlog210f* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:58:9
  else:
    let Mlog210f* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:58:9
else:
  static :
    hint("Declaration of " & "Mlog210f" & " already exists, not redeclaring")
when not declared(Mphi):
  when 1.618033988749895 is static:
    const
      Mphi* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:61:9
  else:
    let Mphi* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:61:9
else:
  static :
    hint("Declaration of " & "Mphi" & " already exists, not redeclaring")
when not declared(Mphif):
  when 1.618033988749895 is static:
    const
      Mphif* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:64:9
  else:
    let Mphif* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:64:9
else:
  static :
    hint("Declaration of " & "Mphif" & " already exists, not redeclaring")
when not declared(Mpif):
  when 3.141592653589793 is static:
    const
      Mpif* = 3.141592653589793 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:70:9
  else:
    let Mpif* = 3.141592653589793 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:70:9
else:
  static :
    hint("Declaration of " & "Mpif" & " already exists, not redeclaring")
when not declared(Mpi2f):
  when 1.570796326794897 is static:
    const
      Mpi2f* = 1.570796326794897 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:76:9
  else:
    let Mpi2f* = 1.570796326794897 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:76:9
else:
  static :
    hint("Declaration of " & "Mpi2f" & " already exists, not redeclaring")
when not declared(Mpi4f):
  when 0.7853981633974483 is static:
    const
      Mpi4f* = 0.7853981633974483 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:82:9
  else:
    let Mpi4f* = 0.7853981633974483 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:82:9
else:
  static :
    hint("Declaration of " & "Mpi4f" & " already exists, not redeclaring")
when not declared(M1pif):
  when 0.3183098861837907 is static:
    const
      M1pif* = 0.3183098861837907 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:88:9
  else:
    let M1pif* = 0.3183098861837907 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:88:9
else:
  static :
    hint("Declaration of " & "M1pif" & " already exists, not redeclaring")
when not declared(M2pif):
  when 0.6366197723675814 is static:
    const
      M2pif* = 0.6366197723675814 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:94:9
  else:
    let M2pif* = 0.6366197723675814 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:94:9
else:
  static :
    hint("Declaration of " & "M2pif" & " already exists, not redeclaring")
when not declared(M2sqrtpif):
  when 1.128379167095513 is static:
    const
      M2sqrtpif* = 1.128379167095513 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:100:9
  else:
    let M2sqrtpif* = 1.128379167095513 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:100:9
else:
  static :
    hint("Declaration of " & "M2sqrtpif" & " already exists, not redeclaring")
when not declared(Msqrt12f):
  when 0.7071067811865476 is static:
    const
      Msqrt12f* = 0.7071067811865476 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:106:9
  else:
    let Msqrt12f* = 0.7071067811865476 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:106:9
else:
  static :
    hint("Declaration of " & "Msqrt12f" & " already exists, not redeclaring")
when not declared(Msqrt2f):
  when 1.414213562373095 is static:
    const
      Msqrt2f* = 1.414213562373095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:112:9
  else:
    let Msqrt2f* = 1.414213562373095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/mathematics.h:112:9
else:
  static :
    hint("Declaration of " & "Msqrt2f" & " already exists, not redeclaring")
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
when not declared(Avfourccmaxstringsize):
  when 32 is static:
    const
      Avfourccmaxstringsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:343:9
  else:
    let Avfourccmaxstringsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/avutil.h:343:9
else:
  static :
    hint("Declaration of " & "Avfourccmaxstringsize" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmajor):
  when 61 is static:
    const
      Libavcodecversionmajor* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version_major.h:28:9
  else:
    let Libavcodecversionmajor* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version_major.h:28:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmajor" &
        " already exists, not redeclaring")
when not declared(Avinputbufferpaddingsize):
  when 64 is static:
    const
      Avinputbufferpaddingsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:40:9
  else:
    let Avinputbufferpaddingsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:40:9
else:
  static :
    hint("Declaration of " & "Avinputbufferpaddingsize" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceverystrict):
  when 2 is static:
    const
      Ffcomplianceverystrict* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:58:9
  else:
    let Ffcomplianceverystrict* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:58:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceverystrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancestrict):
  when 1 is static:
    const
      Ffcompliancestrict* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:59:9
  else:
    let Ffcompliancestrict* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:59:9
else:
  static :
    hint("Declaration of " & "Ffcompliancestrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancenormal):
  when 0 is static:
    const
      Ffcompliancenormal* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:60:9
  else:
    let Ffcompliancenormal* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:60:9
else:
  static :
    hint("Declaration of " & "Ffcompliancenormal" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceunofficial):
  when -1 is static:
    const
      Ffcomplianceunofficial* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:61:9
  else:
    let Ffcomplianceunofficial* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:61:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceunofficial" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceexperimental):
  when -2 is static:
    const
      Ffcomplianceexperimental* = -2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:62:9
  else:
    let Ffcomplianceexperimental* = -2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:62:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceexperimental" &
        " already exists, not redeclaring")
when not declared(Avprofileunknown):
  when -99 is static:
    const
      Avprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:65:9
  else:
    let Avprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:65:9
else:
  static :
    hint("Declaration of " & "Avprofileunknown" &
        " already exists, not redeclaring")
when not declared(Avprofilereserved):
  when -100 is static:
    const
      Avprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:66:9
  else:
    let Avprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:66:9
else:
  static :
    hint("Declaration of " & "Avprofilereserved" &
        " already exists, not redeclaring")
when not declared(Avprofileaacmain):
  when 0 is static:
    const
      Avprofileaacmain* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:68:9
  else:
    let Avprofileaacmain* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:68:9
else:
  static :
    hint("Declaration of " & "Avprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Avprofileaaclow):
  when 1 is static:
    const
      Avprofileaaclow* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:69:9
  else:
    let Avprofileaaclow* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:69:9
else:
  static :
    hint("Declaration of " & "Avprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Avprofileaacssr):
  when 2 is static:
    const
      Avprofileaacssr* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:70:9
  else:
    let Avprofileaacssr* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:70:9
else:
  static :
    hint("Declaration of " & "Avprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Avprofileaacltp):
  when 3 is static:
    const
      Avprofileaacltp* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:71:9
  else:
    let Avprofileaacltp* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:71:9
else:
  static :
    hint("Declaration of " & "Avprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Avprofileaache):
  when 4 is static:
    const
      Avprofileaache* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:72:9
  else:
    let Avprofileaache* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:72:9
else:
  static :
    hint("Declaration of " & "Avprofileaache" &
        " already exists, not redeclaring")
when not declared(Avprofileaachev2):
  when 28 is static:
    const
      Avprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:73:9
  else:
    let Avprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:73:9
else:
  static :
    hint("Declaration of " & "Avprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Avprofileaacld):
  when 22 is static:
    const
      Avprofileaacld* = 22   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:74:9
  else:
    let Avprofileaacld* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:74:9
else:
  static :
    hint("Declaration of " & "Avprofileaacld" &
        " already exists, not redeclaring")
when not declared(Avprofileaaceld):
  when 38 is static:
    const
      Avprofileaaceld* = 38  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:75:9
  else:
    let Avprofileaaceld* = 38 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:75:9
else:
  static :
    hint("Declaration of " & "Avprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aaclow):
  when 128 is static:
    const
      Avprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:76:9
  else:
    let Avprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:76:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aache):
  when 131 is static:
    const
      Avprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:77:9
  else:
    let Avprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:77:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhd):
  when 0 is static:
    const
      Avprofilednxhd* = 0    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:79:9
  else:
    let Avprofilednxhd* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:79:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrlb):
  when 1 is static:
    const
      Avprofilednxhrlb* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:80:9
  else:
    let Avprofilednxhrlb* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:80:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrsq):
  when 2 is static:
    const
      Avprofilednxhrsq* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:81:9
  else:
    let Avprofilednxhrsq* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:81:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhq):
  when 3 is static:
    const
      Avprofilednxhrhq* = 3  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:82:9
  else:
    let Avprofilednxhrhq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:82:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhqx):
  when 4 is static:
    const
      Avprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:83:9
  else:
    let Avprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:83:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhr444):
  when 5 is static:
    const
      Avprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:84:9
  else:
    let Avprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:84:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Avprofiledts):
  when 20 is static:
    const
      Avprofiledts* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:86:9
  else:
    let Avprofiledts* = 20   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:86:9
else:
  static :
    hint("Declaration of " & "Avprofiledts" & " already exists, not redeclaring")
when not declared(Avprofiledtses):
  when 30 is static:
    const
      Avprofiledtses* = 30   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:87:9
  else:
    let Avprofiledtses* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:87:9
else:
  static :
    hint("Declaration of " & "Avprofiledtses" &
        " already exists, not redeclaring")
when not declared(Avprofiledts9624):
  when 40 is static:
    const
      Avprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:88:9
  else:
    let Avprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:88:9
else:
  static :
    hint("Declaration of " & "Avprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdhra):
  when 50 is static:
    const
      Avprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:89:9
  else:
    let Avprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:89:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdma):
  when 60 is static:
    const
      Avprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:90:9
  else:
    let Avprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:90:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Avprofiledtsexpress):
  when 70 is static:
    const
      Avprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:91:9
  else:
    let Avprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:91:9
else:
  static :
    hint("Declaration of " & "Avprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmax):
  when 61 is static:
    const
      Avprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:92:9
  else:
    let Avprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:92:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmaximax):
  when 62 is static:
    const
      Avprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:93:9
  else:
    let Avprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:93:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Avprofileeac3ddpatmos):
  when 30 is static:
    const
      Avprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:95:9
  else:
    let Avprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:95:9
else:
  static :
    hint("Declaration of " & "Avprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Avprofiletruehdatmos):
  when 30 is static:
    const
      Avprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:97:9
  else:
    let Avprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:97:9
else:
  static :
    hint("Declaration of " & "Avprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2422):
  when 0 is static:
    const
      Avprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:99:9
  else:
    let Avprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:99:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2high):
  when 1 is static:
    const
      Avprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:100:9
  else:
    let Avprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:100:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2ss):
  when 2 is static:
    const
      Avprofilempeg2ss* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:101:9
  else:
    let Avprofilempeg2ss* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:101:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2snrscalable):
  when 3 is static:
    const
      Avprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:102:9
  else:
    let Avprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:102:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2main):
  when 4 is static:
    const
      Avprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:103:9
  else:
    let Avprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:103:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2simple):
  when 5 is static:
    const
      Avprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:104:9
  else:
    let Avprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:104:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Avprofileh264baseline):
  when 66 is static:
    const
      Avprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:109:9
  else:
    let Avprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:109:9
else:
  static :
    hint("Declaration of " & "Avprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Avprofileh264main):
  when 77 is static:
    const
      Avprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:111:9
  else:
    let Avprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:111:9
else:
  static :
    hint("Declaration of " & "Avprofileh264main" &
        " already exists, not redeclaring")
when not declared(Avprofileh264extended):
  when 88 is static:
    const
      Avprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:112:9
  else:
    let Avprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:112:9
else:
  static :
    hint("Declaration of " & "Avprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high):
  when 100 is static:
    const
      Avprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:113:9
  else:
    let Avprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:113:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high10):
  when 110 is static:
    const
      Avprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:114:9
  else:
    let Avprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:114:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Avprofileh264multiviewhigh):
  when 118 is static:
    const
      Avprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:116:9
  else:
    let Avprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:116:9
else:
  static :
    hint("Declaration of " & "Avprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high422):
  when 122 is static:
    const
      Avprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:117:9
  else:
    let Avprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:117:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Avprofileh264stereohigh):
  when 128 is static:
    const
      Avprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:119:9
  else:
    let Avprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:119:9
else:
  static :
    hint("Declaration of " & "Avprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444):
  when 144 is static:
    const
      Avprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:120:9
  else:
    let Avprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:120:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444predictive):
  when 244 is static:
    const
      Avprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:121:9
  else:
    let Avprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:121:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Avprofileh264cavlc444):
  when 44 is static:
    const
      Avprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:123:9
  else:
    let Avprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:123:9
else:
  static :
    hint("Declaration of " & "Avprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1simple):
  when 0 is static:
    const
      Avprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:125:9
  else:
    let Avprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:125:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1main):
  when 1 is static:
    const
      Avprofilevc1main* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:126:9
  else:
    let Avprofilevc1main* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:126:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1complex):
  when 2 is static:
    const
      Avprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:127:9
  else:
    let Avprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:127:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1advanced):
  when 3 is static:
    const
      Avprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:128:9
  else:
    let Avprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:128:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simple):
  when 0 is static:
    const
      Avprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:130:9
  else:
    let Avprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:130:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplescalable):
  when 1 is static:
    const
      Avprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:131:9
  else:
    let Avprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:131:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4core):
  when 2 is static:
    const
      Avprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:132:9
  else:
    let Avprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:132:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4main):
  when 3 is static:
    const
      Avprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:133:9
  else:
    let Avprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:133:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4nbit):
  when 4 is static:
    const
      Avprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:134:9
  else:
    let Avprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:134:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4scalabletexture):
  when 5 is static:
    const
      Avprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:135:9
  else:
    let Avprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:135:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:136:9
  else:
    let Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:136:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:137:9
  else:
    let Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:137:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4hybrid):
  when 8 is static:
    const
      Avprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:138:9
  else:
    let Avprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:138:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Avprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:139:9
  else:
    let Avprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:139:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4corescalable):
  when 10 is static:
    const
      Avprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:140:9
  else:
    let Avprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:140:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcoding):
  when 11 is static:
    const
      Avprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:141:9
  else:
    let Avprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:141:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcore):
  when 12 is static:
    const
      Avprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:142:9
  else:
    let Avprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:142:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:143:9
  else:
    let Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:143:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplestudio):
  when 14 is static:
    const
      Avprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:144:9
  else:
    let Avprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:144:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedsimple):
  when 15 is static:
    const
      Avprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:145:9
  else:
    let Avprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:145:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:147:9
  else:
    let Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:147:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:148:9
  else:
    let Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:148:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:149:9
  else:
    let Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:149:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:150:9
  else:
    let Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:150:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:151:9
  else:
    let Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:151:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Avprofilevp90):
  when 0 is static:
    const
      Avprofilevp90* = 0     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:153:9
  else:
    let Avprofilevp90* = 0   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:153:9
else:
  static :
    hint("Declaration of " & "Avprofilevp90" &
        " already exists, not redeclaring")
when not declared(Avprofilevp91):
  when 1 is static:
    const
      Avprofilevp91* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:154:9
  else:
    let Avprofilevp91* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:154:9
else:
  static :
    hint("Declaration of " & "Avprofilevp91" &
        " already exists, not redeclaring")
when not declared(Avprofilevp92):
  when 2 is static:
    const
      Avprofilevp92* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:155:9
  else:
    let Avprofilevp92* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:155:9
else:
  static :
    hint("Declaration of " & "Avprofilevp92" &
        " already exists, not redeclaring")
when not declared(Avprofilevp93):
  when 3 is static:
    const
      Avprofilevp93* = 3     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:156:9
  else:
    let Avprofilevp93* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:156:9
else:
  static :
    hint("Declaration of " & "Avprofilevp93" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain):
  when 1 is static:
    const
      Avprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:158:9
  else:
    let Avprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:158:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain10):
  when 2 is static:
    const
      Avprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:159:9
  else:
    let Avprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:159:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmainstillpicture):
  when 3 is static:
    const
      Avprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:160:9
  else:
    let Avprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:160:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcrext):
  when 4 is static:
    const
      Avprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:161:9
  else:
    let Avprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:161:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcscc):
  when 9 is static:
    const
      Avprofilehevcscc* = 9  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:162:9
  else:
    let Avprofilehevcscc* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:162:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10):
  when 1 is static:
    const
      Avprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:164:9
  else:
    let Avprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:164:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10444):
  when 33 is static:
    const
      Avprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:165:9
  else:
    let Avprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:165:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Avprofileav1main):
  when 0 is static:
    const
      Avprofileav1main* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:167:9
  else:
    let Avprofileav1main* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:167:9
else:
  static :
    hint("Declaration of " & "Avprofileav1main" &
        " already exists, not redeclaring")
when not declared(Avprofileav1high):
  when 1 is static:
    const
      Avprofileav1high* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:168:9
  else:
    let Avprofileav1high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:168:9
else:
  static :
    hint("Declaration of " & "Avprofileav1high" &
        " already exists, not redeclaring")
when not declared(Avprofileav1professional):
  when 2 is static:
    const
      Avprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:169:9
  else:
    let Avprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:169:9
else:
  static :
    hint("Declaration of " & "Avprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:171:9
  else:
    let Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:171:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:172:9
  else:
    let Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:172:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:173:9
  else:
    let Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:173:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:174:9
  else:
    let Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:174:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpegjpegls):
  when 247 is static:
    const
      Avprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:175:9
  else:
    let Avprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:175:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Avprofilesbcmsbc):
  when 1 is static:
    const
      Avprofilesbcmsbc* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:177:9
  else:
    let Avprofilesbcmsbc* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:177:9
else:
  static :
    hint("Declaration of " & "Avprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Avprofileproresproxy):
  when 0 is static:
    const
      Avprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:179:9
  else:
    let Avprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:179:9
else:
  static :
    hint("Declaration of " & "Avprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Avprofileproreslt):
  when 1 is static:
    const
      Avprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:180:9
  else:
    let Avprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:180:9
else:
  static :
    hint("Declaration of " & "Avprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Avprofileproresstandard):
  when 2 is static:
    const
      Avprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:181:9
  else:
    let Avprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:181:9
else:
  static :
    hint("Declaration of " & "Avprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Avprofileproreshq):
  when 3 is static:
    const
      Avprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:182:9
  else:
    let Avprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:182:9
else:
  static :
    hint("Declaration of " & "Avprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Avprofileprores4444):
  when 4 is static:
    const
      Avprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:183:9
  else:
    let Avprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:183:9
else:
  static :
    hint("Declaration of " & "Avprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Avprofileproresxq):
  when 5 is static:
    const
      Avprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:184:9
  else:
    let Avprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:184:9
else:
  static :
    hint("Declaration of " & "Avprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilea):
  when 0 is static:
    const
      Avprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:186:9
  else:
    let Avprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:186:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilec):
  when 1 is static:
    const
      Avprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:187:9
  else:
    let Avprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:187:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Avprofileklvasync):
  when 0 is static:
    const
      Avprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:189:9
  else:
    let Avprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:189:9
else:
  static :
    hint("Declaration of " & "Avprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Avprofileklvaasync):
  when 1 is static:
    const
      Avprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:190:9
  else:
    let Avprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:190:9
else:
  static :
    hint("Declaration of " & "Avprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Avprofileevcbaseline):
  when 0 is static:
    const
      Avprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:192:9
  else:
    let Avprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:192:9
else:
  static :
    hint("Declaration of " & "Avprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Avprofileevcmain):
  when 1 is static:
    const
      Avprofileevcmain* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:193:9
  else:
    let Avprofileevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:193:9
else:
  static :
    hint("Declaration of " & "Avprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Avlevelunknown):
  when -99 is static:
    const
      Avlevelunknown* = -99  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:196:9
  else:
    let Avlevelunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:196:9
else:
  static :
    hint("Declaration of " & "Avlevelunknown" &
        " already exists, not redeclaring")
when not declared(Avpktflagkey):
  when 1 is static:
    const
      Avpktflagkey* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:579:9
  else:
    let Avpktflagkey* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:579:9
else:
  static :
    hint("Declaration of " & "Avpktflagkey" & " already exists, not redeclaring")
when not declared(Avpktflagcorrupt):
  when 2 is static:
    const
      Avpktflagcorrupt* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:580:9
  else:
    let Avpktflagcorrupt* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:580:9
else:
  static :
    hint("Declaration of " & "Avpktflagcorrupt" &
        " already exists, not redeclaring")
when not declared(Avpktflagdiscard):
  when 4 is static:
    const
      Avpktflagdiscard* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:586:9
  else:
    let Avpktflagdiscard* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:586:9
else:
  static :
    hint("Declaration of " & "Avpktflagdiscard" &
        " already exists, not redeclaring")
when not declared(Avpktflagtrusted):
  when 8 is static:
    const
      Avpktflagtrusted* = 8  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:593:9
  else:
    let Avpktflagtrusted* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:593:9
else:
  static :
    hint("Declaration of " & "Avpktflagtrusted" &
        " already exists, not redeclaring")
when not declared(Avpktflagdisposable):
  when 16 is static:
    const
      Avpktflagdisposable* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:598:9
  else:
    let Avpktflagdisposable* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:598:9
else:
  static :
    hint("Declaration of " & "Avpktflagdisposable" &
        " already exists, not redeclaring")
when not declared(Avnumdatapointers):
  when 8 is static:
    const
      Avnumdatapointers* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:375:9
  else:
    let Avnumdatapointers* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:375:9
else:
  static :
    hint("Declaration of " & "Avnumdatapointers" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrorinvalidbitstream):
  when 1 is static:
    const
      Ffdecodeerrorinvalidbitstream* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:702:9
  else:
    let Ffdecodeerrorinvalidbitstream* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:702:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrorinvalidbitstream" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrormissingreference):
  when 2 is static:
    const
      Ffdecodeerrormissingreference* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:703:9
  else:
    let Ffdecodeerrormissingreference* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:703:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrormissingreference" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrorconcealmentactive):
  when 4 is static:
    const
      Ffdecodeerrorconcealmentactive* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:704:9
  else:
    let Ffdecodeerrorconcealmentactive* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:704:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrorconcealmentactive" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrordecodeslices):
  when 8 is static:
    const
      Ffdecodeerrordecodeslices* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:705:9
  else:
    let Ffdecodeerrordecodeslices* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:705:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrordecodeslices" &
        " already exists, not redeclaring")
when not declared(Avprobescoreextension):
  when 50 is static:
    const
      Avprobescoreextension* = 50 ## Generated based on /usr/include/libavformat/avformat.h:462:9
  else:
    let Avprobescoreextension* = 50 ## Generated based on /usr/include/libavformat/avformat.h:462:9
else:
  static :
    hint("Declaration of " & "Avprobescoreextension" &
        " already exists, not redeclaring")
when not declared(Avprobescoremime):
  when 75 is static:
    const
      Avprobescoremime* = 75 ## Generated based on /usr/include/libavformat/avformat.h:463:9
  else:
    let Avprobescoremime* = 75 ## Generated based on /usr/include/libavformat/avformat.h:463:9
else:
  static :
    hint("Declaration of " & "Avprobescoremime" &
        " already exists, not redeclaring")
when not declared(Avprobescoremax):
  when 100 is static:
    const
      Avprobescoremax* = 100 ## Generated based on /usr/include/libavformat/avformat.h:464:9
  else:
    let Avprobescoremax* = 100 ## Generated based on /usr/include/libavformat/avformat.h:464:9
else:
  static :
    hint("Declaration of " & "Avprobescoremax" &
        " already exists, not redeclaring")
when not declared(Avprobepaddingsize):
  when 32 is static:
    const
      Avprobepaddingsize* = 32 ## Generated based on /usr/include/libavformat/avformat.h:466:9
  else:
    let Avprobepaddingsize* = 32 ## Generated based on /usr/include/libavformat/avformat.h:466:9
else:
  static :
    hint("Declaration of " & "Avprobepaddingsize" &
        " already exists, not redeclaring")
when not declared(Avfmtnofile):
  when 1 is static:
    const
      Avfmtnofile* = 1       ## Generated based on /usr/include/libavformat/avformat.h:469:9
  else:
    let Avfmtnofile* = 1     ## Generated based on /usr/include/libavformat/avformat.h:469:9
else:
  static :
    hint("Declaration of " & "Avfmtnofile" & " already exists, not redeclaring")
when not declared(Avfmtneednumber):
  when 2 is static:
    const
      Avfmtneednumber* = 2   ## Generated based on /usr/include/libavformat/avformat.h:470:9
  else:
    let Avfmtneednumber* = 2 ## Generated based on /usr/include/libavformat/avformat.h:470:9
else:
  static :
    hint("Declaration of " & "Avfmtneednumber" &
        " already exists, not redeclaring")
when not declared(Avfmtexperimental):
  when 4 is static:
    const
      Avfmtexperimental* = 4 ## Generated based on /usr/include/libavformat/avformat.h:477:9
  else:
    let Avfmtexperimental* = 4 ## Generated based on /usr/include/libavformat/avformat.h:477:9
else:
  static :
    hint("Declaration of " & "Avfmtexperimental" &
        " already exists, not redeclaring")
when not declared(Avfmtshowids):
  when 8 is static:
    const
      Avfmtshowids* = 8      ## Generated based on /usr/include/libavformat/avformat.h:478:9
  else:
    let Avfmtshowids* = 8    ## Generated based on /usr/include/libavformat/avformat.h:478:9
else:
  static :
    hint("Declaration of " & "Avfmtshowids" & " already exists, not redeclaring")
when not declared(Avfmtglobalheader):
  when 64 is static:
    const
      Avfmtglobalheader* = 64 ## Generated based on /usr/include/libavformat/avformat.h:479:9
  else:
    let Avfmtglobalheader* = 64 ## Generated based on /usr/include/libavformat/avformat.h:479:9
else:
  static :
    hint("Declaration of " & "Avfmtglobalheader" &
        " already exists, not redeclaring")
when not declared(Avfmtnotimestamps):
  when 128 is static:
    const
      Avfmtnotimestamps* = 128 ## Generated based on /usr/include/libavformat/avformat.h:480:9
  else:
    let Avfmtnotimestamps* = 128 ## Generated based on /usr/include/libavformat/avformat.h:480:9
else:
  static :
    hint("Declaration of " & "Avfmtnotimestamps" &
        " already exists, not redeclaring")
when not declared(Avfmtgenericindex):
  when 256 is static:
    const
      Avfmtgenericindex* = 256 ## Generated based on /usr/include/libavformat/avformat.h:481:9
  else:
    let Avfmtgenericindex* = 256 ## Generated based on /usr/include/libavformat/avformat.h:481:9
else:
  static :
    hint("Declaration of " & "Avfmtgenericindex" &
        " already exists, not redeclaring")
when not declared(Avfmttsdiscont):
  when 512 is static:
    const
      Avfmttsdiscont* = 512  ## Generated based on /usr/include/libavformat/avformat.h:482:9
  else:
    let Avfmttsdiscont* = 512 ## Generated based on /usr/include/libavformat/avformat.h:482:9
else:
  static :
    hint("Declaration of " & "Avfmttsdiscont" &
        " already exists, not redeclaring")
when not declared(Avfmtvariablefps):
  when 1024 is static:
    const
      Avfmtvariablefps* = 1024 ## Generated based on /usr/include/libavformat/avformat.h:483:9
  else:
    let Avfmtvariablefps* = 1024 ## Generated based on /usr/include/libavformat/avformat.h:483:9
else:
  static :
    hint("Declaration of " & "Avfmtvariablefps" &
        " already exists, not redeclaring")
when not declared(Avfmtnodimensions):
  when 2048 is static:
    const
      Avfmtnodimensions* = 2048 ## Generated based on /usr/include/libavformat/avformat.h:484:9
  else:
    let Avfmtnodimensions* = 2048 ## Generated based on /usr/include/libavformat/avformat.h:484:9
else:
  static :
    hint("Declaration of " & "Avfmtnodimensions" &
        " already exists, not redeclaring")
when not declared(Avfmtnostreams):
  when 4096 is static:
    const
      Avfmtnostreams* = 4096 ## Generated based on /usr/include/libavformat/avformat.h:485:9
  else:
    let Avfmtnostreams* = 4096 ## Generated based on /usr/include/libavformat/avformat.h:485:9
else:
  static :
    hint("Declaration of " & "Avfmtnostreams" &
        " already exists, not redeclaring")
when not declared(Avfmtnobinsearch):
  when 8192 is static:
    const
      Avfmtnobinsearch* = 8192 ## Generated based on /usr/include/libavformat/avformat.h:486:9
  else:
    let Avfmtnobinsearch* = 8192 ## Generated based on /usr/include/libavformat/avformat.h:486:9
else:
  static :
    hint("Declaration of " & "Avfmtnobinsearch" &
        " already exists, not redeclaring")
when not declared(Avfmtnogensearch):
  when 16384 is static:
    const
      Avfmtnogensearch* = 16384 ## Generated based on /usr/include/libavformat/avformat.h:487:9
  else:
    let Avfmtnogensearch* = 16384 ## Generated based on /usr/include/libavformat/avformat.h:487:9
else:
  static :
    hint("Declaration of " & "Avfmtnogensearch" &
        " already exists, not redeclaring")
when not declared(Avfmtnobyteseek):
  when 32768 is static:
    const
      Avfmtnobyteseek* = 32768 ## Generated based on /usr/include/libavformat/avformat.h:488:9
  else:
    let Avfmtnobyteseek* = 32768 ## Generated based on /usr/include/libavformat/avformat.h:488:9
else:
  static :
    hint("Declaration of " & "Avfmtnobyteseek" &
        " already exists, not redeclaring")
when not declared(Avfmtallowflush):
  when 65536 is static:
    const
      Avfmtallowflush* = 65536 ## Generated based on /usr/include/libavformat/avformat.h:490:9
  else:
    let Avfmtallowflush* = 65536 ## Generated based on /usr/include/libavformat/avformat.h:490:9
else:
  static :
    hint("Declaration of " & "Avfmtallowflush" &
        " already exists, not redeclaring")
when not declared(Avfmttsnonstrict):
  when 131072 is static:
    const
      Avfmttsnonstrict* = 131072 ## Generated based on /usr/include/libavformat/avformat.h:492:9
  else:
    let Avfmttsnonstrict* = 131072 ## Generated based on /usr/include/libavformat/avformat.h:492:9
else:
  static :
    hint("Declaration of " & "Avfmttsnonstrict" &
        " already exists, not redeclaring")
when not declared(Avfmttsnegative):
  when 262144 is static:
    const
      Avfmttsnegative* = 262144 ## Generated based on /usr/include/libavformat/avformat.h:495:9
  else:
    let Avfmttsnegative* = 262144 ## Generated based on /usr/include/libavformat/avformat.h:495:9
else:
  static :
    hint("Declaration of " & "Avfmttsnegative" &
        " already exists, not redeclaring")
when not declared(Avfmtseektopts):
  when 67108864 is static:
    const
      Avfmtseektopts* = 67108864 ## Generated based on /usr/include/libavformat/avformat.h:504:9
  else:
    let Avfmtseektopts* = 67108864 ## Generated based on /usr/include/libavformat/avformat.h:504:9
else:
  static :
    hint("Declaration of " & "Avfmtseektopts" &
        " already exists, not redeclaring")
when not declared(Avindexkeyframe):
  when 1 is static:
    const
      Avindexkeyframe* = 1   ## Generated based on /usr/include/libavformat/avformat.h:708:9
  else:
    let Avindexkeyframe* = 1 ## Generated based on /usr/include/libavformat/avformat.h:708:9
else:
  static :
    hint("Declaration of " & "Avindexkeyframe" &
        " already exists, not redeclaring")
when not declared(Avindexdiscardframe):
  when 2 is static:
    const
      Avindexdiscardframe* = 2 ## Generated based on /usr/include/libavformat/avformat.h:709:9
  else:
    let Avindexdiscardframe* = 2 ## Generated based on /usr/include/libavformat/avformat.h:709:9
else:
  static :
    hint("Declaration of " & "Avindexdiscardframe" &
        " already exists, not redeclaring")
when not declared(Avptswrapignore):
  when 0 is static:
    const
      Avptswrapignore* = 0   ## Generated based on /usr/include/libavformat/avformat.h:832:9
  else:
    let Avptswrapignore* = 0 ## Generated based on /usr/include/libavformat/avformat.h:832:9
else:
  static :
    hint("Declaration of " & "Avptswrapignore" &
        " already exists, not redeclaring")
when not declared(Avptswrapaddoffset):
  when 1 is static:
    const
      Avptswrapaddoffset* = 1 ## Generated based on /usr/include/libavformat/avformat.h:833:9
  else:
    let Avptswrapaddoffset* = 1 ## Generated based on /usr/include/libavformat/avformat.h:833:9
else:
  static :
    hint("Declaration of " & "Avptswrapaddoffset" &
        " already exists, not redeclaring")
when not declared(Avptswrapsuboffset):
  when -1 is static:
    const
      Avptswrapsuboffset* = -1 ## Generated based on /usr/include/libavformat/avformat.h:834:9
  else:
    let Avptswrapsuboffset* = -1 ## Generated based on /usr/include/libavformat/avformat.h:834:9
else:
  static :
    hint("Declaration of " & "Avptswrapsuboffset" &
        " already exists, not redeclaring")
when not declared(Avstreameventflagmetadataupdated):
  when 1 is static:
    const
      Avstreameventflagmetadataupdated* = 1 ## Generated based on /usr/include/libavformat/avformat.h:993:9
  else:
    let Avstreameventflagmetadataupdated* = 1 ## Generated based on /usr/include/libavformat/avformat.h:993:9
else:
  static :
    hint("Declaration of " & "Avstreameventflagmetadataupdated" &
        " already exists, not redeclaring")
when not declared(Avprogramrunning):
  when 1 is static:
    const
      Avprogramrunning* = 1  ## Generated based on /usr/include/libavformat/avformat.h:1037:9
  else:
    let Avprogramrunning* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1037:9
else:
  static :
    hint("Declaration of " & "Avprogramrunning" &
        " already exists, not redeclaring")
when not declared(Avfmtctxnoheader):
  when 1 is static:
    const
      Avfmtctxnoheader* = 1  ## Generated based on /usr/include/libavformat/avformat.h:1072:9
  else:
    let Avfmtctxnoheader* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1072:9
else:
  static :
    hint("Declaration of " & "Avfmtctxnoheader" &
        " already exists, not redeclaring")
when not declared(Avfmtctxunseekable):
  when 2 is static:
    const
      Avfmtctxunseekable* = 2 ## Generated based on /usr/include/libavformat/avformat.h:1074:9
  else:
    let Avfmtctxunseekable* = 2 ## Generated based on /usr/include/libavformat/avformat.h:1074:9
else:
  static :
    hint("Declaration of " & "Avfmtctxunseekable" &
        " already exists, not redeclaring")
when not declared(Avfmtflaggenpts):
  when 1 is static:
    const
      Avfmtflaggenpts* = 1   ## Generated based on /usr/include/libavformat/avformat.h:1240:9
  else:
    let Avfmtflaggenpts* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1240:9
else:
  static :
    hint("Declaration of " & "Avfmtflaggenpts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagignidx):
  when 2 is static:
    const
      Avfmtflagignidx* = 2   ## Generated based on /usr/include/libavformat/avformat.h:1241:9
  else:
    let Avfmtflagignidx* = 2 ## Generated based on /usr/include/libavformat/avformat.h:1241:9
else:
  static :
    hint("Declaration of " & "Avfmtflagignidx" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnonblock):
  when 4 is static:
    const
      Avfmtflagnonblock* = 4 ## Generated based on /usr/include/libavformat/avformat.h:1242:9
  else:
    let Avfmtflagnonblock* = 4 ## Generated based on /usr/include/libavformat/avformat.h:1242:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnonblock" &
        " already exists, not redeclaring")
when not declared(Avfmtflagigndts):
  when 8 is static:
    const
      Avfmtflagigndts* = 8   ## Generated based on /usr/include/libavformat/avformat.h:1243:9
  else:
    let Avfmtflagigndts* = 8 ## Generated based on /usr/include/libavformat/avformat.h:1243:9
else:
  static :
    hint("Declaration of " & "Avfmtflagigndts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnofillin):
  when 16 is static:
    const
      Avfmtflagnofillin* = 16 ## Generated based on /usr/include/libavformat/avformat.h:1244:9
  else:
    let Avfmtflagnofillin* = 16 ## Generated based on /usr/include/libavformat/avformat.h:1244:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnofillin" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnoparse):
  when 32 is static:
    const
      Avfmtflagnoparse* = 32 ## Generated based on /usr/include/libavformat/avformat.h:1245:9
  else:
    let Avfmtflagnoparse* = 32 ## Generated based on /usr/include/libavformat/avformat.h:1245:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnoparse" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnobuffer):
  when 64 is static:
    const
      Avfmtflagnobuffer* = 64 ## Generated based on /usr/include/libavformat/avformat.h:1246:9
  else:
    let Avfmtflagnobuffer* = 64 ## Generated based on /usr/include/libavformat/avformat.h:1246:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnobuffer" &
        " already exists, not redeclaring")
when not declared(Avfmtflagcustomio):
  when 128 is static:
    const
      Avfmtflagcustomio* = 128 ## Generated based on /usr/include/libavformat/avformat.h:1247:9
  else:
    let Avfmtflagcustomio* = 128 ## Generated based on /usr/include/libavformat/avformat.h:1247:9
else:
  static :
    hint("Declaration of " & "Avfmtflagcustomio" &
        " already exists, not redeclaring")
when not declared(Avfmtflagdiscardcorrupt):
  when 256 is static:
    const
      Avfmtflagdiscardcorrupt* = 256 ## Generated based on /usr/include/libavformat/avformat.h:1248:9
  else:
    let Avfmtflagdiscardcorrupt* = 256 ## Generated based on /usr/include/libavformat/avformat.h:1248:9
else:
  static :
    hint("Declaration of " & "Avfmtflagdiscardcorrupt" &
        " already exists, not redeclaring")
when not declared(Avfmtflagflushpackets):
  when 512 is static:
    const
      Avfmtflagflushpackets* = 512 ## Generated based on /usr/include/libavformat/avformat.h:1249:9
  else:
    let Avfmtflagflushpackets* = 512 ## Generated based on /usr/include/libavformat/avformat.h:1249:9
else:
  static :
    hint("Declaration of " & "Avfmtflagflushpackets" &
        " already exists, not redeclaring")
when not declared(Avfmtflagbitexact):
  when 1024 is static:
    const
      Avfmtflagbitexact* = 1024 ## Generated based on /usr/include/libavformat/avformat.h:1256:9
  else:
    let Avfmtflagbitexact* = 1024 ## Generated based on /usr/include/libavformat/avformat.h:1256:9
else:
  static :
    hint("Declaration of " & "Avfmtflagbitexact" &
        " already exists, not redeclaring")
when not declared(Avfmtflagsortdts):
  when 65536 is static:
    const
      Avfmtflagsortdts* = 65536 ## Generated based on /usr/include/libavformat/avformat.h:1257:9
  else:
    let Avfmtflagsortdts* = 65536 ## Generated based on /usr/include/libavformat/avformat.h:1257:9
else:
  static :
    hint("Declaration of " & "Avfmtflagsortdts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagfastseek):
  when 524288 is static:
    const
      Avfmtflagfastseek* = 524288 ## Generated based on /usr/include/libavformat/avformat.h:1258:9
  else:
    let Avfmtflagfastseek* = 524288 ## Generated based on /usr/include/libavformat/avformat.h:1258:9
else:
  static :
    hint("Declaration of " & "Avfmtflagfastseek" &
        " already exists, not redeclaring")
when not declared(Avfmtflagshortest):
  when 1048576 is static:
    const
      Avfmtflagshortest* = 1048576 ## Generated based on /usr/include/libavformat/avformat.h:1260:9
  else:
    let Avfmtflagshortest* = 1048576 ## Generated based on /usr/include/libavformat/avformat.h:1260:9
else:
  static :
    hint("Declaration of " & "Avfmtflagshortest" &
        " already exists, not redeclaring")
when not declared(Avfmtflagautobsf):
  when 2097152 is static:
    const
      Avfmtflagautobsf* = 2097152 ## Generated based on /usr/include/libavformat/avformat.h:1262:9
  else:
    let Avfmtflagautobsf* = 2097152 ## Generated based on /usr/include/libavformat/avformat.h:1262:9
else:
  static :
    hint("Declaration of " & "Avfmtflagautobsf" &
        " already exists, not redeclaring")
when not declared(Fffdebugts):
  when 1 is static:
    const
      Fffdebugts* = 1        ## Generated based on /usr/include/libavformat/avformat.h:1393:9
  else:
    let Fffdebugts* = 1      ## Generated based on /usr/include/libavformat/avformat.h:1393:9
else:
  static :
    hint("Declaration of " & "Fffdebugts" & " already exists, not redeclaring")
when not declared(Avfmteventflagmetadataupdated):
  when 1 is static:
    const
      Avfmteventflagmetadataupdated* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1437:9
  else:
    let Avfmteventflagmetadataupdated* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1437:9
else:
  static :
    hint("Declaration of " & "Avfmteventflagmetadataupdated" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsauto):
  when -1 is static:
    const
      Avfmtavoidnegtsauto* = -1 ## Generated based on /usr/include/libavformat/avformat.h:1453:9
  else:
    let Avfmtavoidnegtsauto* = -1 ## Generated based on /usr/include/libavformat/avformat.h:1453:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsauto" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsdisabled):
  when 0 is static:
    const
      Avfmtavoidnegtsdisabled* = 0 ## Generated based on /usr/include/libavformat/avformat.h:1454:9
  else:
    let Avfmtavoidnegtsdisabled* = 0 ## Generated based on /usr/include/libavformat/avformat.h:1454:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsdisabled" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsmakenonnegative):
  when 1 is static:
    const
      Avfmtavoidnegtsmakenonnegative* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1455:9
  else:
    let Avfmtavoidnegtsmakenonnegative* = 1 ## Generated based on /usr/include/libavformat/avformat.h:1455:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsmakenonnegative" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsmakezero):
  when 2 is static:
    const
      Avfmtavoidnegtsmakezero* = 2 ## Generated based on /usr/include/libavformat/avformat.h:1456:9
  else:
    let Avfmtavoidnegtsmakezero* = 2 ## Generated based on /usr/include/libavformat/avformat.h:1456:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsmakezero" &
        " already exists, not redeclaring")
when not declared(Avseekflagbackward):
  when 1 is static:
    const
      Avseekflagbackward* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2230:9
  else:
    let Avseekflagbackward* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2230:9
else:
  static :
    hint("Declaration of " & "Avseekflagbackward" &
        " already exists, not redeclaring")
when not declared(Avseekflagbyte):
  when 2 is static:
    const
      Avseekflagbyte* = 2    ## Generated based on /usr/include/libavformat/avformat.h:2231:9
  else:
    let Avseekflagbyte* = 2  ## Generated based on /usr/include/libavformat/avformat.h:2231:9
else:
  static :
    hint("Declaration of " & "Avseekflagbyte" &
        " already exists, not redeclaring")
when not declared(Avseekflagany):
  when 4 is static:
    const
      Avseekflagany* = 4     ## Generated based on /usr/include/libavformat/avformat.h:2232:9
  else:
    let Avseekflagany* = 4   ## Generated based on /usr/include/libavformat/avformat.h:2232:9
else:
  static :
    hint("Declaration of " & "Avseekflagany" &
        " already exists, not redeclaring")
when not declared(Avseekflagframe):
  when 8 is static:
    const
      Avseekflagframe* = 8   ## Generated based on /usr/include/libavformat/avformat.h:2233:9
  else:
    let Avseekflagframe* = 8 ## Generated based on /usr/include/libavformat/avformat.h:2233:9
else:
  static :
    hint("Declaration of " & "Avseekflagframe" &
        " already exists, not redeclaring")
when not declared(Avstreaminitinwriteheader):
  when 0 is static:
    const
      Avstreaminitinwriteheader* = 0 ## Generated based on /usr/include/libavformat/avformat.h:2240:9
  else:
    let Avstreaminitinwriteheader* = 0 ## Generated based on /usr/include/libavformat/avformat.h:2240:9
else:
  static :
    hint("Declaration of " & "Avstreaminitinwriteheader" &
        " already exists, not redeclaring")
when not declared(Avstreaminitininitoutput):
  when 1 is static:
    const
      Avstreaminitininitoutput* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2241:9
  else:
    let Avstreaminitininitoutput* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2241:9
else:
  static :
    hint("Declaration of " & "Avstreaminitininitoutput" &
        " already exists, not redeclaring")
when not declared(Avframefilenameflagsmultiple):
  when 1 is static:
    const
      Avframefilenameflagsmultiple* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2676:9
  else:
    let Avframefilenameflagsmultiple* = 1 ## Generated based on /usr/include/libavformat/avformat.h:2676:9
else:
  static :
    hint("Declaration of " & "Avframefilenameflagsmultiple" &
        " already exists, not redeclaring")
when not declared(avdictget):
  proc avdictget*(m: ptr Avdictionary_520094083; key: cstring;
                  prev: ptr Avdictionaryentry_520094081; flags: cint): ptr Avdictionaryentry_520094081 {.
      cdecl, importc: "av_dict_get".}
else:
  static :
    hint("Declaration of " & "avdictget" & " already exists, not redeclaring")
when not declared(avdictiterate):
  proc avdictiterate*(m: ptr Avdictionary_520094083; prev: ptr Avdictionaryentry_520094081): ptr Avdictionaryentry_520094081 {.
      cdecl, importc: "av_dict_iterate".}
else:
  static :
    hint("Declaration of " & "avdictiterate" &
        " already exists, not redeclaring")
when not declared(avdictcount):
  proc avdictcount*(m: ptr Avdictionary_520094083): cint {.cdecl,
      importc: "av_dict_count".}
else:
  static :
    hint("Declaration of " & "avdictcount" & " already exists, not redeclaring")
when not declared(avdictset):
  proc avdictset*(pm: ptr ptr Avdictionary_520094083; key: cstring;
                  value: cstring; flags: cint): cint {.cdecl,
      importc: "av_dict_set".}
else:
  static :
    hint("Declaration of " & "avdictset" & " already exists, not redeclaring")
when not declared(avdictsetint):
  proc avdictsetint*(pm: ptr ptr Avdictionary_520094083; key: cstring;
                     value: int64; flags: cint): cint {.cdecl,
      importc: "av_dict_set_int".}
else:
  static :
    hint("Declaration of " & "avdictsetint" & " already exists, not redeclaring")
when not declared(avdictparsestring):
  proc avdictparsestring*(pm: ptr ptr Avdictionary_520094083; str: cstring;
                          keyvalsep: cstring; pairssep: cstring; flags: cint): cint {.
      cdecl, importc: "av_dict_parse_string".}
else:
  static :
    hint("Declaration of " & "avdictparsestring" &
        " already exists, not redeclaring")
when not declared(avdictcopy):
  proc avdictcopy*(dst: ptr ptr Avdictionary_520094083; src: ptr Avdictionary_520094083;
                   flags: cint): cint {.cdecl, importc: "av_dict_copy".}
else:
  static :
    hint("Declaration of " & "avdictcopy" & " already exists, not redeclaring")
when not declared(avdictfree):
  proc avdictfree*(m: ptr ptr Avdictionary_520094083): void {.cdecl,
      importc: "av_dict_free".}
else:
  static :
    hint("Declaration of " & "avdictfree" & " already exists, not redeclaring")
when not declared(avdictgetstring):
  proc avdictgetstring*(m: ptr Avdictionary_520094083; buffer: ptr cstring;
                        keyvalsep: cschar; pairssep: cschar): cint {.cdecl,
      importc: "av_dict_get_string".}
else:
  static :
    hint("Declaration of " & "avdictgetstring" &
        " already exists, not redeclaring")
when not declared(avlog):
  proc avlog*(avcl: pointer; level: cint; fmt: cstring): void {.cdecl, varargs,
      importc: "av_log".}
else:
  static :
    hint("Declaration of " & "avlog" & " already exists, not redeclaring")
when not declared(avlogonce):
  proc avlogonce*(avcl: pointer; initiallevel: cint; subsequentlevel: cint;
                  state: ptr cint; fmt: cstring): void {.cdecl, varargs,
      importc: "av_log_once".}
else:
  static :
    hint("Declaration of " & "avlogonce" & " already exists, not redeclaring")
when not declared(avvlog):
  proc avvlog*(avcl: pointer; level: cint; fmt: cstring): void {.cdecl, varargs,
      importc: "av_vlog".}
else:
  static :
    hint("Declaration of " & "avvlog" & " already exists, not redeclaring")
when not declared(avloggetlevel):
  proc avloggetlevel*(): cint {.cdecl, importc: "av_log_get_level".}
else:
  static :
    hint("Declaration of " & "avloggetlevel" &
        " already exists, not redeclaring")
when not declared(avlogsetlevel):
  proc avlogsetlevel*(level: cint): void {.cdecl, importc: "av_log_set_level".}
else:
  static :
    hint("Declaration of " & "avlogsetlevel" &
        " already exists, not redeclaring")
when not declared(avlogsetcallback):
  proc avlogsetcallback*(callback: proc (a0: pointer; a1: cint; a2: cstring): void {.
      cdecl, varargs.}): void {.cdecl, importc: "av_log_set_callback".}
else:
  static :
    hint("Declaration of " & "avlogsetcallback" &
        " already exists, not redeclaring")
when not declared(avlogdefaultcallback):
  proc avlogdefaultcallback*(avcl: pointer; level: cint; fmt: cstring): void {.
      cdecl, varargs, importc: "av_log_default_callback".}
else:
  static :
    hint("Declaration of " & "avlogdefaultcallback" &
        " already exists, not redeclaring")
when not declared(avdefaultitemname):
  proc avdefaultitemname*(ctx: pointer): cstring {.cdecl,
      importc: "av_default_item_name".}
else:
  static :
    hint("Declaration of " & "avdefaultitemname" &
        " already exists, not redeclaring")
when not declared(avdefaultgetcategory):
  proc avdefaultgetcategory*(ptrarg: pointer): Avclasscategory_520094087 {.
      cdecl, importc: "av_default_get_category".}
else:
  static :
    hint("Declaration of " & "avdefaultgetcategory" &
        " already exists, not redeclaring")
when not declared(avlogformatline):
  proc avlogformatline*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094093;
                        line: cstring; linesize: cint; printprefix: ptr cint): void {.
      cdecl, importc: "av_log_format_line".}
else:
  static :
    hint("Declaration of " & "avlogformatline" &
        " already exists, not redeclaring")
when not declared(avlogformatline2):
  proc avlogformatline2*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094093;
                         line: cstring; linesize: cint; printprefix: ptr cint): cint {.
      cdecl, importc: "av_log_format_line2".}
else:
  static :
    hint("Declaration of " & "avlogformatline2" &
        " already exists, not redeclaring")
when not declared(avlogsetflags):
  proc avlogsetflags*(arg: cint): void {.cdecl, importc: "av_log_set_flags".}
else:
  static :
    hint("Declaration of " & "avlogsetflags" &
        " already exists, not redeclaring")
when not declared(avloggetflags):
  proc avloggetflags*(): cint {.cdecl, importc: "av_log_get_flags".}
else:
  static :
    hint("Declaration of " & "avloggetflags" &
        " already exists, not redeclaring")
when not declared(aviofindprotocolname):
  proc aviofindprotocolname*(url: cstring): cstring {.cdecl,
      importc: "avio_find_protocol_name".}
else:
  static :
    hint("Declaration of " & "aviofindprotocolname" &
        " already exists, not redeclaring")
when not declared(aviocheck):
  proc aviocheck*(url: cstring; flags: cint): cint {.cdecl,
      importc: "avio_check".}
else:
  static :
    hint("Declaration of " & "aviocheck" & " already exists, not redeclaring")
when not declared(avioopendir):
  proc avioopendir*(s: ptr ptr Aviodircontext_520094105; url: cstring;
                    options: ptr ptr Avdictionary_520094083): cint {.cdecl,
      importc: "avio_open_dir".}
else:
  static :
    hint("Declaration of " & "avioopendir" & " already exists, not redeclaring")
when not declared(avioreaddir):
  proc avioreaddir*(s: ptr Aviodircontext_520094105; next: ptr ptr Aviodirentry_520094103): cint {.
      cdecl, importc: "avio_read_dir".}
else:
  static :
    hint("Declaration of " & "avioreaddir" & " already exists, not redeclaring")
when not declared(avioclosedir):
  proc avioclosedir*(s: ptr ptr Aviodircontext_520094105): cint {.cdecl,
      importc: "avio_close_dir".}
else:
  static :
    hint("Declaration of " & "avioclosedir" & " already exists, not redeclaring")
when not declared(aviofreedirectoryentry):
  proc aviofreedirectoryentry*(entry: ptr ptr Aviodirentry_520094103): void {.
      cdecl, importc: "avio_free_directory_entry".}
else:
  static :
    hint("Declaration of " & "aviofreedirectoryentry" &
        " already exists, not redeclaring")
when not declared(avioalloccontext):
  proc avioalloccontext*(buffer: ptr uint8; buffersize: cint; writeflag: cint;
                         opaque: pointer; readpacket: proc (a0: pointer;
      a1: ptr uint8; a2: cint): cint {.cdecl.}; writepacket: proc (a0: pointer;
      a1: ptr uint8; a2: cint): cint {.cdecl.}; seek: proc (a0: pointer;
      a1: int64; a2: cint): int64 {.cdecl.}): ptr Aviocontext_520094111 {.cdecl,
      importc: "avio_alloc_context".}
else:
  static :
    hint("Declaration of " & "avioalloccontext" &
        " already exists, not redeclaring")
when not declared(aviocontextfree):
  proc aviocontextfree*(s: ptr ptr Aviocontext_520094111): void {.cdecl,
      importc: "avio_context_free".}
else:
  static :
    hint("Declaration of " & "aviocontextfree" &
        " already exists, not redeclaring")
when not declared(aviow8):
  proc aviow8*(s: ptr Aviocontext_520094111; b: cint): void {.cdecl,
      importc: "avio_w8".}
else:
  static :
    hint("Declaration of " & "aviow8" & " already exists, not redeclaring")
when not declared(aviowrite):
  proc aviowrite*(s: ptr Aviocontext_520094111; buf: ptr uint8; size: cint): void {.
      cdecl, importc: "avio_write".}
else:
  static :
    hint("Declaration of " & "aviowrite" & " already exists, not redeclaring")
when not declared(aviowl64):
  proc aviowl64*(s: ptr Aviocontext_520094111; val: uint64): void {.cdecl,
      importc: "avio_wl64".}
else:
  static :
    hint("Declaration of " & "aviowl64" & " already exists, not redeclaring")
when not declared(aviowb64):
  proc aviowb64*(s: ptr Aviocontext_520094111; val: uint64): void {.cdecl,
      importc: "avio_wb64".}
else:
  static :
    hint("Declaration of " & "aviowb64" & " already exists, not redeclaring")
when not declared(aviowl32):
  proc aviowl32*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wl32".}
else:
  static :
    hint("Declaration of " & "aviowl32" & " already exists, not redeclaring")
when not declared(aviowb32):
  proc aviowb32*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wb32".}
else:
  static :
    hint("Declaration of " & "aviowb32" & " already exists, not redeclaring")
when not declared(aviowl24):
  proc aviowl24*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wl24".}
else:
  static :
    hint("Declaration of " & "aviowl24" & " already exists, not redeclaring")
when not declared(aviowb24):
  proc aviowb24*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wb24".}
else:
  static :
    hint("Declaration of " & "aviowb24" & " already exists, not redeclaring")
when not declared(aviowl16):
  proc aviowl16*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wl16".}
else:
  static :
    hint("Declaration of " & "aviowl16" & " already exists, not redeclaring")
when not declared(aviowb16):
  proc aviowb16*(s: ptr Aviocontext_520094111; val: cuint): void {.cdecl,
      importc: "avio_wb16".}
else:
  static :
    hint("Declaration of " & "aviowb16" & " already exists, not redeclaring")
when not declared(avioputstr):
  proc avioputstr*(s: ptr Aviocontext_520094111; str: cstring): cint {.cdecl,
      importc: "avio_put_str".}
else:
  static :
    hint("Declaration of " & "avioputstr" & " already exists, not redeclaring")
when not declared(avioputstr16le):
  proc avioputstr16le*(s: ptr Aviocontext_520094111; str: cstring): cint {.
      cdecl, importc: "avio_put_str16le".}
else:
  static :
    hint("Declaration of " & "avioputstr16le" &
        " already exists, not redeclaring")
when not declared(avioputstr16be):
  proc avioputstr16be*(s: ptr Aviocontext_520094111; str: cstring): cint {.
      cdecl, importc: "avio_put_str16be".}
else:
  static :
    hint("Declaration of " & "avioputstr16be" &
        " already exists, not redeclaring")
when not declared(aviowritemarker):
  proc aviowritemarker*(s: ptr Aviocontext_520094111; time: int64;
                        typearg: enumaviodatamarkertype_520094107): void {.
      cdecl, importc: "avio_write_marker".}
else:
  static :
    hint("Declaration of " & "aviowritemarker" &
        " already exists, not redeclaring")
when not declared(avioseek):
  proc avioseek*(s: ptr Aviocontext_520094111; offset: int64; whence: cint): int64 {.
      cdecl, importc: "avio_seek".}
else:
  static :
    hint("Declaration of " & "avioseek" & " already exists, not redeclaring")
when not declared(avioskip):
  proc avioskip*(s: ptr Aviocontext_520094111; offset: int64): int64 {.cdecl,
      importc: "avio_skip".}
else:
  static :
    hint("Declaration of " & "avioskip" & " already exists, not redeclaring")
when not declared(aviosize):
  proc aviosize*(s: ptr Aviocontext_520094111): int64 {.cdecl,
      importc: "avio_size".}
else:
  static :
    hint("Declaration of " & "aviosize" & " already exists, not redeclaring")
when not declared(aviofeof):
  proc aviofeof*(s: ptr Aviocontext_520094111): cint {.cdecl,
      importc: "avio_feof".}
else:
  static :
    hint("Declaration of " & "aviofeof" & " already exists, not redeclaring")
when not declared(aviovprintf):
  proc aviovprintf*(s: ptr Aviocontext_520094111; fmt: cstring): cint {.cdecl,
      varargs, importc: "avio_vprintf".}
else:
  static :
    hint("Declaration of " & "aviovprintf" & " already exists, not redeclaring")
when not declared(avioprintf):
  proc avioprintf*(s: ptr Aviocontext_520094111; fmt: cstring): cint {.cdecl,
      varargs, importc: "avio_printf".}
else:
  static :
    hint("Declaration of " & "avioprintf" & " already exists, not redeclaring")
when not declared(avioprintstringarray):
  proc avioprintstringarray*(s: ptr Aviocontext_520094111;
                             strings: ptr UncheckedArray[cstring]): void {.
      cdecl, importc: "avio_print_string_array".}
else:
  static :
    hint("Declaration of " & "avioprintstringarray" &
        " already exists, not redeclaring")
when not declared(avioflush):
  proc avioflush*(s: ptr Aviocontext_520094111): void {.cdecl,
      importc: "avio_flush".}
else:
  static :
    hint("Declaration of " & "avioflush" & " already exists, not redeclaring")
when not declared(avioread):
  proc avioread*(s: ptr Aviocontext_520094111; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "avio_read".}
else:
  static :
    hint("Declaration of " & "avioread" & " already exists, not redeclaring")
when not declared(avioreadpartial):
  proc avioreadpartial*(s: ptr Aviocontext_520094111; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "avio_read_partial".}
else:
  static :
    hint("Declaration of " & "avioreadpartial" &
        " already exists, not redeclaring")
when not declared(avior8):
  proc avior8*(s: ptr Aviocontext_520094111): cint {.cdecl, importc: "avio_r8".}
else:
  static :
    hint("Declaration of " & "avior8" & " already exists, not redeclaring")
when not declared(aviorl16):
  proc aviorl16*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rl16".}
else:
  static :
    hint("Declaration of " & "aviorl16" & " already exists, not redeclaring")
when not declared(aviorl24):
  proc aviorl24*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rl24".}
else:
  static :
    hint("Declaration of " & "aviorl24" & " already exists, not redeclaring")
when not declared(aviorl32):
  proc aviorl32*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rl32".}
else:
  static :
    hint("Declaration of " & "aviorl32" & " already exists, not redeclaring")
when not declared(aviorl64):
  proc aviorl64*(s: ptr Aviocontext_520094111): uint64 {.cdecl,
      importc: "avio_rl64".}
else:
  static :
    hint("Declaration of " & "aviorl64" & " already exists, not redeclaring")
when not declared(aviorb16):
  proc aviorb16*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rb16".}
else:
  static :
    hint("Declaration of " & "aviorb16" & " already exists, not redeclaring")
when not declared(aviorb24):
  proc aviorb24*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rb24".}
else:
  static :
    hint("Declaration of " & "aviorb24" & " already exists, not redeclaring")
when not declared(aviorb32):
  proc aviorb32*(s: ptr Aviocontext_520094111): cuint {.cdecl,
      importc: "avio_rb32".}
else:
  static :
    hint("Declaration of " & "aviorb32" & " already exists, not redeclaring")
when not declared(aviorb64):
  proc aviorb64*(s: ptr Aviocontext_520094111): uint64 {.cdecl,
      importc: "avio_rb64".}
else:
  static :
    hint("Declaration of " & "aviorb64" & " already exists, not redeclaring")
when not declared(aviogetstr):
  proc aviogetstr*(pb: ptr Aviocontext_520094111; maxlen: cint; buf: cstring;
                   buflen: cint): cint {.cdecl, importc: "avio_get_str".}
else:
  static :
    hint("Declaration of " & "aviogetstr" & " already exists, not redeclaring")
when not declared(aviogetstr16le):
  proc aviogetstr16le*(pb: ptr Aviocontext_520094111; maxlen: cint;
                       buf: cstring; buflen: cint): cint {.cdecl,
      importc: "avio_get_str16le".}
else:
  static :
    hint("Declaration of " & "aviogetstr16le" &
        " already exists, not redeclaring")
when not declared(aviogetstr16be):
  proc aviogetstr16be*(pb: ptr Aviocontext_520094111; maxlen: cint;
                       buf: cstring; buflen: cint): cint {.cdecl,
      importc: "avio_get_str16be".}
else:
  static :
    hint("Declaration of " & "aviogetstr16be" &
        " already exists, not redeclaring")
when not declared(avioopen):
  proc avioopen*(s: ptr ptr Aviocontext_520094111; url: cstring; flags: cint): cint {.
      cdecl, importc: "avio_open".}
else:
  static :
    hint("Declaration of " & "avioopen" & " already exists, not redeclaring")
when not declared(avioopen2):
  proc avioopen2*(s: ptr ptr Aviocontext_520094111; url: cstring; flags: cint;
                  intcb: ptr Aviointerruptcb_520094097;
                  options: ptr ptr Avdictionary_520094083): cint {.cdecl,
      importc: "avio_open2".}
else:
  static :
    hint("Declaration of " & "avioopen2" & " already exists, not redeclaring")
when not declared(avioclose):
  proc avioclose*(s: ptr Aviocontext_520094111): cint {.cdecl,
      importc: "avio_close".}
else:
  static :
    hint("Declaration of " & "avioclose" & " already exists, not redeclaring")
when not declared(avioclosep):
  proc avioclosep*(s: ptr ptr Aviocontext_520094111): cint {.cdecl,
      importc: "avio_closep".}
else:
  static :
    hint("Declaration of " & "avioclosep" & " already exists, not redeclaring")
when not declared(avioopendynbuf):
  proc avioopendynbuf*(s: ptr ptr Aviocontext_520094111): cint {.cdecl,
      importc: "avio_open_dyn_buf".}
else:
  static :
    hint("Declaration of " & "avioopendynbuf" &
        " already exists, not redeclaring")
when not declared(aviogetdynbuf):
  proc aviogetdynbuf*(s: ptr Aviocontext_520094111; pbuffer: ptr ptr uint8): cint {.
      cdecl, importc: "avio_get_dyn_buf".}
else:
  static :
    hint("Declaration of " & "aviogetdynbuf" &
        " already exists, not redeclaring")
when not declared(avioclosedynbuf):
  proc avioclosedynbuf*(s: ptr Aviocontext_520094111; pbuffer: ptr ptr uint8): cint {.
      cdecl, importc: "avio_close_dyn_buf".}
else:
  static :
    hint("Declaration of " & "avioclosedynbuf" &
        " already exists, not redeclaring")
when not declared(avioenumprotocols):
  proc avioenumprotocols*(opaque: ptr pointer; output: cint): cstring {.cdecl,
      importc: "avio_enum_protocols".}
else:
  static :
    hint("Declaration of " & "avioenumprotocols" &
        " already exists, not redeclaring")
when not declared(avioprotocolgetclass):
  proc avioprotocolgetclass*(name: cstring): ptr Avclass_520094091 {.cdecl,
      importc: "avio_protocol_get_class".}
else:
  static :
    hint("Declaration of " & "avioprotocolgetclass" &
        " already exists, not redeclaring")
when not declared(aviopause):
  proc aviopause*(h: ptr Aviocontext_520094111; pause: cint): cint {.cdecl,
      importc: "avio_pause".}
else:
  static :
    hint("Declaration of " & "aviopause" & " already exists, not redeclaring")
when not declared(avioseektime):
  proc avioseektime*(h: ptr Aviocontext_520094111; streamindex: cint;
                     timestamp: int64; flags: cint): int64 {.cdecl,
      importc: "avio_seek_time".}
else:
  static :
    hint("Declaration of " & "avioseektime" & " already exists, not redeclaring")
when not declared(avioreadtobprint):
  proc avioreadtobprint*(h: ptr Aviocontext_520094111; pb: ptr structavbprint;
                         maxsize: csize_t): cint {.cdecl,
      importc: "avio_read_to_bprint".}
else:
  static :
    hint("Declaration of " & "avioreadtobprint" &
        " already exists, not redeclaring")
when not declared(avioaccept):
  proc avioaccept*(s: ptr Aviocontext_520094111; c: ptr ptr Aviocontext_520094111): cint {.
      cdecl, importc: "avio_accept".}
else:
  static :
    hint("Declaration of " & "avioaccept" & " already exists, not redeclaring")
when not declared(aviohandshake):
  proc aviohandshake*(c: ptr Aviocontext_520094111): cint {.cdecl,
      importc: "avio_handshake".}
else:
  static :
    hint("Declaration of " & "aviohandshake" &
        " already exists, not redeclaring")
when not declared(ffurlalloc):
  proc ffurlalloc*(puc: ptr ptr Urlcontext_520094124; filename: cstring;
                   flags: cint; intcb: ptr Aviointerruptcb_520094097): cint {.
      cdecl, importc: "ffurl_alloc".}
else:
  static :
    hint("Declaration of " & "ffurlalloc" & " already exists, not redeclaring")
when not declared(ffurlconnect):
  proc ffurlconnect*(uc: ptr Urlcontext_520094124; options: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "ffurl_connect".}
else:
  static :
    hint("Declaration of " & "ffurlconnect" & " already exists, not redeclaring")
when not declared(ffurlopenwhitelist):
  proc ffurlopenwhitelist*(puc: ptr ptr Urlcontext_520094124; filename: cstring;
                           flags: cint; intcb: ptr Aviointerruptcb_520094097;
                           options: ptr ptr Avdictionary_520094083;
                           whitelist: cstring; blacklist: cstring;
                           parent: ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ffurl_open_whitelist".}
else:
  static :
    hint("Declaration of " & "ffurlopenwhitelist" &
        " already exists, not redeclaring")
when not declared(ffurlaccept):
  proc ffurlaccept*(s: ptr Urlcontext_520094124; c: ptr ptr Urlcontext_520094124): cint {.
      cdecl, importc: "ffurl_accept".}
else:
  static :
    hint("Declaration of " & "ffurlaccept" & " already exists, not redeclaring")
when not declared(ffurlhandshake):
  proc ffurlhandshake*(c: ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ffurl_handshake".}
else:
  static :
    hint("Declaration of " & "ffurlhandshake" &
        " already exists, not redeclaring")
when not declared(ffurlread2):
  proc ffurlread2*(urlcontext: pointer; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "ffurl_read2".}
else:
  static :
    hint("Declaration of " & "ffurlread2" & " already exists, not redeclaring")
when not declared(ffurlreadcomplete):
  proc ffurlreadcomplete*(h: ptr Urlcontext_520094124; buf: ptr uint8;
                          size: cint): cint {.cdecl,
      importc: "ffurl_read_complete".}
else:
  static :
    hint("Declaration of " & "ffurlreadcomplete" &
        " already exists, not redeclaring")
when not declared(ffurlwrite2):
  proc ffurlwrite2*(urlcontext: pointer; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "ffurl_write2".}
else:
  static :
    hint("Declaration of " & "ffurlwrite2" & " already exists, not redeclaring")
when not declared(ffurlseek2):
  proc ffurlseek2*(urlcontext: pointer; pos: int64; whence: cint): int64 {.
      cdecl, importc: "ffurl_seek2".}
else:
  static :
    hint("Declaration of " & "ffurlseek2" & " already exists, not redeclaring")
when not declared(ffurlclosep):
  proc ffurlclosep*(h: ptr ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ffurl_closep".}
else:
  static :
    hint("Declaration of " & "ffurlclosep" & " already exists, not redeclaring")
when not declared(ffurlclose):
  proc ffurlclose*(h: ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ffurl_close".}
else:
  static :
    hint("Declaration of " & "ffurlclose" & " already exists, not redeclaring")
when not declared(ffurlsize):
  proc ffurlsize*(h: ptr Urlcontext_520094124): int64 {.cdecl,
      importc: "ffurl_size".}
else:
  static :
    hint("Declaration of " & "ffurlsize" & " already exists, not redeclaring")
when not declared(ffurlgetfilehandle):
  proc ffurlgetfilehandle*(h: ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ffurl_get_file_handle".}
else:
  static :
    hint("Declaration of " & "ffurlgetfilehandle" &
        " already exists, not redeclaring")
when not declared(ffurlgetmultifilehandle):
  proc ffurlgetmultifilehandle*(h: ptr Urlcontext_520094124;
                                handles: ptr ptr cint; numhandles: ptr cint): cint {.
      cdecl, importc: "ffurl_get_multi_file_handle".}
else:
  static :
    hint("Declaration of " & "ffurlgetmultifilehandle" &
        " already exists, not redeclaring")
when not declared(ffurlgetshortseek):
  proc ffurlgetshortseek*(urlcontext: pointer): cint {.cdecl,
      importc: "ffurl_get_short_seek".}
else:
  static :
    hint("Declaration of " & "ffurlgetshortseek" &
        " already exists, not redeclaring")
when not declared(ffurlshutdown):
  proc ffurlshutdown*(h: ptr Urlcontext_520094124; flags: cint): cint {.cdecl,
      importc: "ffurl_shutdown".}
else:
  static :
    hint("Declaration of " & "ffurlshutdown" &
        " already exists, not redeclaring")
when not declared(ffcheckinterrupt):
  proc ffcheckinterrupt*(cb: ptr Aviointerruptcb_520094097): cint {.cdecl,
      importc: "ff_check_interrupt".}
else:
  static :
    hint("Declaration of " & "ffcheckinterrupt" &
        " already exists, not redeclaring")
when not declared(ffudpsetremoteurl):
  proc ffudpsetremoteurl*(h: ptr Urlcontext_520094124; uri: cstring): cint {.
      cdecl, importc: "ff_udp_set_remote_url".}
else:
  static :
    hint("Declaration of " & "ffudpsetremoteurl" &
        " already exists, not redeclaring")
when not declared(ffudpgetlocalport):
  proc ffudpgetlocalport*(h: ptr Urlcontext_520094124): cint {.cdecl,
      importc: "ff_udp_get_local_port".}
else:
  static :
    hint("Declaration of " & "ffudpgetlocalport" &
        " already exists, not redeclaring")
when not declared(ffurljoin):
  proc ffurljoin*(str: cstring; size: cint; proto: cstring;
                  authorization: cstring; hostname: cstring; port: cint;
                  fmt: cstring): cint {.cdecl, varargs, importc: "ff_url_join".}
else:
  static :
    hint("Declaration of " & "ffurljoin" & " already exists, not redeclaring")
when not declared(ffmakeabsoluteurl2):
  proc ffmakeabsoluteurl2*(buf: cstring; size: cint; base: cstring;
                           rel: cstring; handledospaths: cint): cint {.cdecl,
      importc: "ff_make_absolute_url2".}
else:
  static :
    hint("Declaration of " & "ffmakeabsoluteurl2" &
        " already exists, not redeclaring")
when not declared(ffmakeabsoluteurl):
  proc ffmakeabsoluteurl*(buf: cstring; size: cint; base: cstring; rel: cstring): cint {.
      cdecl, importc: "ff_make_absolute_url".}
else:
  static :
    hint("Declaration of " & "ffmakeabsoluteurl" &
        " already exists, not redeclaring")
when not declared(ffallocdirentry):
  proc ffallocdirentry*(): ptr Aviodirentry_520094103 {.cdecl,
      importc: "ff_alloc_dir_entry".}
else:
  static :
    hint("Declaration of " & "ffallocdirentry" &
        " already exists, not redeclaring")
when not declared(ffurlcontextchildclassiterate):
  proc ffurlcontextchildclassiterate*(iter: ptr pointer): ptr Avclass_520094091 {.
      cdecl, importc: "ff_urlcontext_child_class_iterate".}
else:
  static :
    hint("Declaration of " & "ffurlcontextchildclassiterate" &
        " already exists, not redeclaring")
when not declared(ffurlgetprotocols):
  proc ffurlgetprotocols*(whitelist: cstring; blacklist: cstring): ptr ptr Urlprotocol_520094126 {.
      cdecl, importc: "ffurl_get_protocols".}
else:
  static :
    hint("Declaration of " & "ffurlgetprotocols" &
        " already exists, not redeclaring")
when not declared(ffurldecompose):
  proc ffurldecompose*(uc: ptr Urlcomponents_520094130; url: cstring;
                       endarg: cstring): cint {.cdecl,
      importc: "ff_url_decompose".}
else:
  static :
    hint("Declaration of " & "ffurldecompose" &
        " already exists, not redeclaring")
when not declared(ffurlmove):
  proc ffurlmove*(urlsrc: cstring; urldst: cstring): cint {.cdecl,
      importc: "ffurl_move".}
else:
  static :
    hint("Declaration of " & "ffurlmove" & " already exists, not redeclaring")
when not declared(ffurldelete):
  proc ffurldelete*(url: cstring): cint {.cdecl, importc: "ffurl_delete".}
else:
  static :
    hint("Declaration of " & "ffurldelete" & " already exists, not redeclaring")
when not declared(avutilversion):
  proc avutilversion*(): cuint {.cdecl, importc: "avutil_version".}
else:
  static :
    hint("Declaration of " & "avutilversion" &
        " already exists, not redeclaring")
when not declared(avversioninfo):
  proc avversioninfo*(): cstring {.cdecl, importc: "av_version_info".}
else:
  static :
    hint("Declaration of " & "avversioninfo" &
        " already exists, not redeclaring")
when not declared(avutilconfiguration):
  proc avutilconfiguration*(): cstring {.cdecl, importc: "avutil_configuration".}
else:
  static :
    hint("Declaration of " & "avutilconfiguration" &
        " already exists, not redeclaring")
when not declared(avutillicense):
  proc avutillicense*(): cstring {.cdecl, importc: "avutil_license".}
else:
  static :
    hint("Declaration of " & "avutillicense" &
        " already exists, not redeclaring")
when not declared(avgetmediatypestring):
  proc avgetmediatypestring*(mediatype: enumavmediatype_520094132): cstring {.
      cdecl, importc: "av_get_media_type_string".}
else:
  static :
    hint("Declaration of " & "avgetmediatypestring" &
        " already exists, not redeclaring")
when not declared(avgetpicturetypechar):
  proc avgetpicturetypechar*(picttype: enumavpicturetype_520094134): cschar {.
      cdecl, importc: "av_get_picture_type_char".}
else:
  static :
    hint("Declaration of " & "avgetpicturetypechar" &
        " already exists, not redeclaring")
when not declared(avstrerror):
  proc avstrerror*(errnum: cint; errbuf: cstring; errbufsize: csize_t): cint {.
      cdecl, importc: "av_strerror".}
else:
  static :
    hint("Declaration of " & "avstrerror" & " already exists, not redeclaring")
when not declared(avmalloc):
  proc avmalloc*(size: csize_t): pointer {.cdecl, importc: "av_malloc".}
else:
  static :
    hint("Declaration of " & "avmalloc" & " already exists, not redeclaring")
when not declared(avmallocz):
  proc avmallocz*(size: csize_t): pointer {.cdecl, importc: "av_mallocz".}
else:
  static :
    hint("Declaration of " & "avmallocz" & " already exists, not redeclaring")
when not declared(avmallocarray):
  proc avmallocarray*(nmemb: csize_t; size: csize_t): pointer {.cdecl,
      importc: "av_malloc_array".}
else:
  static :
    hint("Declaration of " & "avmallocarray" &
        " already exists, not redeclaring")
when not declared(avcalloc):
  proc avcalloc*(nmemb: csize_t; size: csize_t): pointer {.cdecl,
      importc: "av_calloc".}
else:
  static :
    hint("Declaration of " & "avcalloc" & " already exists, not redeclaring")
when not declared(avrealloc):
  proc avrealloc*(ptrarg: pointer; size: csize_t): pointer {.cdecl,
      importc: "av_realloc".}
else:
  static :
    hint("Declaration of " & "avrealloc" & " already exists, not redeclaring")
when not declared(avreallocp):
  proc avreallocp*(ptrarg: pointer; size: csize_t): cint {.cdecl,
      importc: "av_reallocp".}
else:
  static :
    hint("Declaration of " & "avreallocp" & " already exists, not redeclaring")
when not declared(avreallocf):
  proc avreallocf*(ptrarg: pointer; nelem: csize_t; elsize: csize_t): pointer {.
      cdecl, importc: "av_realloc_f".}
else:
  static :
    hint("Declaration of " & "avreallocf" & " already exists, not redeclaring")
when not declared(avreallocarray):
  proc avreallocarray*(ptrarg: pointer; nmemb: csize_t; size: csize_t): pointer {.
      cdecl, importc: "av_realloc_array".}
else:
  static :
    hint("Declaration of " & "avreallocarray" &
        " already exists, not redeclaring")
when not declared(avreallocparray):
  proc avreallocparray*(ptrarg: pointer; nmemb: csize_t; size: csize_t): cint {.
      cdecl, importc: "av_reallocp_array".}
else:
  static :
    hint("Declaration of " & "avreallocparray" &
        " already exists, not redeclaring")
when not declared(avfastrealloc):
  proc avfastrealloc*(ptrarg: pointer; size: ptr cuint; minsize: csize_t): pointer {.
      cdecl, importc: "av_fast_realloc".}
else:
  static :
    hint("Declaration of " & "avfastrealloc" &
        " already exists, not redeclaring")
when not declared(avfastmalloc):
  proc avfastmalloc*(ptrarg: pointer; size: ptr cuint; minsize: csize_t): void {.
      cdecl, importc: "av_fast_malloc".}
else:
  static :
    hint("Declaration of " & "avfastmalloc" & " already exists, not redeclaring")
when not declared(avfastmallocz):
  proc avfastmallocz*(ptrarg: pointer; size: ptr cuint; minsize: csize_t): void {.
      cdecl, importc: "av_fast_mallocz".}
else:
  static :
    hint("Declaration of " & "avfastmallocz" &
        " already exists, not redeclaring")
when not declared(avfree):
  proc avfree*(ptrarg: pointer): void {.cdecl, importc: "av_free".}
else:
  static :
    hint("Declaration of " & "avfree" & " already exists, not redeclaring")
when not declared(avfreep):
  proc avfreep*(ptrarg: pointer): void {.cdecl, importc: "av_freep".}
else:
  static :
    hint("Declaration of " & "avfreep" & " already exists, not redeclaring")
when not declared(avstrdup):
  proc avstrdup*(s: cstring): cstring {.cdecl, importc: "av_strdup".}
else:
  static :
    hint("Declaration of " & "avstrdup" & " already exists, not redeclaring")
when not declared(avstrndup):
  proc avstrndup*(s: cstring; len: csize_t): cstring {.cdecl,
      importc: "av_strndup".}
else:
  static :
    hint("Declaration of " & "avstrndup" & " already exists, not redeclaring")
when not declared(avmemdup):
  proc avmemdup*(p: pointer; size: csize_t): pointer {.cdecl,
      importc: "av_memdup".}
else:
  static :
    hint("Declaration of " & "avmemdup" & " already exists, not redeclaring")
when not declared(avmemcpybackptr):
  proc avmemcpybackptr*(dst: ptr uint8; back: cint; cnt: cint): void {.cdecl,
      importc: "av_memcpy_backptr".}
else:
  static :
    hint("Declaration of " & "avmemcpybackptr" &
        " already exists, not redeclaring")
when not declared(avdynarrayadd):
  proc avdynarrayadd*(tabptr: pointer; nbptr: ptr cint; elem: pointer): void {.
      cdecl, importc: "av_dynarray_add".}
else:
  static :
    hint("Declaration of " & "avdynarrayadd" &
        " already exists, not redeclaring")
when not declared(avdynarrayaddnofree):
  proc avdynarrayaddnofree*(tabptr: pointer; nbptr: ptr cint; elem: pointer): cint {.
      cdecl, importc: "av_dynarray_add_nofree".}
else:
  static :
    hint("Declaration of " & "avdynarrayaddnofree" &
        " already exists, not redeclaring")
when not declared(avdynarray2add):
  proc avdynarray2add*(tabptr: ptr pointer; nbptr: ptr cint; elemsize: csize_t;
                       elemdata: ptr uint8): pointer {.cdecl,
      importc: "av_dynarray2_add".}
else:
  static :
    hint("Declaration of " & "avdynarray2add" &
        " already exists, not redeclaring")
when not declared(avsizemult):
  proc avsizemult*(a: csize_t; b: csize_t; r: ptr csize_t): cint {.cdecl,
      importc: "av_size_mult".}
else:
  static :
    hint("Declaration of " & "avsizemult" & " already exists, not redeclaring")
when not declared(avmaxalloc):
  proc avmaxalloc*(max: csize_t): void {.cdecl, importc: "av_max_alloc".}
else:
  static :
    hint("Declaration of " & "avmaxalloc" & " already exists, not redeclaring")
when not declared(avlog2):
  proc avlog2*(v: cuint): cint {.cdecl, importc: "av_log2".}
else:
  static :
    hint("Declaration of " & "avlog2" & " already exists, not redeclaring")
when not declared(avlog216bit):
  proc avlog216bit*(v: cuint): cint {.cdecl, importc: "av_log2_16bit".}
else:
  static :
    hint("Declaration of " & "avlog216bit" & " already exists, not redeclaring")
when not declared(avreduce):
  proc avreduce*(dstnum: ptr cint; dstden: ptr cint; num: int64; den: int64;
                 max: int64): cint {.cdecl, importc: "av_reduce".}
else:
  static :
    hint("Declaration of " & "avreduce" & " already exists, not redeclaring")
when not declared(avmulq):
  proc avmulq*(b: Avrational_520094138; c: Avrational_520094138): Avrational_520094138 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094138; c: Avrational_520094138): Avrational_520094138 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094138; c: Avrational_520094138): Avrational_520094138 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094138; c: Avrational_520094138): Avrational_520094138 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094138 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094138; q1: Avrational_520094138;
                  q2: Avrational_520094138): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094138; qlist: ptr Avrational_520094138): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094138): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094138; b: Avrational_520094138; maxden: cint;
               def: Avrational_520094138): Avrational_520094138 {.cdecl,
      importc: "av_gcd_q".}
else:
  static :
    hint("Declaration of " & "avgcdq" & " already exists, not redeclaring")
when not declared(avgcd):
  proc avgcd*(a: int64; b: int64): int64 {.cdecl, importc: "av_gcd".}
else:
  static :
    hint("Declaration of " & "avgcd" & " already exists, not redeclaring")
when not declared(avrescale):
  proc avrescale*(a: int64; b: int64; c: int64): int64 {.cdecl,
      importc: "av_rescale".}
else:
  static :
    hint("Declaration of " & "avrescale" & " already exists, not redeclaring")
when not declared(avrescalernd):
  proc avrescalernd*(a: int64; b: int64; c: int64; rnd: enumavrounding_520094144): int64 {.
      cdecl, importc: "av_rescale_rnd".}
else:
  static :
    hint("Declaration of " & "avrescalernd" & " already exists, not redeclaring")
when not declared(avrescaleq):
  proc avrescaleq*(a: int64; bq: Avrational_520094138; cq: Avrational_520094138): int64 {.
      cdecl, importc: "av_rescale_q".}
else:
  static :
    hint("Declaration of " & "avrescaleq" & " already exists, not redeclaring")
when not declared(avrescaleqrnd):
  proc avrescaleqrnd*(a: int64; bq: Avrational_520094138; cq: Avrational_520094138;
                      rnd: enumavrounding_520094144): int64 {.cdecl,
      importc: "av_rescale_q_rnd".}
else:
  static :
    hint("Declaration of " & "avrescaleqrnd" &
        " already exists, not redeclaring")
when not declared(avcomparets):
  proc avcomparets*(tsa: int64; tba: Avrational_520094138; tsb: int64;
                    tbb: Avrational_520094138): cint {.cdecl,
      importc: "av_compare_ts".}
else:
  static :
    hint("Declaration of " & "avcomparets" & " already exists, not redeclaring")
when not declared(avcomparemod):
  proc avcomparemod*(a: uint64; b: uint64; modarg: uint64): int64 {.cdecl,
      importc: "av_compare_mod".}
else:
  static :
    hint("Declaration of " & "avcomparemod" & " already exists, not redeclaring")
when not declared(avrescaledelta):
  proc avrescaledelta*(intb: Avrational_520094138; ints: int64;
                       fstb: Avrational_520094138; duration: cint;
                       last: ptr int64; outtb: Avrational_520094138): int64 {.
      cdecl, importc: "av_rescale_delta".}
else:
  static :
    hint("Declaration of " & "avrescaledelta" &
        " already exists, not redeclaring")
when not declared(avaddstable):
  proc avaddstable*(tstb: Avrational_520094138; ts: int64; inctb: Avrational_520094138;
                    inc: int64): int64 {.cdecl, importc: "av_add_stable".}
else:
  static :
    hint("Declaration of " & "avaddstable" & " already exists, not redeclaring")
when not declared(avbesseli0):
  proc avbesseli0*(x: cdouble): cdouble {.cdecl, importc: "av_bessel_i0".}
else:
  static :
    hint("Declaration of " & "avbesseli0" & " already exists, not redeclaring")
when not declared(avintlistlengthforsize):
  proc avintlistlengthforsize*(elsize: cuint; list: pointer; term: uint64): cuint {.
      cdecl, importc: "av_int_list_length_for_size".}
else:
  static :
    hint("Declaration of " & "avintlistlengthforsize" &
        " already exists, not redeclaring")
when not declared(avgettimebaseq):
  proc avgettimebaseq*(): Avrational_520094138 {.cdecl,
      importc: "av_get_time_base_q".}
else:
  static :
    hint("Declaration of " & "avgettimebaseq" &
        " already exists, not redeclaring")
when not declared(avfourccmakestring):
  proc avfourccmakestring*(buf: cstring; fourcc: uint32): cstring {.cdecl,
      importc: "av_fourcc_make_string".}
else:
  static :
    hint("Declaration of " & "avfourccmakestring" &
        " already exists, not redeclaring")
when not declared(avchannelname):
  proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel_520094158): cint {.
      cdecl, importc: "av_channel_name".}
else:
  static :
    hint("Declaration of " & "avchannelname" &
        " already exists, not redeclaring")
when not declared(avchannelnamebprint):
  proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel_520094158): void {.
      cdecl, importc: "av_channel_name_bprint".}
else:
  static :
    hint("Declaration of " & "avchannelnamebprint" &
        " already exists, not redeclaring")
when not declared(avchanneldescription):
  proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                             channel: enumavchannel_520094158): cint {.cdecl,
      importc: "av_channel_description".}
else:
  static :
    hint("Declaration of " & "avchanneldescription" &
        " already exists, not redeclaring")
when not declared(avchanneldescriptionbprint):
  proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                   channelid: enumavchannel_520094158): void {.
      cdecl, importc: "av_channel_description_bprint".}
else:
  static :
    hint("Declaration of " & "avchanneldescriptionbprint" &
        " already exists, not redeclaring")
when not declared(avchannelfromstring):
  proc avchannelfromstring*(name: cstring): enumavchannel_520094158 {.cdecl,
      importc: "av_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcustominit):
  proc avchannellayoutcustominit*(channellayout: ptr Avchannellayout_520094170;
                                  nbchannels: cint): cint {.cdecl,
      importc: "av_channel_layout_custom_init".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcustominit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfrommask):
  proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout_520094170;
                                mask: uint64): cint {.cdecl,
      importc: "av_channel_layout_from_mask".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfrommask" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfromstring):
  proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout_520094170;
                                  str: cstring): cint {.cdecl,
      importc: "av_channel_layout_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdefault):
  proc avchannellayoutdefault*(chlayout: ptr Avchannellayout_520094170;
                               nbchannels: cint): void {.cdecl,
      importc: "av_channel_layout_default".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdefault" &
        " already exists, not redeclaring")
when not declared(avchannellayoutstandard):
  proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout_520094170 {.
      cdecl, importc: "av_channel_layout_standard".}
else:
  static :
    hint("Declaration of " & "avchannellayoutstandard" &
        " already exists, not redeclaring")
when not declared(avchannellayoutuninit):
  proc avchannellayoutuninit*(channellayout: ptr Avchannellayout_520094170): void {.
      cdecl, importc: "av_channel_layout_uninit".}
else:
  static :
    hint("Declaration of " & "avchannellayoutuninit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcopy):
  proc avchannellayoutcopy*(dst: ptr Avchannellayout_520094170;
                            src: ptr Avchannellayout_520094170): cint {.cdecl,
      importc: "av_channel_layout_copy".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcopy" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribe):
  proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout_520094170;
                                buf: cstring; bufsize: csize_t): cint {.cdecl,
      importc: "av_channel_layout_describe".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribe" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribebprint):
  proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout_520094170;
                                      bp: ptr structavbprint): cint {.cdecl,
      importc: "av_channel_layout_describe_bprint".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribebprint" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromindex):
  proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout_520094170;
                                        idx: cuint): enumavchannel_520094158 {.
      cdecl, importc: "av_channel_layout_channel_from_index".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromchannel):
  proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout_520094170;
                                        channel: enumavchannel_520094158): cint {.
      cdecl, importc: "av_channel_layout_index_from_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromchannel" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromstring):
  proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout_520094170;
                                       name: cstring): cint {.cdecl,
      importc: "av_channel_layout_index_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromstring):
  proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout_520094170;
      name: cstring): enumavchannel_520094158 {.cdecl,
      importc: "av_channel_layout_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutsubset):
  proc avchannellayoutsubset*(channellayout: ptr Avchannellayout_520094170;
                              mask: uint64): uint64 {.cdecl,
      importc: "av_channel_layout_subset".}
else:
  static :
    hint("Declaration of " & "avchannellayoutsubset" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcheck):
  proc avchannellayoutcheck*(channellayout: ptr Avchannellayout_520094170): cint {.
      cdecl, importc: "av_channel_layout_check".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcheck" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcompare):
  proc avchannellayoutcompare*(chl: ptr Avchannellayout_520094170;
                               chl1: ptr Avchannellayout_520094170): cint {.
      cdecl, importc: "av_channel_layout_compare".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcompare" &
        " already exists, not redeclaring")
when not declared(avchannellayoutretype):
  proc avchannellayoutretype*(channellayout: ptr Avchannellayout_520094170;
                              order: enumavchannelorder_520094160; flags: cint): cint {.
      cdecl, importc: "av_channel_layout_retype".}
else:
  static :
    hint("Declaration of " & "avchannellayoutretype" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtname):
  proc avgetsamplefmtname*(samplefmt: enumavsampleformat_520094172): cstring {.
      cdecl, importc: "av_get_sample_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtname" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmt):
  proc avgetsamplefmt*(name: cstring): enumavsampleformat_520094172 {.cdecl,
      importc: "av_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetaltsamplefmt):
  proc avgetaltsamplefmt*(samplefmt: enumavsampleformat_520094172; planar: cint): enumavsampleformat_520094172 {.
      cdecl, importc: "av_get_alt_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetaltsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetpackedsamplefmt):
  proc avgetpackedsamplefmt*(samplefmt: enumavsampleformat_520094172): enumavsampleformat_520094172 {.
      cdecl, importc: "av_get_packed_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpackedsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetplanarsamplefmt):
  proc avgetplanarsamplefmt*(samplefmt: enumavsampleformat_520094172): enumavsampleformat_520094172 {.
      cdecl, importc: "av_get_planar_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetplanarsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtstring):
  proc avgetsamplefmtstring*(buf: cstring; bufsize: cint;
                             samplefmt: enumavsampleformat_520094172): cstring {.
      cdecl, importc: "av_get_sample_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtstring" &
        " already exists, not redeclaring")
when not declared(avgetbytespersample):
  proc avgetbytespersample*(samplefmt: enumavsampleformat_520094172): cint {.
      cdecl, importc: "av_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbytespersample" &
        " already exists, not redeclaring")
when not declared(avsamplefmtisplanar):
  proc avsamplefmtisplanar*(samplefmt: enumavsampleformat_520094172): cint {.
      cdecl, importc: "av_sample_fmt_is_planar".}
else:
  static :
    hint("Declaration of " & "avsamplefmtisplanar" &
        " already exists, not redeclaring")
when not declared(avsamplesgetbuffersize):
  proc avsamplesgetbuffersize*(linesize: ptr cint; nbchannels: cint;
                               nbsamples: cint; samplefmt: enumavsampleformat_520094172;
                               align: cint): cint {.cdecl,
      importc: "av_samples_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avsamplesgetbuffersize" &
        " already exists, not redeclaring")
when not declared(avsamplesfillarrays):
  proc avsamplesfillarrays*(audiodata: ptr ptr uint8; linesize: ptr cint;
                            buf: ptr uint8; nbchannels: cint; nbsamples: cint;
                            samplefmt: enumavsampleformat_520094172; align: cint): cint {.
      cdecl, importc: "av_samples_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avsamplesfillarrays" &
        " already exists, not redeclaring")
when not declared(avsamplesalloc):
  proc avsamplesalloc*(audiodata: ptr ptr uint8; linesize: ptr cint;
                       nbchannels: cint; nbsamples: cint;
                       samplefmt: enumavsampleformat_520094172; align: cint): cint {.
      cdecl, importc: "av_samples_alloc".}
else:
  static :
    hint("Declaration of " & "avsamplesalloc" &
        " already exists, not redeclaring")
when not declared(avsamplesallocarrayandsamples):
  proc avsamplesallocarrayandsamples*(audiodata: ptr ptr ptr uint8;
                                      linesize: ptr cint; nbchannels: cint;
                                      nbsamples: cint;
                                      samplefmt: enumavsampleformat_520094172;
                                      align: cint): cint {.cdecl,
      importc: "av_samples_alloc_array_and_samples".}
else:
  static :
    hint("Declaration of " & "avsamplesallocarrayandsamples" &
        " already exists, not redeclaring")
when not declared(avsamplescopy):
  proc avsamplescopy*(dst: ptr ptr uint8; src: ptr ptr uint8; dstoffset: cint;
                      srcoffset: cint; nbsamples: cint; nbchannels: cint;
                      samplefmt: enumavsampleformat_520094172): cint {.cdecl,
      importc: "av_samples_copy".}
else:
  static :
    hint("Declaration of " & "avsamplescopy" &
        " already exists, not redeclaring")
when not declared(avsamplessetsilence):
  proc avsamplessetsilence*(audiodata: ptr ptr uint8; offset: cint;
                            nbsamples: cint; nbchannels: cint;
                            samplefmt: enumavsampleformat_520094172): cint {.
      cdecl, importc: "av_samples_set_silence".}
else:
  static :
    hint("Declaration of " & "avsamplessetsilence" &
        " already exists, not redeclaring")
when not declared(avcodecgettype):
  proc avcodecgettype*(codecid: enumavcodecid_520094174): enumavmediatype_520094132 {.
      cdecl, importc: "avcodec_get_type".}
else:
  static :
    hint("Declaration of " & "avcodecgettype" &
        " already exists, not redeclaring")
when not declared(avcodecgetname):
  proc avcodecgetname*(id: enumavcodecid_520094174): cstring {.cdecl,
      importc: "avcodec_get_name".}
else:
  static :
    hint("Declaration of " & "avcodecgetname" &
        " already exists, not redeclaring")
when not declared(avgetbitspersample):
  proc avgetbitspersample*(codecid: enumavcodecid_520094174): cint {.cdecl,
      importc: "av_get_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbitspersample" &
        " already exists, not redeclaring")
when not declared(avgetexactbitspersample):
  proc avgetexactbitspersample*(codecid: enumavcodecid_520094174): cint {.cdecl,
      importc: "av_get_exact_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetexactbitspersample" &
        " already exists, not redeclaring")
when not declared(avcodecprofilename):
  proc avcodecprofilename*(codecid: enumavcodecid_520094174; profile: cint): cstring {.
      cdecl, importc: "avcodec_profile_name".}
else:
  static :
    hint("Declaration of " & "avcodecprofilename" &
        " already exists, not redeclaring")
when not declared(avgetpcmcodec):
  proc avgetpcmcodec*(fmt: enumavsampleformat_520094172; be: cint): enumavcodecid_520094174 {.
      cdecl, importc: "av_get_pcm_codec".}
else:
  static :
    hint("Declaration of " & "avgetpcmcodec" &
        " already exists, not redeclaring")
when not declared(avcpbpropertiesalloc):
  proc avcpbpropertiesalloc*(size: ptr csize_t): ptr Avcpbproperties_520094188 {.
      cdecl, importc: "av_cpb_properties_alloc".}
else:
  static :
    hint("Declaration of " & "avcpbpropertiesalloc" &
        " already exists, not redeclaring")
when not declared(avxiphlacing):
  proc avxiphlacing*(s: ptr uint8; v: cuint): cuint {.cdecl,
      importc: "av_xiphlacing".}
else:
  static :
    hint("Declaration of " & "avxiphlacing" & " already exists, not redeclaring")
when not declared(avbufferalloc):
  proc avbufferalloc*(size: csize_t): ptr Avbufferref_520094198 {.cdecl,
      importc: "av_buffer_alloc".}
else:
  static :
    hint("Declaration of " & "avbufferalloc" &
        " already exists, not redeclaring")
when not declared(avbufferallocz):
  proc avbufferallocz*(size: csize_t): ptr Avbufferref_520094198 {.cdecl,
      importc: "av_buffer_allocz".}
else:
  static :
    hint("Declaration of " & "avbufferallocz" &
        " already exists, not redeclaring")
when not declared(avbuffercreate):
  proc avbuffercreate*(data: ptr uint8; size: csize_t;
                       free: proc (a0: pointer; a1: ptr uint8): void {.cdecl.};
                       opaque: pointer; flags: cint): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_buffer_create".}
else:
  static :
    hint("Declaration of " & "avbuffercreate" &
        " already exists, not redeclaring")
when not declared(avbufferdefaultfree):
  proc avbufferdefaultfree*(opaque: pointer; data: ptr uint8): void {.cdecl,
      importc: "av_buffer_default_free".}
else:
  static :
    hint("Declaration of " & "avbufferdefaultfree" &
        " already exists, not redeclaring")
when not declared(avbufferref):
  proc avbufferref*(buf: ptr Avbufferref_520094198): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_buffer_ref".}
else:
  static :
    hint("Declaration of " & "avbufferref" & " already exists, not redeclaring")
when not declared(avbufferunref):
  proc avbufferunref*(buf: ptr ptr Avbufferref_520094198): void {.cdecl,
      importc: "av_buffer_unref".}
else:
  static :
    hint("Declaration of " & "avbufferunref" &
        " already exists, not redeclaring")
when not declared(avbufferiswritable):
  proc avbufferiswritable*(buf: ptr Avbufferref_520094198): cint {.cdecl,
      importc: "av_buffer_is_writable".}
else:
  static :
    hint("Declaration of " & "avbufferiswritable" &
        " already exists, not redeclaring")
when not declared(avbuffergetopaque):
  proc avbuffergetopaque*(buf: ptr Avbufferref_520094198): pointer {.cdecl,
      importc: "av_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avbuffergetrefcount):
  proc avbuffergetrefcount*(buf: ptr Avbufferref_520094198): cint {.cdecl,
      importc: "av_buffer_get_ref_count".}
else:
  static :
    hint("Declaration of " & "avbuffergetrefcount" &
        " already exists, not redeclaring")
when not declared(avbuffermakewritable):
  proc avbuffermakewritable*(buf: ptr ptr Avbufferref_520094198): cint {.cdecl,
      importc: "av_buffer_make_writable".}
else:
  static :
    hint("Declaration of " & "avbuffermakewritable" &
        " already exists, not redeclaring")
when not declared(avbufferrealloc):
  proc avbufferrealloc*(buf: ptr ptr Avbufferref_520094198; size: csize_t): cint {.
      cdecl, importc: "av_buffer_realloc".}
else:
  static :
    hint("Declaration of " & "avbufferrealloc" &
        " already exists, not redeclaring")
when not declared(avbufferreplace):
  proc avbufferreplace*(dst: ptr ptr Avbufferref_520094198; src: ptr Avbufferref_520094198): cint {.
      cdecl, importc: "av_buffer_replace".}
else:
  static :
    hint("Declaration of " & "avbufferreplace" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit):
  proc avbufferpoolinit*(size: csize_t;
                         alloc: proc (a0: csize_t): ptr Avbufferref_520094198 {.
      cdecl.}): ptr Avbufferpool_520094200 {.cdecl,
      importc: "av_buffer_pool_init".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit2):
  proc avbufferpoolinit2*(size: csize_t; opaque: pointer; alloc: proc (
      a0: pointer; a1: csize_t): ptr Avbufferref_520094198 {.cdecl.};
                          poolfree: proc (a0: pointer): void {.cdecl.}): ptr Avbufferpool_520094200 {.
      cdecl, importc: "av_buffer_pool_init2".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit2" &
        " already exists, not redeclaring")
when not declared(avbufferpooluninit):
  proc avbufferpooluninit*(pool: ptr ptr Avbufferpool_520094200): void {.cdecl,
      importc: "av_buffer_pool_uninit".}
else:
  static :
    hint("Declaration of " & "avbufferpooluninit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolget):
  proc avbufferpoolget*(pool: ptr Avbufferpool_520094200): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_buffer_pool_get".}
else:
  static :
    hint("Declaration of " & "avbufferpoolget" &
        " already exists, not redeclaring")
when not declared(avbufferpoolbuffergetopaque):
  proc avbufferpoolbuffergetopaque*(refarg: ptr Avbufferref_520094198): pointer {.
      cdecl, importc: "av_buffer_pool_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbufferpoolbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avpacketsidedatanew):
  proc avpacketsidedatanew*(psd: ptr ptr Avpacketsidedata_520094206;
                            pnbsd: ptr cint; typearg: enumavpacketsidedatatype_520094202;
                            size: csize_t; flags: cint): ptr Avpacketsidedata_520094206 {.
      cdecl, importc: "av_packet_side_data_new".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatanew" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataadd):
  proc avpacketsidedataadd*(sd: ptr ptr Avpacketsidedata_520094206;
                            nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094202;
                            data: pointer; size: csize_t; flags: cint): ptr Avpacketsidedata_520094206 {.
      cdecl, importc: "av_packet_side_data_add".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataadd" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataget):
  proc avpacketsidedataget*(sd: ptr Avpacketsidedata_520094206; nbsd: cint;
                            typearg: enumavpacketsidedatatype_520094202): ptr Avpacketsidedata_520094206 {.
      cdecl, importc: "av_packet_side_data_get".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataget" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataremove):
  proc avpacketsidedataremove*(sd: ptr Avpacketsidedata_520094206;
                               nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094202): void {.
      cdecl, importc: "av_packet_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataremove" &
        " already exists, not redeclaring")
when not declared(avpacketsidedatafree):
  proc avpacketsidedatafree*(sd: ptr ptr Avpacketsidedata_520094206;
                             nbsd: ptr cint): void {.cdecl,
      importc: "av_packet_side_data_free".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatafree" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataname):
  proc avpacketsidedataname*(typearg: enumavpacketsidedatatype_520094202): cstring {.
      cdecl, importc: "av_packet_side_data_name".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataname" &
        " already exists, not redeclaring")
when not declared(avpacketalloc):
  proc avpacketalloc*(): ptr Avpacket_520094210 {.cdecl,
      importc: "av_packet_alloc".}
else:
  static :
    hint("Declaration of " & "avpacketalloc" &
        " already exists, not redeclaring")
when not declared(avpacketclone):
  proc avpacketclone*(src: ptr Avpacket_520094210): ptr Avpacket_520094210 {.
      cdecl, importc: "av_packet_clone".}
else:
  static :
    hint("Declaration of " & "avpacketclone" &
        " already exists, not redeclaring")
when not declared(avpacketfree):
  proc avpacketfree*(pkt: ptr ptr Avpacket_520094210): void {.cdecl,
      importc: "av_packet_free".}
else:
  static :
    hint("Declaration of " & "avpacketfree" & " already exists, not redeclaring")
when not declared(avinitpacket):
  proc avinitpacket*(pkt: ptr Avpacket_520094210): void {.cdecl,
      importc: "av_init_packet".}
else:
  static :
    hint("Declaration of " & "avinitpacket" & " already exists, not redeclaring")
when not declared(avnewpacket):
  proc avnewpacket*(pkt: ptr Avpacket_520094210; size: cint): cint {.cdecl,
      importc: "av_new_packet".}
else:
  static :
    hint("Declaration of " & "avnewpacket" & " already exists, not redeclaring")
when not declared(avshrinkpacket):
  proc avshrinkpacket*(pkt: ptr Avpacket_520094210; size: cint): void {.cdecl,
      importc: "av_shrink_packet".}
else:
  static :
    hint("Declaration of " & "avshrinkpacket" &
        " already exists, not redeclaring")
when not declared(avgrowpacket):
  proc avgrowpacket*(pkt: ptr Avpacket_520094210; growby: cint): cint {.cdecl,
      importc: "av_grow_packet".}
else:
  static :
    hint("Declaration of " & "avgrowpacket" & " already exists, not redeclaring")
when not declared(avpacketfromdata):
  proc avpacketfromdata*(pkt: ptr Avpacket_520094210; data: ptr uint8;
                         size: cint): cint {.cdecl,
      importc: "av_packet_from_data".}
else:
  static :
    hint("Declaration of " & "avpacketfromdata" &
        " already exists, not redeclaring")
when not declared(avpacketnewsidedata):
  proc avpacketnewsidedata*(pkt: ptr Avpacket_520094210;
                            typearg: enumavpacketsidedatatype_520094202;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_new_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketnewsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketaddsidedata):
  proc avpacketaddsidedata*(pkt: ptr Avpacket_520094210;
                            typearg: enumavpacketsidedatatype_520094202;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_packet_add_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketaddsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketshrinksidedata):
  proc avpacketshrinksidedata*(pkt: ptr Avpacket_520094210;
                               typearg: enumavpacketsidedatatype_520094202;
                               size: csize_t): cint {.cdecl,
      importc: "av_packet_shrink_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketshrinksidedata" &
        " already exists, not redeclaring")
when not declared(avpacketgetsidedata):
  proc avpacketgetsidedata*(pkt: ptr Avpacket_520094210;
                            typearg: enumavpacketsidedatatype_520094202;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_get_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketgetsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketpackdictionary):
  proc avpacketpackdictionary*(dict: ptr Avdictionary_520094083;
                               size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_pack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketunpackdictionary):
  proc avpacketunpackdictionary*(data: ptr uint8; size: csize_t;
                                 dict: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "av_packet_unpack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketunpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketfreesidedata):
  proc avpacketfreesidedata*(pkt: ptr Avpacket_520094210): void {.cdecl,
      importc: "av_packet_free_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketfreesidedata" &
        " already exists, not redeclaring")
when not declared(avpacketref):
  proc avpacketref*(dst: ptr Avpacket_520094210; src: ptr Avpacket_520094210): cint {.
      cdecl, importc: "av_packet_ref".}
else:
  static :
    hint("Declaration of " & "avpacketref" & " already exists, not redeclaring")
when not declared(avpacketunref):
  proc avpacketunref*(pkt: ptr Avpacket_520094210): void {.cdecl,
      importc: "av_packet_unref".}
else:
  static :
    hint("Declaration of " & "avpacketunref" &
        " already exists, not redeclaring")
when not declared(avpacketmoveref):
  proc avpacketmoveref*(dst: ptr Avpacket_520094210; src: ptr Avpacket_520094210): void {.
      cdecl, importc: "av_packet_move_ref".}
else:
  static :
    hint("Declaration of " & "avpacketmoveref" &
        " already exists, not redeclaring")
when not declared(avpacketcopyprops):
  proc avpacketcopyprops*(dst: ptr Avpacket_520094210; src: ptr Avpacket_520094210): cint {.
      cdecl, importc: "av_packet_copy_props".}
else:
  static :
    hint("Declaration of " & "avpacketcopyprops" &
        " already exists, not redeclaring")
when not declared(avpacketmakerefcounted):
  proc avpacketmakerefcounted*(pkt: ptr Avpacket_520094210): cint {.cdecl,
      importc: "av_packet_make_refcounted".}
else:
  static :
    hint("Declaration of " & "avpacketmakerefcounted" &
        " already exists, not redeclaring")
when not declared(avpacketmakewritable):
  proc avpacketmakewritable*(pkt: ptr Avpacket_520094210): cint {.cdecl,
      importc: "av_packet_make_writable".}
else:
  static :
    hint("Declaration of " & "avpacketmakewritable" &
        " already exists, not redeclaring")
when not declared(avpacketrescalets):
  proc avpacketrescalets*(pkt: ptr Avpacket_520094210; tbsrc: Avrational_520094138;
                          tbdst: Avrational_520094138): void {.cdecl,
      importc: "av_packet_rescale_ts".}
else:
  static :
    hint("Declaration of " & "avpacketrescalets" &
        " already exists, not redeclaring")
when not declared(avcodecparametersalloc):
  proc avcodecparametersalloc*(): ptr Avcodecparameters_520094220 {.cdecl,
      importc: "avcodec_parameters_alloc".}
else:
  static :
    hint("Declaration of " & "avcodecparametersalloc" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfree):
  proc avcodecparametersfree*(par: ptr ptr Avcodecparameters_520094220): void {.
      cdecl, importc: "avcodec_parameters_free".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfree" &
        " already exists, not redeclaring")
when not declared(avcodecparameterscopy):
  proc avcodecparameterscopy*(dst: ptr Avcodecparameters_520094220;
                              src: ptr Avcodecparameters_520094220): cint {.
      cdecl, importc: "avcodec_parameters_copy".}
else:
  static :
    hint("Declaration of " & "avcodecparameterscopy" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration2):
  proc avgetaudioframeduration2*(par: ptr Avcodecparameters_520094220;
                                 framebytes: cint): cint {.cdecl,
      importc: "av_get_audio_frame_duration2".}
else:
  static :
    hint("Declaration of " & "avgetaudioframeduration2" &
        " already exists, not redeclaring")
when not declared(avframealloc):
  proc avframealloc*(): ptr Avframe_520094242 {.cdecl, importc: "av_frame_alloc".}
else:
  static :
    hint("Declaration of " & "avframealloc" & " already exists, not redeclaring")
when not declared(avframefree):
  proc avframefree*(frame: ptr ptr Avframe_520094242): void {.cdecl,
      importc: "av_frame_free".}
else:
  static :
    hint("Declaration of " & "avframefree" & " already exists, not redeclaring")
when not declared(avframeref):
  proc avframeref*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242): cint {.
      cdecl, importc: "av_frame_ref".}
else:
  static :
    hint("Declaration of " & "avframeref" & " already exists, not redeclaring")
when not declared(avframereplace):
  proc avframereplace*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242): cint {.
      cdecl, importc: "av_frame_replace".}
else:
  static :
    hint("Declaration of " & "avframereplace" &
        " already exists, not redeclaring")
when not declared(avframeclone):
  proc avframeclone*(src: ptr Avframe_520094242): ptr Avframe_520094242 {.cdecl,
      importc: "av_frame_clone".}
else:
  static :
    hint("Declaration of " & "avframeclone" & " already exists, not redeclaring")
when not declared(avframeunref):
  proc avframeunref*(frame: ptr Avframe_520094242): void {.cdecl,
      importc: "av_frame_unref".}
else:
  static :
    hint("Declaration of " & "avframeunref" & " already exists, not redeclaring")
when not declared(avframemoveref):
  proc avframemoveref*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242): void {.
      cdecl, importc: "av_frame_move_ref".}
else:
  static :
    hint("Declaration of " & "avframemoveref" &
        " already exists, not redeclaring")
when not declared(avframegetbuffer):
  proc avframegetbuffer*(frame: ptr Avframe_520094242; align: cint): cint {.
      cdecl, importc: "av_frame_get_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avframeiswritable):
  proc avframeiswritable*(frame: ptr Avframe_520094242): cint {.cdecl,
      importc: "av_frame_is_writable".}
else:
  static :
    hint("Declaration of " & "avframeiswritable" &
        " already exists, not redeclaring")
when not declared(avframemakewritable):
  proc avframemakewritable*(frame: ptr Avframe_520094242): cint {.cdecl,
      importc: "av_frame_make_writable".}
else:
  static :
    hint("Declaration of " & "avframemakewritable" &
        " already exists, not redeclaring")
when not declared(avframecopy):
  proc avframecopy*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242): cint {.
      cdecl, importc: "av_frame_copy".}
else:
  static :
    hint("Declaration of " & "avframecopy" & " already exists, not redeclaring")
when not declared(avframecopyprops):
  proc avframecopyprops*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242): cint {.
      cdecl, importc: "av_frame_copy_props".}
else:
  static :
    hint("Declaration of " & "avframecopyprops" &
        " already exists, not redeclaring")
when not declared(avframegetplanebuffer):
  proc avframegetplanebuffer*(frame: ptr Avframe_520094242; plane: cint): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_frame_get_plane_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetplanebuffer" &
        " already exists, not redeclaring")
when not declared(avframenewsidedata):
  proc avframenewsidedata*(frame: ptr Avframe_520094242;
                           typearg: enumavframesidedatatype_520094222;
                           size: csize_t): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_new_side_data".}
else:
  static :
    hint("Declaration of " & "avframenewsidedata" &
        " already exists, not redeclaring")
when not declared(avframenewsidedatafrombuf):
  proc avframenewsidedatafrombuf*(frame: ptr Avframe_520094242;
                                  typearg: enumavframesidedatatype_520094222;
                                  buf: ptr Avbufferref_520094198): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_new_side_data_from_buf".}
else:
  static :
    hint("Declaration of " & "avframenewsidedatafrombuf" &
        " already exists, not redeclaring")
when not declared(avframegetsidedata):
  proc avframegetsidedata*(frame: ptr Avframe_520094242;
                           typearg: enumavframesidedatatype_520094222): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_get_side_data".}
else:
  static :
    hint("Declaration of " & "avframegetsidedata" &
        " already exists, not redeclaring")
when not declared(avframeremovesidedata):
  proc avframeremovesidedata*(frame: ptr Avframe_520094242;
                              typearg: enumavframesidedatatype_520094222): void {.
      cdecl, importc: "av_frame_remove_side_data".}
else:
  static :
    hint("Declaration of " & "avframeremovesidedata" &
        " already exists, not redeclaring")
when not declared(avframeapplycropping):
  proc avframeapplycropping*(frame: ptr Avframe_520094242; flags: cint): cint {.
      cdecl, importc: "av_frame_apply_cropping".}
else:
  static :
    hint("Declaration of " & "avframeapplycropping" &
        " already exists, not redeclaring")
when not declared(avframesidedataname):
  proc avframesidedataname*(typearg: enumavframesidedatatype_520094222): cstring {.
      cdecl, importc: "av_frame_side_data_name".}
else:
  static :
    hint("Declaration of " & "avframesidedataname" &
        " already exists, not redeclaring")
when not declared(avframesidedatadesc):
  proc avframesidedatadesc*(typearg: enumavframesidedatatype_520094222): ptr Avsidedatadescriptor_520094234 {.
      cdecl, importc: "av_frame_side_data_desc".}
else:
  static :
    hint("Declaration of " & "avframesidedatadesc" &
        " already exists, not redeclaring")
when not declared(avframesidedatafree):
  proc avframesidedatafree*(sd: ptr ptr ptr Avframesidedata_520094228;
                            nbsd: ptr cint): void {.cdecl,
      importc: "av_frame_side_data_free".}
else:
  static :
    hint("Declaration of " & "avframesidedatafree" &
        " already exists, not redeclaring")
when not declared(avframesidedatanew):
  proc avframesidedatanew*(sd: ptr ptr ptr Avframesidedata_520094228;
                           nbsd: ptr cint; typearg: enumavframesidedatatype_520094222;
                           size: csize_t; flags: cuint): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_side_data_new".}
else:
  static :
    hint("Declaration of " & "avframesidedatanew" &
        " already exists, not redeclaring")
when not declared(avframesidedataadd):
  proc avframesidedataadd*(sd: ptr ptr ptr Avframesidedata_520094228;
                           nbsd: ptr cint; typearg: enumavframesidedatatype_520094222;
                           buf: ptr ptr Avbufferref_520094198; flags: cuint): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_side_data_add".}
else:
  static :
    hint("Declaration of " & "avframesidedataadd" &
        " already exists, not redeclaring")
when not declared(avframesidedataclone):
  proc avframesidedataclone*(sd: ptr ptr ptr Avframesidedata_520094228;
                             nbsd: ptr cint; src: ptr Avframesidedata_520094228;
                             flags: cuint): cint {.cdecl,
      importc: "av_frame_side_data_clone".}
else:
  static :
    hint("Declaration of " & "avframesidedataclone" &
        " already exists, not redeclaring")
when not declared(avframesidedatagetc):
  proc avframesidedatagetc*(sd: ptr ptr Avframesidedata_520094228; nbsd: cint;
                            typearg: enumavframesidedatatype_520094222): ptr Avframesidedata_520094228 {.
      cdecl, importc: "av_frame_side_data_get_c".}
else:
  static :
    hint("Declaration of " & "avframesidedatagetc" &
        " already exists, not redeclaring")
when not declared(avframesidedataremove):
  proc avframesidedataremove*(sd: ptr ptr ptr Avframesidedata_520094228;
                              nbsd: ptr cint; typearg: enumavframesidedatatype_520094222): void {.
      cdecl, importc: "av_frame_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avframesidedataremove" &
        " already exists, not redeclaring")
when not declared(avhwdevicefindtypebyname):
  proc avhwdevicefindtypebyname*(name: cstring): enumavhwdevicetype_520094244 {.
      cdecl, importc: "av_hwdevice_find_type_by_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicefindtypebyname" &
        " already exists, not redeclaring")
when not declared(avhwdevicegettypename):
  proc avhwdevicegettypename*(typearg: enumavhwdevicetype_520094244): cstring {.
      cdecl, importc: "av_hwdevice_get_type_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicegettypename" &
        " already exists, not redeclaring")
when not declared(avhwdeviceiteratetypes):
  proc avhwdeviceiteratetypes*(prev: enumavhwdevicetype_520094244): enumavhwdevicetype_520094244 {.
      cdecl, importc: "av_hwdevice_iterate_types".}
else:
  static :
    hint("Declaration of " & "avhwdeviceiteratetypes" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxalloc):
  proc avhwdevicectxalloc*(typearg: enumavhwdevicetype_520094244): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_hwdevice_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxinit):
  proc avhwdevicectxinit*(refarg: ptr Avbufferref_520094198): cint {.cdecl,
      importc: "av_hwdevice_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxinit" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreate):
  proc avhwdevicectxcreate*(devicectx: ptr ptr Avbufferref_520094198;
                            typearg: enumavhwdevicetype_520094244;
                            device: cstring; opts: ptr Avdictionary_520094083;
                            flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreate" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederived):
  proc avhwdevicectxcreatederived*(dstctx: ptr ptr Avbufferref_520094198;
                                   typearg: enumavhwdevicetype_520094244;
                                   srcctx: ptr Avbufferref_520094198;
                                   flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederivedopts):
  proc avhwdevicectxcreatederivedopts*(dstctx: ptr ptr Avbufferref_520094198;
                                       typearg: enumavhwdevicetype_520094244;
                                       srcctx: ptr Avbufferref_520094198;
                                       options: ptr Avdictionary_520094083;
                                       flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived_opts".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederivedopts" &
        " already exists, not redeclaring")
when not declared(avhwframectxalloc):
  proc avhwframectxalloc*(devicectx: ptr Avbufferref_520094198): ptr Avbufferref_520094198 {.
      cdecl, importc: "av_hwframe_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwframectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwframectxinit):
  proc avhwframectxinit*(refarg: ptr Avbufferref_520094198): cint {.cdecl,
      importc: "av_hwframe_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwframectxinit" &
        " already exists, not redeclaring")
when not declared(avhwframegetbuffer):
  proc avhwframegetbuffer*(hwframectx: ptr Avbufferref_520094198;
                           frame: ptr Avframe_520094242; flags: cint): cint {.
      cdecl, importc: "av_hwframe_get_buffer".}
else:
  static :
    hint("Declaration of " & "avhwframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avhwframetransferdata):
  proc avhwframetransferdata*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242;
                              flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_data".}
else:
  static :
    hint("Declaration of " & "avhwframetransferdata" &
        " already exists, not redeclaring")
when not declared(avhwframetransfergetformats):
  proc avhwframetransfergetformats*(hwframectx: ptr Avbufferref_520094198;
                                    dir: enumavhwframetransferdirection_520094254;
                                    formats: ptr ptr enumavpixelformat_520094146;
                                    flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_get_formats".}
else:
  static :
    hint("Declaration of " & "avhwframetransfergetformats" &
        " already exists, not redeclaring")
when not declared(avhwdevicehwconfigalloc):
  proc avhwdevicehwconfigalloc*(devicectx: ptr Avbufferref_520094198): pointer {.
      cdecl, importc: "av_hwdevice_hwconfig_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicehwconfigalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicegethwframeconstraints):
  proc avhwdevicegethwframeconstraints*(refarg: ptr Avbufferref_520094198;
                                        hwconfig: pointer): ptr Avhwframesconstraints_520094258 {.
      cdecl, importc: "av_hwdevice_get_hwframe_constraints".}
else:
  static :
    hint("Declaration of " & "avhwdevicegethwframeconstraints" &
        " already exists, not redeclaring")
when not declared(avhwframeconstraintsfree):
  proc avhwframeconstraintsfree*(constraints: ptr ptr Avhwframesconstraints_520094258): void {.
      cdecl, importc: "av_hwframe_constraints_free".}
else:
  static :
    hint("Declaration of " & "avhwframeconstraintsfree" &
        " already exists, not redeclaring")
when not declared(avhwframemap):
  proc avhwframemap*(dst: ptr Avframe_520094242; src: ptr Avframe_520094242;
                     flags: cint): cint {.cdecl, importc: "av_hwframe_map".}
else:
  static :
    hint("Declaration of " & "avhwframemap" & " already exists, not redeclaring")
when not declared(avhwframectxcreatederived):
  proc avhwframectxcreatederived*(derivedframectx: ptr ptr Avbufferref_520094198;
                                  format: enumavpixelformat_520094146;
                                  deriveddevicectx: ptr Avbufferref_520094198;
                                  sourceframectx: ptr Avbufferref_520094198;
                                  flags: cint): cint {.cdecl,
      importc: "av_hwframe_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwframectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avcodeciterate):
  proc avcodeciterate*(opaque: ptr pointer): ptr Avcodec_520094266 {.cdecl,
      importc: "av_codec_iterate".}
else:
  static :
    hint("Declaration of " & "avcodeciterate" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoder):
  proc avcodecfinddecoder*(id: enumavcodecid_520094174): ptr Avcodec_520094266 {.
      cdecl, importc: "avcodec_find_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoder" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoderbyname):
  proc avcodecfinddecoderbyname*(name: cstring): ptr Avcodec_520094266 {.cdecl,
      importc: "avcodec_find_decoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoder):
  proc avcodecfindencoder*(id: enumavcodecid_520094174): ptr Avcodec_520094266 {.
      cdecl, importc: "avcodec_find_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoder" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoderbyname):
  proc avcodecfindencoderbyname*(name: cstring): ptr Avcodec_520094266 {.cdecl,
      importc: "avcodec_find_encoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecisencoder):
  proc avcodecisencoder*(codec: ptr Avcodec_520094266): cint {.cdecl,
      importc: "av_codec_is_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecisencoder" &
        " already exists, not redeclaring")
when not declared(avcodecisdecoder):
  proc avcodecisdecoder*(codec: ptr Avcodec_520094266): cint {.cdecl,
      importc: "av_codec_is_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecisdecoder" &
        " already exists, not redeclaring")
when not declared(avgetprofilename):
  proc avgetprofilename*(codec: ptr Avcodec_520094266; profile: cint): cstring {.
      cdecl, importc: "av_get_profile_name".}
else:
  static :
    hint("Declaration of " & "avgetprofilename" &
        " already exists, not redeclaring")
when not declared(avcodecgethwconfig):
  proc avcodecgethwconfig*(codec: ptr Avcodec_520094266; index: cint): ptr Avcodechwconfig_520094270 {.
      cdecl, importc: "avcodec_get_hw_config".}
else:
  static :
    hint("Declaration of " & "avcodecgethwconfig" &
        " already exists, not redeclaring")
when not declared(avgetpacket):
  proc avgetpacket*(s: ptr Aviocontext_520094111; pkt: ptr Avpacket_520094210;
                    size: cint): cint {.cdecl, importc: "av_get_packet".}
else:
  static :
    hint("Declaration of " & "avgetpacket" & " already exists, not redeclaring")
when not declared(avappendpacket):
  proc avappendpacket*(s: ptr Aviocontext_520094111; pkt: ptr Avpacket_520094210;
                       size: cint): cint {.cdecl, importc: "av_append_packet".}
else:
  static :
    hint("Declaration of " & "avappendpacket" &
        " already exists, not redeclaring")
when not declared(avdispositionfromstring):
  proc avdispositionfromstring*(disp: cstring): cint {.cdecl,
      importc: "av_disposition_from_string".}
else:
  static :
    hint("Declaration of " & "avdispositionfromstring" &
        " already exists, not redeclaring")
when not declared(avdispositiontostring):
  proc avdispositiontostring*(disposition: cint): cstring {.cdecl,
      importc: "av_disposition_to_string".}
else:
  static :
    hint("Declaration of " & "avdispositiontostring" &
        " already exists, not redeclaring")
when not declared(avstreamgetparser):
  proc avstreamgetparser*(s: ptr Avstream_520094294): ptr structavcodecparsercontext {.
      cdecl, importc: "av_stream_get_parser".}
else:
  static :
    hint("Declaration of " & "avstreamgetparser" &
        " already exists, not redeclaring")
when not declared(avstreamgetfirstdts):
  proc avstreamgetfirstdts*(st: ptr Avstream_520094294): int64 {.cdecl,
      importc: "av_stream_get_first_dts".}
else:
  static :
    hint("Declaration of " & "avstreamgetfirstdts" &
        " already exists, not redeclaring")
when not declared(avformatinjectglobalsidedata):
  proc avformatinjectglobalsidedata*(s: ptr Avformatcontext_520094310): void {.
      cdecl, importc: "av_format_inject_global_side_data".}
else:
  static :
    hint("Declaration of " & "avformatinjectglobalsidedata" &
        " already exists, not redeclaring")
when not declared(avfmtctxgetdurationestimationmethod):
  proc avfmtctxgetdurationestimationmethod*(ctx: ptr Avformatcontext_520094310): enumavdurationestimationmethod_520094308 {.
      cdecl, importc: "av_fmt_ctx_get_duration_estimation_method".}
else:
  static :
    hint("Declaration of " & "avfmtctxgetdurationestimationmethod" &
        " already exists, not redeclaring")
when not declared(avformatversion):
  proc avformatversion*(): cuint {.cdecl, importc: "avformat_version".}
else:
  static :
    hint("Declaration of " & "avformatversion" &
        " already exists, not redeclaring")
when not declared(avformatconfiguration):
  proc avformatconfiguration*(): cstring {.cdecl,
      importc: "avformat_configuration".}
else:
  static :
    hint("Declaration of " & "avformatconfiguration" &
        " already exists, not redeclaring")
when not declared(avformatlicense):
  proc avformatlicense*(): cstring {.cdecl, importc: "avformat_license".}
else:
  static :
    hint("Declaration of " & "avformatlicense" &
        " already exists, not redeclaring")
when not declared(avformatnetworkinit):
  proc avformatnetworkinit*(): cint {.cdecl, importc: "avformat_network_init".}
else:
  static :
    hint("Declaration of " & "avformatnetworkinit" &
        " already exists, not redeclaring")
when not declared(avformatnetworkdeinit):
  proc avformatnetworkdeinit*(): cint {.cdecl,
                                        importc: "avformat_network_deinit".}
else:
  static :
    hint("Declaration of " & "avformatnetworkdeinit" &
        " already exists, not redeclaring")
when not declared(avmuxeriterate):
  proc avmuxeriterate*(opaque: ptr pointer): ptr Avoutputformat_520094278 {.
      cdecl, importc: "av_muxer_iterate".}
else:
  static :
    hint("Declaration of " & "avmuxeriterate" &
        " already exists, not redeclaring")
when not declared(avdemuxeriterate):
  proc avdemuxeriterate*(opaque: ptr pointer): ptr Avinputformat_520094284 {.
      cdecl, importc: "av_demuxer_iterate".}
else:
  static :
    hint("Declaration of " & "avdemuxeriterate" &
        " already exists, not redeclaring")
when not declared(avformatalloccontext):
  proc avformatalloccontext*(): ptr Avformatcontext_520094310 {.cdecl,
      importc: "avformat_alloc_context".}
else:
  static :
    hint("Declaration of " & "avformatalloccontext" &
        " already exists, not redeclaring")
when not declared(avformatfreecontext):
  proc avformatfreecontext*(s: ptr Avformatcontext_520094310): void {.cdecl,
      importc: "avformat_free_context".}
else:
  static :
    hint("Declaration of " & "avformatfreecontext" &
        " already exists, not redeclaring")
when not declared(avformatgetclass):
  proc avformatgetclass*(): ptr Avclass_520094091 {.cdecl,
      importc: "avformat_get_class".}
else:
  static :
    hint("Declaration of " & "avformatgetclass" &
        " already exists, not redeclaring")
when not declared(avstreamgetclass):
  proc avstreamgetclass*(): ptr Avclass_520094091 {.cdecl,
      importc: "av_stream_get_class".}
else:
  static :
    hint("Declaration of " & "avstreamgetclass" &
        " already exists, not redeclaring")
when not declared(avformatnewstream):
  proc avformatnewstream*(s: ptr Avformatcontext_520094310; c: ptr structavcodec_520094264): ptr Avstream_520094294 {.
      cdecl, importc: "avformat_new_stream".}
else:
  static :
    hint("Declaration of " & "avformatnewstream" &
        " already exists, not redeclaring")
when not declared(avstreamaddsidedata):
  proc avstreamaddsidedata*(st: ptr Avstream_520094294;
                            typearg: enumavpacketsidedatatype_520094202;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_stream_add_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamaddsidedata" &
        " already exists, not redeclaring")
when not declared(avstreamnewsidedata):
  proc avstreamnewsidedata*(stream: ptr Avstream_520094294;
                            typearg: enumavpacketsidedatatype_520094202;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_stream_new_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamnewsidedata" &
        " already exists, not redeclaring")
when not declared(avstreamgetsidedata):
  proc avstreamgetsidedata*(stream: ptr Avstream_520094294;
                            typearg: enumavpacketsidedatatype_520094202;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_stream_get_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamgetsidedata" &
        " already exists, not redeclaring")
when not declared(avnewprogram):
  proc avnewprogram*(s: ptr Avformatcontext_520094310; id: cint): ptr Avprogram_520094298 {.
      cdecl, importc: "av_new_program".}
else:
  static :
    hint("Declaration of " & "avnewprogram" & " already exists, not redeclaring")
when not declared(avformatallocoutputcontext2):
  proc avformatallocoutputcontext2*(ctx: ptr ptr Avformatcontext_520094310;
                                    oformat: ptr Avoutputformat_520094278;
                                    formatname: cstring; filename: cstring): cint {.
      cdecl, importc: "avformat_alloc_output_context2".}
else:
  static :
    hint("Declaration of " & "avformatallocoutputcontext2" &
        " already exists, not redeclaring")
when not declared(avfindinputformat):
  proc avfindinputformat*(shortname: cstring): ptr Avinputformat_520094284 {.
      cdecl, importc: "av_find_input_format".}
else:
  static :
    hint("Declaration of " & "avfindinputformat" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat):
  proc avprobeinputformat*(pd: ptr Avprobedata_520094274; isopened: cint): ptr Avinputformat_520094284 {.
      cdecl, importc: "av_probe_input_format".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat2):
  proc avprobeinputformat2*(pd: ptr Avprobedata_520094274; isopened: cint;
                            scoremax: ptr cint): ptr Avinputformat_520094284 {.
      cdecl, importc: "av_probe_input_format2".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat2" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat3):
  proc avprobeinputformat3*(pd: ptr Avprobedata_520094274; isopened: cint;
                            scoreret: ptr cint): ptr Avinputformat_520094284 {.
      cdecl, importc: "av_probe_input_format3".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat3" &
        " already exists, not redeclaring")
when not declared(avprobeinputbuffer2):
  proc avprobeinputbuffer2*(pb: ptr Aviocontext_520094111;
                            fmt: ptr ptr Avinputformat_520094284; url: cstring;
                            logctx: pointer; offset: cuint; maxprobesize: cuint): cint {.
      cdecl, importc: "av_probe_input_buffer2".}
else:
  static :
    hint("Declaration of " & "avprobeinputbuffer2" &
        " already exists, not redeclaring")
when not declared(avprobeinputbuffer):
  proc avprobeinputbuffer*(pb: ptr Aviocontext_520094111;
                           fmt: ptr ptr Avinputformat_520094284; url: cstring;
                           logctx: pointer; offset: cuint; maxprobesize: cuint): cint {.
      cdecl, importc: "av_probe_input_buffer".}
else:
  static :
    hint("Declaration of " & "avprobeinputbuffer" &
        " already exists, not redeclaring")
when not declared(avformatopeninput):
  proc avformatopeninput*(ps: ptr ptr Avformatcontext_520094310; url: cstring;
                          fmt: ptr Avinputformat_520094284;
                          options: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "avformat_open_input".}
else:
  static :
    hint("Declaration of " & "avformatopeninput" &
        " already exists, not redeclaring")
when not declared(avformatfindstreaminfo):
  proc avformatfindstreaminfo*(ic: ptr Avformatcontext_520094310;
                               options: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "avformat_find_stream_info".}
else:
  static :
    hint("Declaration of " & "avformatfindstreaminfo" &
        " already exists, not redeclaring")
when not declared(avfindprogramfromstream):
  proc avfindprogramfromstream*(ic: ptr Avformatcontext_520094310;
                                last: ptr Avprogram_520094298; s: cint): ptr Avprogram_520094298 {.
      cdecl, importc: "av_find_program_from_stream".}
else:
  static :
    hint("Declaration of " & "avfindprogramfromstream" &
        " already exists, not redeclaring")
when not declared(avprogramaddstreamindex):
  proc avprogramaddstreamindex*(ac: ptr Avformatcontext_520094310; progid: cint;
                                idx: cuint): void {.cdecl,
      importc: "av_program_add_stream_index".}
else:
  static :
    hint("Declaration of " & "avprogramaddstreamindex" &
        " already exists, not redeclaring")
when not declared(avfindbeststream):
  proc avfindbeststream*(ic: ptr Avformatcontext_520094310;
                         typearg: enumavmediatype_520094132;
                         wantedstreamnb: cint; relatedstream: cint;
                         decoderret: ptr ptr structavcodec_520094264;
                         flags: cint): cint {.cdecl,
      importc: "av_find_best_stream".}
else:
  static :
    hint("Declaration of " & "avfindbeststream" &
        " already exists, not redeclaring")
when not declared(avreadframe):
  proc avreadframe*(s: ptr Avformatcontext_520094310; pkt: ptr Avpacket_520094210): cint {.
      cdecl, importc: "av_read_frame".}
else:
  static :
    hint("Declaration of " & "avreadframe" & " already exists, not redeclaring")
when not declared(avseekframe):
  proc avseekframe*(s: ptr Avformatcontext_520094310; streamindex: cint;
                    timestamp: int64; flags: cint): cint {.cdecl,
      importc: "av_seek_frame".}
else:
  static :
    hint("Declaration of " & "avseekframe" & " already exists, not redeclaring")
when not declared(avformatseekfile):
  proc avformatseekfile*(s: ptr Avformatcontext_520094310; streamindex: cint;
                         mints: int64; ts: int64; maxts: int64; flags: cint): cint {.
      cdecl, importc: "avformat_seek_file".}
else:
  static :
    hint("Declaration of " & "avformatseekfile" &
        " already exists, not redeclaring")
when not declared(avformatflush):
  proc avformatflush*(s: ptr Avformatcontext_520094310): cint {.cdecl,
      importc: "avformat_flush".}
else:
  static :
    hint("Declaration of " & "avformatflush" &
        " already exists, not redeclaring")
when not declared(avreadplay):
  proc avreadplay*(s: ptr Avformatcontext_520094310): cint {.cdecl,
      importc: "av_read_play".}
else:
  static :
    hint("Declaration of " & "avreadplay" & " already exists, not redeclaring")
when not declared(avreadpause):
  proc avreadpause*(s: ptr Avformatcontext_520094310): cint {.cdecl,
      importc: "av_read_pause".}
else:
  static :
    hint("Declaration of " & "avreadpause" & " already exists, not redeclaring")
when not declared(avformatcloseinput):
  proc avformatcloseinput*(s: ptr ptr Avformatcontext_520094310): void {.cdecl,
      importc: "avformat_close_input".}
else:
  static :
    hint("Declaration of " & "avformatcloseinput" &
        " already exists, not redeclaring")
when not declared(avformatwriteheader):
  proc avformatwriteheader*(s: ptr Avformatcontext_520094310;
                            options: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "avformat_write_header".}
else:
  static :
    hint("Declaration of " & "avformatwriteheader" &
        " already exists, not redeclaring")
when not declared(avformatinitoutput):
  proc avformatinitoutput*(s: ptr Avformatcontext_520094310;
                           options: ptr ptr Avdictionary_520094083): cint {.
      cdecl, importc: "avformat_init_output".}
else:
  static :
    hint("Declaration of " & "avformatinitoutput" &
        " already exists, not redeclaring")
when not declared(avwriteframe):
  proc avwriteframe*(s: ptr Avformatcontext_520094310; pkt: ptr Avpacket_520094210): cint {.
      cdecl, importc: "av_write_frame".}
else:
  static :
    hint("Declaration of " & "avwriteframe" & " already exists, not redeclaring")
when not declared(avinterleavedwriteframe):
  proc avinterleavedwriteframe*(s: ptr Avformatcontext_520094310;
                                pkt: ptr Avpacket_520094210): cint {.cdecl,
      importc: "av_interleaved_write_frame".}
else:
  static :
    hint("Declaration of " & "avinterleavedwriteframe" &
        " already exists, not redeclaring")
when not declared(avwriteuncodedframe):
  proc avwriteuncodedframe*(s: ptr Avformatcontext_520094310; streamindex: cint;
                            frame: ptr structavframe_520094240): cint {.cdecl,
      importc: "av_write_uncoded_frame".}
else:
  static :
    hint("Declaration of " & "avwriteuncodedframe" &
        " already exists, not redeclaring")
when not declared(avinterleavedwriteuncodedframe):
  proc avinterleavedwriteuncodedframe*(s: ptr Avformatcontext_520094310;
                                       streamindex: cint;
                                       frame: ptr structavframe_520094240): cint {.
      cdecl, importc: "av_interleaved_write_uncoded_frame".}
else:
  static :
    hint("Declaration of " & "avinterleavedwriteuncodedframe" &
        " already exists, not redeclaring")
when not declared(avwriteuncodedframequery):
  proc avwriteuncodedframequery*(s: ptr Avformatcontext_520094310;
                                 streamindex: cint): cint {.cdecl,
      importc: "av_write_uncoded_frame_query".}
else:
  static :
    hint("Declaration of " & "avwriteuncodedframequery" &
        " already exists, not redeclaring")
when not declared(avwritetrailer):
  proc avwritetrailer*(s: ptr Avformatcontext_520094310): cint {.cdecl,
      importc: "av_write_trailer".}
else:
  static :
    hint("Declaration of " & "avwritetrailer" &
        " already exists, not redeclaring")
when not declared(avguessformat):
  proc avguessformat*(shortname: cstring; filename: cstring; mimetype: cstring): ptr Avoutputformat_520094278 {.
      cdecl, importc: "av_guess_format".}
else:
  static :
    hint("Declaration of " & "avguessformat" &
        " already exists, not redeclaring")
when not declared(avguesscodec):
  proc avguesscodec*(fmt: ptr Avoutputformat_520094278; shortname: cstring;
                     filename: cstring; mimetype: cstring;
                     typearg: enumavmediatype_520094132): enumavcodecid_520094174 {.
      cdecl, importc: "av_guess_codec".}
else:
  static :
    hint("Declaration of " & "avguesscodec" & " already exists, not redeclaring")
when not declared(avgetoutputtimestamp):
  proc avgetoutputtimestamp*(s: ptr structavformatcontext_520094282;
                             stream: cint; dts: ptr int64; wall: ptr int64): cint {.
      cdecl, importc: "av_get_output_timestamp".}
else:
  static :
    hint("Declaration of " & "avgetoutputtimestamp" &
        " already exists, not redeclaring")
when not declared(avhexdump):
  proc avhexdump*(f: ptr File_520094312; buf: ptr uint8; size: cint): void {.
      cdecl, importc: "av_hex_dump".}
else:
  static :
    hint("Declaration of " & "avhexdump" & " already exists, not redeclaring")
when not declared(avhexdumplog):
  proc avhexdumplog*(avcl: pointer; level: cint; buf: ptr uint8; size: cint): void {.
      cdecl, importc: "av_hex_dump_log".}
else:
  static :
    hint("Declaration of " & "avhexdumplog" & " already exists, not redeclaring")
when not declared(avpktdump2):
  proc avpktdump2*(f: ptr File_520094312; pkt: ptr Avpacket_520094210;
                   dumppayload: cint; st: ptr Avstream_520094294): void {.cdecl,
      importc: "av_pkt_dump2".}
else:
  static :
    hint("Declaration of " & "avpktdump2" & " already exists, not redeclaring")
when not declared(avpktdumplog2):
  proc avpktdumplog2*(avcl: pointer; level: cint; pkt: ptr Avpacket_520094210;
                      dumppayload: cint; st: ptr Avstream_520094294): void {.
      cdecl, importc: "av_pkt_dump_log2".}
else:
  static :
    hint("Declaration of " & "avpktdumplog2" &
        " already exists, not redeclaring")
when not declared(avcodecgetid):
  proc avcodecgetid*(tags: ptr ptr structavcodectag; tag: cuint): enumavcodecid_520094174 {.
      cdecl, importc: "av_codec_get_id".}
else:
  static :
    hint("Declaration of " & "avcodecgetid" & " already exists, not redeclaring")
when not declared(avcodecgettag):
  proc avcodecgettag*(tags: ptr ptr structavcodectag; id: enumavcodecid_520094174): cuint {.
      cdecl, importc: "av_codec_get_tag".}
else:
  static :
    hint("Declaration of " & "avcodecgettag" &
        " already exists, not redeclaring")
when not declared(avcodecgettag2):
  proc avcodecgettag2*(tags: ptr ptr structavcodectag; id: enumavcodecid_520094174;
                       tag: ptr cuint): cint {.cdecl,
      importc: "av_codec_get_tag2".}
else:
  static :
    hint("Declaration of " & "avcodecgettag2" &
        " already exists, not redeclaring")
when not declared(avfinddefaultstreamindex):
  proc avfinddefaultstreamindex*(s: ptr Avformatcontext_520094310): cint {.
      cdecl, importc: "av_find_default_stream_index".}
else:
  static :
    hint("Declaration of " & "avfinddefaultstreamindex" &
        " already exists, not redeclaring")
when not declared(avindexsearchtimestamp):
  proc avindexsearchtimestamp*(st: ptr Avstream_520094294; timestamp: int64;
                               flags: cint): cint {.cdecl,
      importc: "av_index_search_timestamp".}
else:
  static :
    hint("Declaration of " & "avindexsearchtimestamp" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentriescount):
  proc avformatindexgetentriescount*(st: ptr Avstream_520094294): cint {.cdecl,
      importc: "avformat_index_get_entries_count".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentriescount" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentry):
  proc avformatindexgetentry*(st: ptr Avstream_520094294; idx: cint): ptr Avindexentry_520094290 {.
      cdecl, importc: "avformat_index_get_entry".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentry" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentryfromtimestamp):
  proc avformatindexgetentryfromtimestamp*(st: ptr Avstream_520094294;
      wantedtimestamp: int64; flags: cint): ptr Avindexentry_520094290 {.cdecl,
      importc: "avformat_index_get_entry_from_timestamp".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentryfromtimestamp" &
        " already exists, not redeclaring")
when not declared(avaddindexentry):
  proc avaddindexentry*(st: ptr Avstream_520094294; pos: int64;
                        timestamp: int64; size: cint; distance: cint;
                        flags: cint): cint {.cdecl,
      importc: "av_add_index_entry".}
else:
  static :
    hint("Declaration of " & "avaddindexentry" &
        " already exists, not redeclaring")
when not declared(avurlsplit):
  proc avurlsplit*(proto: cstring; protosize: cint; authorization: cstring;
                   authorizationsize: cint; hostname: cstring;
                   hostnamesize: cint; portptr: ptr cint; path: cstring;
                   pathsize: cint; url: cstring): void {.cdecl,
      importc: "av_url_split".}
else:
  static :
    hint("Declaration of " & "avurlsplit" & " already exists, not redeclaring")
when not declared(avdumpformat):
  proc avdumpformat*(ic: ptr Avformatcontext_520094310; index: cint;
                     url: cstring; isoutput: cint): void {.cdecl,
      importc: "av_dump_format".}
else:
  static :
    hint("Declaration of " & "avdumpformat" & " already exists, not redeclaring")
when not declared(avgetframefilename2):
  proc avgetframefilename2*(buf: cstring; bufsize: cint; path: cstring;
                            number: cint; flags: cint): cint {.cdecl,
      importc: "av_get_frame_filename2".}
else:
  static :
    hint("Declaration of " & "avgetframefilename2" &
        " already exists, not redeclaring")
when not declared(avgetframefilename):
  proc avgetframefilename*(buf: cstring; bufsize: cint; path: cstring;
                           number: cint): cint {.cdecl,
      importc: "av_get_frame_filename".}
else:
  static :
    hint("Declaration of " & "avgetframefilename" &
        " already exists, not redeclaring")
when not declared(avfilenamenumbertest):
  proc avfilenamenumbertest*(filename: cstring): cint {.cdecl,
      importc: "av_filename_number_test".}
else:
  static :
    hint("Declaration of " & "avfilenamenumbertest" &
        " already exists, not redeclaring")
when not declared(avsdpcreate):
  proc avsdpcreate*(ac: ptr UncheckedArray[ptr Avformatcontext_520094310];
                    nfiles: cint; buf: cstring; size: cint): cint {.cdecl,
      importc: "av_sdp_create".}
else:
  static :
    hint("Declaration of " & "avsdpcreate" & " already exists, not redeclaring")
when not declared(avmatchext):
  proc avmatchext*(filename: cstring; extensions: cstring): cint {.cdecl,
      importc: "av_match_ext".}
else:
  static :
    hint("Declaration of " & "avmatchext" & " already exists, not redeclaring")
when not declared(avformatquerycodec):
  proc avformatquerycodec*(ofmt: ptr Avoutputformat_520094278;
                           codecid: enumavcodecid_520094174; stdcompliance: cint): cint {.
      cdecl, importc: "avformat_query_codec".}
else:
  static :
    hint("Declaration of " & "avformatquerycodec" &
        " already exists, not redeclaring")
when not declared(avformatgetriffvideotags):
  proc avformatgetriffvideotags*(): ptr structavcodectag {.cdecl,
      importc: "avformat_get_riff_video_tags".}
else:
  static :
    hint("Declaration of " & "avformatgetriffvideotags" &
        " already exists, not redeclaring")
when not declared(avformatgetriffaudiotags):
  proc avformatgetriffaudiotags*(): ptr structavcodectag {.cdecl,
      importc: "avformat_get_riff_audio_tags".}
else:
  static :
    hint("Declaration of " & "avformatgetriffaudiotags" &
        " already exists, not redeclaring")
when not declared(avformatgetmovvideotags):
  proc avformatgetmovvideotags*(): ptr structavcodectag {.cdecl,
      importc: "avformat_get_mov_video_tags".}
else:
  static :
    hint("Declaration of " & "avformatgetmovvideotags" &
        " already exists, not redeclaring")
when not declared(avformatgetmovaudiotags):
  proc avformatgetmovaudiotags*(): ptr structavcodectag {.cdecl,
      importc: "avformat_get_mov_audio_tags".}
else:
  static :
    hint("Declaration of " & "avformatgetmovaudiotags" &
        " already exists, not redeclaring")
when not declared(avguesssampleaspectratio):
  proc avguesssampleaspectratio*(format: ptr Avformatcontext_520094310;
                                 stream: ptr Avstream_520094294;
                                 frame: ptr structavframe_520094240): Avrational_520094138 {.
      cdecl, importc: "av_guess_sample_aspect_ratio".}
else:
  static :
    hint("Declaration of " & "avguesssampleaspectratio" &
        " already exists, not redeclaring")
when not declared(avguessframerate):
  proc avguessframerate*(ctx: ptr Avformatcontext_520094310;
                         stream: ptr Avstream_520094294;
                         frame: ptr structavframe_520094240): Avrational_520094138 {.
      cdecl, importc: "av_guess_frame_rate".}
else:
  static :
    hint("Declaration of " & "avguessframerate" &
        " already exists, not redeclaring")
when not declared(avformatmatchstreamspecifier):
  proc avformatmatchstreamspecifier*(s: ptr Avformatcontext_520094310;
                                     st: ptr Avstream_520094294; spec: cstring): cint {.
      cdecl, importc: "avformat_match_stream_specifier".}
else:
  static :
    hint("Declaration of " & "avformatmatchstreamspecifier" &
        " already exists, not redeclaring")
when not declared(avformatqueueattachedpictures):
  proc avformatqueueattachedpictures*(s: ptr Avformatcontext_520094310): cint {.
      cdecl, importc: "avformat_queue_attached_pictures".}
else:
  static :
    hint("Declaration of " & "avformatqueueattachedpictures" &
        " already exists, not redeclaring")
when not declared(avformattransferinternalstreamtiminginfo):
  proc avformattransferinternalstreamtiminginfo*(ofmt: ptr Avoutputformat_520094278;
      ost: ptr Avstream_520094294; ist: ptr Avstream_520094294;
      copytb: enumavtimebasesource_520094314): cint {.cdecl,
      importc: "avformat_transfer_internal_stream_timing_info".}
else:
  static :
    hint("Declaration of " & "avformattransferinternalstreamtiminginfo" &
        " already exists, not redeclaring")
when not declared(avstreamgetcodectimebase):
  proc avstreamgetcodectimebase*(st: ptr Avstream_520094294): Avrational_520094138 {.
      cdecl, importc: "av_stream_get_codec_timebase".}
else:
  static :
    hint("Declaration of " & "avstreamgetcodectimebase" &
        " already exists, not redeclaring")