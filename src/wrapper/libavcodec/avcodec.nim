
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
when not declared(enumavsubtitletype):
  type
    enumavsubtitletype* {.size: sizeof(cuint).} = enum
      Subtitlenone = 0, Subtitlebitmap = 1, Subtitletext = 2, Subtitleass = 3
else:
  static :
    hint("Declaration of " & "enumavsubtitletype" &
        " already exists, not redeclaring")
when not declared(enumavpicturestructure):
  type
    enumavpicturestructure* {.size: sizeof(cuint).} = enum
      Avpicturestructureunknown = 0, Avpicturestructuretopfield = 1,
      Avpicturestructurebottomfield = 2, Avpicturestructureframe = 3
else:
  static :
    hint("Declaration of " & "enumavpicturestructure" &
        " already exists, not redeclaring")
when not declared(structavbprint):
  type
    structavbprint* = distinct object
else:
  static :
    hint("Declaration of " & "structavbprint" &
        " already exists, not redeclaring")
when not declared(structavbufferpool):
  type
    structavbufferpool* = distinct object
else:
  static :
    hint("Declaration of " & "structavbufferpool" &
        " already exists, not redeclaring")
when not declared(Avceilrshift):
  type
    Avceilrshift* = distinct object
else:
  static :
    hint("Declaration of " & "Avceilrshift" & " already exists, not redeclaring")
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
when not declared(compilerbuiltinconstantp):
  type
    compilerbuiltinconstantp* = distinct object
else:
  static :
    hint("Declaration of " & "compilerbuiltinconstantp" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionint):
  type
    Libavcodecversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libavcodecversionint" &
        " already exists, not redeclaring")
when not declared(structavoptionranges):
  type
    structavoptionranges* = distinct object
else:
  static :
    hint("Declaration of " & "structavoptionranges" &
        " already exists, not redeclaring")
when not declared(structavcodecinternal):
  type
    structavcodecinternal* = distinct object
else:
  static :
    hint("Declaration of " & "structavcodecinternal" &
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
when not declared(Fflambdascale):
  type
    Fflambdascale* = distinct object
else:
  static :
    hint("Declaration of " & "Fflambdascale" &
        " already exists, not redeclaring")
when not declared(Avchfrontcenter):
  type
    Avchfrontcenter* = distinct object
else:
  static :
    hint("Declaration of " & "Avchfrontcenter" &
        " already exists, not redeclaring")
when not declared(structavbuffer):
  type
    structavbuffer* = distinct object
else:
  static :
    hint("Declaration of " & "structavbuffer" &
        " already exists, not redeclaring")
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
type
  structavrational_520094084 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094086 = structavrational_520094085 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:61:3
  unionavintfloat32_520094088 {.union, bycopy.} = object
    i*: uint32               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:27:7
    f*: cfloat

  unionavintfloat64_520094090 {.union, bycopy.} = object
    i*: uint64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:32:7
    f*: cdouble

  Avclasscategory_520094096 = enumavclasscategory_520094095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:47:2
  structavclass_520094098 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094097
    getcategory*: proc (a0: pointer): Avclasscategory_520094097 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094099 {.
        cdecl.}

  Avclass_520094100 = structavclass_520094099 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:147:3
  valist_520094102 = compilerbuiltinvalist ## Generated based on /usr/lib/clang/17/include/stdarg.h:22:27
  Avbuffer_520094116 = structavbuffer ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:74:25
  structavbufferref_520094118 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520094117 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  Avbufferref_520094120 = structavbufferref_520094119 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:95:3
  Avbufferpool_520094122 = structavbufferpool ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:255:29
  structavchannelcustom_520094130 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094125 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:267:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom_520094132 = structavchannelcustom_520094131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:271:3
  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094133

  structavchannellayout_520094141 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094127 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:303:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout_520094143 = structavchannellayout_520094142 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:361:3
  structavdictionaryentry_520094145 {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:89:16
    value*: cstring

  Avdictionaryentry_520094147 = structavdictionaryentry_520094146 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:92:3
  Avdictionary_520094149 = structavdictionary ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:94:29
  structavframesidedata_520094155 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520094152 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:250:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520094150
    buf*: ptr Avbufferref_520094121

  Avframesidedata_520094157 = structavframesidedata_520094156 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:256:3
  structavsidedatadescriptor_520094161 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:277:16
    props*: cuint

  Avsidedatadescriptor_520094163 = structavsidedatadescriptor_520094162 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:287:3
  structavregionofinterest_520094165 {.pure, inheritable, bycopy.} = object
    selfsize*: uint32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:300:16
    top*: cint
    bottom*: cint
    left*: cint
    right*: cint
    qoffset*: Avrational_520094087

  Avregionofinterest_520094167 = structavregionofinterest_520094166 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:343:3
  structavframe_520094169 {.pure, inheritable, bycopy.} = object
    data*: array[8'i64, ptr uint8] ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:374:16
    linesize*: array[8'i64, cint]
    extendeddata*: ptr ptr uint8
    width*: cint
    height*: cint
    nbsamples*: cint
    format*: cint
    keyframe*: cint
    picttype*: enumavpicturetype_520094083
    sampleaspectratio*: Avrational_520094087
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520094087
    quality*: cint
    opaque*: pointer
    repeatpict*: cint
    interlacedframe*: cint
    topfieldfirst*: cint
    palettehaschanged*: cint
    samplerate*: cint
    buf*: array[8'i64, ptr Avbufferref_520094121]
    extendedbuf*: ptr ptr Avbufferref_520094121
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520094158
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520094113
    colorprimaries*: enumavcolorprimaries_520094107
    colortrc*: enumavcolortransfercharacteristic_520094109
    colorspace*: enumavcolorspace_520094111
    chromalocation*: enumavchromalocation_520094115
    bestefforttimestamp*: int64
    pktpos*: int64
    metadata*: ptr Avdictionary_520094150
    decodeerrorflags*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520094121
    opaqueref*: ptr Avbufferref_520094121
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520094121
    chlayout*: Avchannellayout_520094144
    duration*: int64

  Avframe_520094171 = structavframe_520094170 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:781:3
  structavhwdevicecontext_520094175 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094101 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:60:16
    typefield*: enumavhwdevicetype_520094174
    hwctx*: pointer
    free*: proc (a0: ptr structavhwdevicecontext_520094176): void {.cdecl.}
    useropaque*: pointer

  Avhwdevicecontext_520094177 = structavhwdevicecontext_520094176 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:103:3
  structavhwframescontext_520094179 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094101 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:115:16
    deviceref*: ptr Avbufferref_520094121
    devicectx*: ptr Avhwdevicecontext_520094178
    hwctx*: pointer
    free*: proc (a0: ptr structavhwframescontext_520094180): void {.cdecl.}
    useropaque*: pointer
    pool*: ptr Avbufferpool_520094123
    initialpoolsize*: cint
    format*: enumavpixelformat_520094105
    swformat*: enumavpixelformat_520094105
    width*: cint
    height*: cint

  Avhwframescontext_520094181 = structavhwframescontext_520094180 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:218:3
  structavhwframesconstraints_520094185 {.pure, inheritable, bycopy.} = object
    validhwformats*: ptr enumavpixelformat_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:441:16
    validswformats*: ptr enumavpixelformat_520094105
    minwidth*: cint
    minheight*: cint
    maxwidth*: cint
    maxheight*: cint

  Avhwframesconstraints_520094187 = structavhwframesconstraints_520094186 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/hwcontext.h:468:3
  structavprofile_520094191 {.pure, inheritable, bycopy.} = object
    profile*: cint           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:179:16
    name*: cstring

  Avprofile_520094193 = structavprofile_520094192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:182:3
  structavcodec_520094195 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:187:16
    longname*: cstring
    typefield*: enumavmediatype_520094081
    id*: enumavcodecid_520094190
    capabilities*: cint
    maxlowres*: uint8
    supportedframerates*: ptr Avrational_520094087
    pixfmts*: ptr enumavpixelformat_520094105
    supportedsamplerates*: ptr cint
    samplefmts*: ptr enumavsampleformat_520094079
    privclass*: ptr Avclass_520094101
    profiles*: ptr Avprofile_520094194
    wrappername*: cstring
    chlayouts*: ptr Avchannellayout_520094144

  Avcodec_520094197 = structavcodec_520094196 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:231:3
  structavcodechwconfig_520094199 {.pure, inheritable, bycopy.} = object
    pixfmt*: enumavpixelformat_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:334:16
    methods*: cint
    devicetype*: enumavhwdevicetype_520094174

  Avcodechwconfig_520094201 = structavcodechwconfig_520094200 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec.h:356:3
  structavpanscan_520094209 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:240:16
    width*: cint
    height*: cint
    position*: array[3'i64, array[2'i64, int16]]

  Avpanscan_520094211 = structavpanscan_520094210 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:262:3
  structavcpbproperties_520094213 {.pure, inheritable, bycopy.} = object
    maxbitrate*: int64       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:269:16
    minbitrate*: int64
    avgbitrate*: int64
    buffersize*: int64
    vbvdelay*: uint64

  Avcpbproperties_520094215 = structavcpbproperties_520094214 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:300:3
  structavproducerreferencetime_520094217 {.pure, inheritable, bycopy.} = object
    wallclock*: int64        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:318:16
    flags*: cint

  Avproducerreferencetime_520094219 = structavproducerreferencetime_520094218 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/defs.h:324:3
  structavpacketsidedata_520094223 {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:375:16
    size*: csize_t
    typefield*: enumavpacketsidedatatype_520094222

  Avpacketsidedata_520094225 = structavpacketsidedata_520094224 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:379:3
  structavpacket_520094227 {.pure, inheritable, bycopy.} = object
    buf*: ptr Avbufferref_520094121 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:501:16
    pts*: int64
    dts*: int64
    data*: ptr uint8
    size*: cint
    streamindex*: cint
    flags*: cint
    sidedata*: ptr Avpacketsidedata_520094226
    sidedataelems*: cint
    duration*: int64
    pos*: int64
    opaque*: pointer
    opaqueref*: ptr Avbufferref_520094121
    timebase*: Avrational_520094087

  Avpacket_520094229 = structavpacket_520094228 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:569:3
  structavpacketlist_520094231 {.pure, inheritable, bycopy.} = object
    pkt*: Avpacket_520094230 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:573:16
    next*: ptr structavpacketlist_520094232

  Avpacketlist_520094233 = structavpacketlist_520094232 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/packet.h:576:3
  structavcodecdescriptor_520094237 {.pure, inheritable, bycopy.} = object
    id*: enumavcodecid_520094190 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_desc.h:38:16
    typefield*: enumavmediatype_520094081
    name*: cstring
    longname*: cstring
    props*: cint
    mimetypes*: ptr cstring
    profiles*: ptr structavprofile_520094192

  Avcodecdescriptor_520094239 = structavcodecdescriptor_520094238 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_desc.h:66:3
  structavcodecparameters_520094241 {.pure, inheritable, bycopy.} = object
    codectype*: enumavmediatype_520094081 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_par.h:47:16
    codecid*: enumavcodecid_520094190
    codectag*: uint32
    extradata*: ptr uint8
    extradatasize*: cint
    codedsidedata*: ptr Avpacketsidedata_520094226
    nbcodedsidedata*: cint
    format*: cint
    bitrate*: int64
    bitspercodedsample*: cint
    bitsperrawsample*: cint
    profile*: cint
    level*: cint
    width*: cint
    height*: cint
    sampleaspectratio*: Avrational_520094087
    framerate*: Avrational_520094087
    fieldorder*: enumavfieldorder_520094204
    colorrange*: enumavcolorrange_520094113
    colorprimaries*: enumavcolorprimaries_520094107
    colortrc*: enumavcolortransfercharacteristic_520094109
    colorspace*: enumavcolorspace_520094111
    chromalocation*: enumavchromalocation_520094115
    videodelay*: cint
    chlayout*: Avchannellayout_520094144
    samplerate*: cint
    blockalign*: cint
    framesize*: cint
    initialpadding*: cint
    trailingpadding*: cint
    seekpreroll*: cint

  Avcodecparameters_520094243 = structavcodecparameters_520094242 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/codec_par.h:215:3
  structrcoverride_520094245 {.pure, inheritable, bycopy.} = object
    startframe*: cint        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:204:16
    endframe*: cint
    qscale*: cint
    qualityfactor*: cfloat

  Rcoverride_520094247 = structrcoverride_520094246 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:209:3
  structavcodeccontext_520094249 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094101 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:445:16
    logleveloffset*: cint
    codectype*: enumavmediatype_520094081
    codec*: ptr structavcodec_520094196
    codecid*: enumavcodecid_520094190
    codectag*: cuint
    privdata*: pointer
    internal*: ptr structavcodecinternal
    opaque*: pointer
    bitrate*: int64
    flags*: cint
    flags2*: cint
    extradata*: ptr uint8
    extradatasize*: cint
    timebase*: Avrational_520094087
    pkttimebase*: Avrational_520094087
    framerate*: Avrational_520094087
    ticksperframe*: cint
    delay*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    sampleaspectratio*: Avrational_520094087
    pixfmt*: enumavpixelformat_520094105
    swpixfmt*: enumavpixelformat_520094105
    colorprimaries*: enumavcolorprimaries_520094107
    colortrc*: enumavcolortransfercharacteristic_520094109
    colorspace*: enumavcolorspace_520094111
    colorrange*: enumavcolorrange_520094113
    chromasamplelocation*: enumavchromalocation_520094115
    fieldorder*: enumavfieldorder_520094204
    refs*: cint
    hasbframes*: cint
    sliceflags*: cint
    drawhorizband*: proc (a0: ptr structavcodeccontext_520094250;
                          a1: ptr Avframe_520094172; a2: array[8'i64, cint];
                          a3: cint; a4: cint; a5: cint): void {.cdecl.}
    getformat*: proc (a0: ptr structavcodeccontext_520094250;
                      a1: ptr enumavpixelformat_520094105): enumavpixelformat_520094105 {.
        cdecl.}
    maxbframes*: cint
    bquantfactor*: cfloat
    bquantoffset*: cfloat
    iquantfactor*: cfloat
    iquantoffset*: cfloat
    lumimasking*: cfloat
    temporalcplxmasking*: cfloat
    spatialcplxmasking*: cfloat
    pmasking*: cfloat
    darkmasking*: cfloat
    nsseweight*: cint
    mecmp*: cint
    mesubcmp*: cint
    mbcmp*: cint
    ildctcmp*: cint
    diasize*: cint
    lastpredictorcount*: cint
    meprecmp*: cint
    prediasize*: cint
    mesubpelquality*: cint
    merange*: cint
    mbdecision*: cint
    intramatrix*: ptr uint16
    intermatrix*: ptr uint16
    chromaintramatrix*: ptr uint16
    intradcprecision*: cint
    mblmin*: cint
    mblmax*: cint
    bidirrefine*: cint
    keyintmin*: cint
    gopsize*: cint
    mv0threshold*: cint
    slices*: cint
    samplerate*: cint
    samplefmt*: enumavsampleformat_520094079
    chlayout*: Avchannellayout_520094144
    framesize*: cint
    blockalign*: cint
    cutoff*: cint
    audioservicetype*: enumavaudioservicetype_520094208
    requestsamplefmt*: enumavsampleformat_520094079
    initialpadding*: cint
    trailingpadding*: cint
    seekpreroll*: cint
    getbuffer2*: proc (a0: ptr structavcodeccontext_520094250; a1: ptr Avframe_520094172;
                       a2: cint): cint {.cdecl.}
    bitratetolerance*: cint
    globalquality*: cint
    compressionlevel*: cint
    qcompress*: cfloat
    qblur*: cfloat
    qmin*: cint
    qmax*: cint
    maxqdiff*: cint
    rcbuffersize*: cint
    rcoverridecount*: cint
    rcoverride*: ptr Rcoverride_520094248
    rcmaxrate*: int64
    rcminrate*: int64
    rcmaxavailablevbvuse*: cfloat
    rcminvbvoverflowuse*: cfloat
    rcinitialbufferoccupancy*: cint
    trellis*: cint
    statsout*: cstring
    statsin*: cstring
    workaroundbugs*: cint
    strictstdcompliance*: cint
    errorconcealment*: cint
    debug*: cint
    errrecognition*: cint
    hwaccel*: ptr structavhwaccel_520094252
    hwaccelcontext*: pointer
    hwframesctx*: ptr Avbufferref_520094121
    hwdevicectx*: ptr Avbufferref_520094121
    hwaccelflags*: cint
    extrahwframes*: cint
    error*: array[8'i64, uint64]
    dctalgo*: cint
    idctalgo*: cint
    bitspercodedsample*: cint
    bitsperrawsample*: cint
    threadcount*: cint
    threadtype*: cint
    activethreadtype*: cint
    execute*: proc (a0: ptr structavcodeccontext_520094250; a1: proc (
        a0: ptr structavcodeccontext_520094250; a1: pointer): cint {.cdecl.};
                    a2: pointer; a3: ptr cint; a4: cint; a5: cint): cint {.cdecl.}
    execute2*: proc (a0: ptr structavcodeccontext_520094250; a1: proc (
        a0: ptr structavcodeccontext_520094250; a1: pointer; a2: cint; a3: cint): cint {.
        cdecl.}; a2: pointer; a3: ptr cint; a4: cint): cint {.cdecl.}
    profile*: cint
    level*: cint
    properties*: cuint
    skiploopfilter*: enumavdiscard_520094206
    skipidct*: enumavdiscard_520094206
    skipframe*: enumavdiscard_520094206
    skipalpha*: cint
    skiptop*: cint
    skipbottom*: cint
    lowres*: cint
    codecdescriptor*: ptr structavcodecdescriptor_520094238
    subcharenc*: cstring
    subcharencmode*: cint
    subtitleheadersize*: cint
    subtitleheader*: ptr uint8
    dumpseparator*: ptr uint8
    codecwhitelist*: cstring
    codedsidedata*: ptr Avpacketsidedata_520094226
    nbcodedsidedata*: cint
    exportsidedata*: cint
    maxpixels*: int64
    applycropping*: cint
    discarddamagedpercentage*: cint
    maxsamples*: int64
    getencodebuffer*: proc (a0: ptr structavcodeccontext_520094250;
                            a1: ptr Avpacket_520094230; a2: cint): cint {.cdecl.}
    framenum*: int64
    sidedatapreferpacket*: ptr cint
    nbsidedatapreferpacket*: cuint
    decodedsidedata*: ptr ptr Avframesidedata_520094158
    nbdecodedsidedata*: cint

  structavhwaccel_520094251 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2088:16
    typefield*: enumavmediatype_520094081
    id*: enumavcodecid_520094190
    pixfmt*: enumavpixelformat_520094105
    capabilities*: cint

  Avcodeccontext_520094253 = structavcodeccontext_520094250 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2078:3
  Avhwaccel_520094255 = structavhwaccel_520094252 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2122:3
  structavsubtitlerect_520094259 {.pure, inheritable, bycopy.} = object
    x*: cint                 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2200:16
    y*: cint
    w*: cint
    h*: cint
    nbcolors*: cint
    data*: array[4'i64, ptr uint8]
    linesize*: array[4'i64, cint]
    flags*: cint
    typefield*: enumavsubtitletype_520094258
    text*: cstring
    ass*: cstring

  Avsubtitlerect_520094261 = structavsubtitlerect_520094260 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2225:3
  structavsubtitle_520094263 {.pure, inheritable, bycopy.} = object
    format*: uint16          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2227:16
    startdisplaytime*: uint32
    enddisplaytime*: uint32
    numrects*: cuint
    rects*: ptr ptr Avsubtitlerect_520094262
    pts*: int64

  Avsubtitle_520094265 = structavsubtitle_520094264 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2234:3
  structavcodecparsercontext_520094269 {.pure, inheritable, bycopy.} = object
    privdata*: pointer       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2707:16
    parser*: ptr structavcodecparser_520094272
    frameoffset*: int64
    curoffset*: int64
    nextframeoffset*: int64
    picttype*: cint
    repeatpict*: cint
    pts*: int64
    dts*: int64
    lastpts*: int64
    lastdts*: int64
    fetchtimestamp*: cint
    curframestartindex*: cint
    curframeoffset*: array[4'i64, int64]
    curframepts*: array[4'i64, int64]
    curframedts*: array[4'i64, int64]
    flags*: cint
    offset*: int64
    curframeend*: array[4'i64, int64]
    keyframe*: cint
    dtssyncpoint*: cint
    dtsrefdtsdelta*: cint
    ptsdtsdelta*: cint
    curframepos*: array[4'i64, int64]
    pos*: int64
    lastpos*: int64
    duration*: cint
    fieldorder*: enumavfieldorder_520094204
    picturestructure*: enumavpicturestructure_520094268
    outputpicturenumber*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    format*: cint

  structavcodecparser_520094271 {.pure, inheritable, bycopy.} = object
    codecids*: array[7'i64, cint] ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2866:16
    privdatasize*: cint
    parserinit*: proc (a0: ptr Avcodecparsercontext_520094274): cint {.cdecl.}
    parserparse*: proc (a0: ptr Avcodecparsercontext_520094274;
                        a1: ptr Avcodeccontext_520094254; a2: ptr ptr uint8;
                        a3: ptr cint; a4: ptr uint8; a5: cint): cint {.cdecl.}
    parserclose*: proc (a0: ptr Avcodecparsercontext_520094274): void {.cdecl.}
    split*: proc (a0: ptr Avcodeccontext_520094254; a1: ptr uint8; a2: cint): cint {.
        cdecl.}

  Avcodecparsercontext_520094273 = structavcodecparsercontext_520094270 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2864:3
  Avcodecparser_520094275 = structavcodecparser_520094272 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2878:3
  structavregionofinterest_520094166 = (when declared(structavregionofinterest):
    structavregionofinterest
   else:
    structavregionofinterest_520094165)
  Avhwdevicecontext_520094178 = (when declared(Avhwdevicecontext):
    Avhwdevicecontext
   else:
    Avhwdevicecontext_520094177)
  Avcodecdescriptor_520094240 = (when declared(Avcodecdescriptor):
    Avcodecdescriptor
   else:
    Avcodecdescriptor_520094239)
  structrcoverride_520094246 = (when declared(structrcoverride):
    structrcoverride
   else:
    structrcoverride_520094245)
  enumavsidedataprops_520094160 = (when declared(enumavsidedataprops):
    enumavsidedataprops
   else:
    enumavsidedataprops_520094159)
  Avcpbproperties_520094216 = (when declared(Avcpbproperties):
    Avcpbproperties
   else:
    Avcpbproperties_520094215)
  Avcodec_520094198 = (when declared(Avcodec):
    Avcodec
   else:
    Avcodec_520094197)
  enumavframesidedatatype_520094152 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520094151)
  structavframesidedata_520094156 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520094155)
  enumavcolorrange_520094113 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094112)
  structavpacket_520094228 = (when declared(structavpacket):
    structavpacket
   else:
    structavpacket_520094227)
  structavchannelcustom_520094131 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094130)
  Avdictionaryentry_520094148 = (when declared(Avdictionaryentry):
    Avdictionaryentry
   else:
    Avdictionaryentry_520094147)
  enumavchromalocation_520094115 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094114)
  Avbufferref_520094121 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520094120)
  structavproducerreferencetime_520094218 = (when declared(
      structavproducerreferencetime):
    structavproducerreferencetime
   else:
    structavproducerreferencetime_520094217)
  structavcpbproperties_520094214 = (when declared(structavcpbproperties):
    structavcpbproperties
   else:
    structavcpbproperties_520094213)
  structavpacketsidedata_520094224 = (when declared(structavpacketsidedata):
    structavpacketsidedata
   else:
    structavpacketsidedata_520094223)
  enumavclasscategory_520094095 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094094)
  Avframesidedata_520094158 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520094157)
  structavcodec_520094196 = (when declared(structavcodec):
    structavcodec
   else:
    structavcodec_520094195)
  Avcodechwconfig_520094202 = (when declared(Avcodechwconfig):
    Avcodechwconfig
   else:
    Avcodechwconfig_520094201)
  Avproducerreferencetime_520094220 = (when declared(Avproducerreferencetime):
    Avproducerreferencetime
   else:
    Avproducerreferencetime_520094219)
  Avsubtitlerect_520094262 = (when declared(Avsubtitlerect):
    Avsubtitlerect
   else:
    Avsubtitlerect_520094261)
  enumavhwframetransferdirection_520094184 = (when declared(
      enumavhwframetransferdirection):
    enumavhwframetransferdirection
   else:
    enumavhwframetransferdirection_520094183)
  enumavaudioservicetype_520094208 = (when declared(enumavaudioservicetype):
    enumavaudioservicetype
   else:
    enumavaudioservicetype_520094207)
  enumavmatrixencoding_520094129 = (when declared(enumavmatrixencoding):
    enumavmatrixencoding
   else:
    enumavmatrixencoding_520094128)
  Avpacket_520094230 = (when declared(Avpacket):
    Avpacket
   else:
    Avpacket_520094229)
  valist_520094103 = (when declared(valist):
    valist
   else:
    valist_520094102)
  unionavintfloat64_520094091 = (when declared(unionavintfloat64):
    unionavintfloat64
   else:
    unionavintfloat64_520094090)
  enumavfieldorder_520094204 = (when declared(enumavfieldorder):
    enumavfieldorder
   else:
    enumavfieldorder_520094203)
  Avprofile_520094194 = (when declared(Avprofile):
    Avprofile
   else:
    Avprofile_520094193)
  Avchannelcustom_520094133 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094132)
  enumavpacketsidedatatype_520094222 = (when declared(enumavpacketsidedatatype):
    enumavpacketsidedatatype
   else:
    enumavpacketsidedatatype_520094221)
  structavchannellayout_520094142 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094141)
  structavrational_520094085 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094084)
  enumavhwdevicetype_520094174 = (when declared(enumavhwdevicetype):
    enumavhwdevicetype
   else:
    enumavhwdevicetype_520094173)
  structavhwaccel_520094252 = (when declared(structavhwaccel):
    structavhwaccel
   else:
    structavhwaccel_520094251)
  structavcodecparser_520094272 = (when declared(structavcodecparser):
    structavcodecparser
   else:
    structavcodecparser_520094271)
  unionavintfloat32_520094089 = (when declared(unionavintfloat32):
    unionavintfloat32
   else:
    unionavintfloat32_520094088)
  enumavcolortransfercharacteristic_520094109 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094108)
  Rcoverride_520094248 = (when declared(Rcoverride):
    Rcoverride
   else:
    Rcoverride_520094247)
  enumavsidedataparamchangeflags_520094236 = (when declared(
      enumavsidedataparamchangeflags):
    enumavsidedataparamchangeflags
   else:
    enumavsidedataparamchangeflags_520094235)
  structavsubtitle_520094264 = (when declared(structavsubtitle):
    structavsubtitle
   else:
    structavsubtitle_520094263)
  enumavchannel_520094125 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094124)
  enumavpixelformat_520094105 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094104)
  enumavpicturestructure_520094268 = (when declared(enumavpicturestructure):
    enumavpicturestructure
   else:
    enumavpicturestructure_520094267)
  structavprofile_520094192 = (when declared(structavprofile):
    structavprofile
   else:
    structavprofile_520094191)
  enumavcolorspace_520094111 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094110)
  Avhwframesconstraints_520094188 = (when declared(Avhwframesconstraints):
    Avhwframesconstraints
   else:
    Avhwframesconstraints_520094187)
  Avdictionary_520094150 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094149)
  structavclass_520094099 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094098)
  enumavchannelorder_520094127 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094126)
  enumavpicturetype_520094083 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094082)
  enumavcolorprimaries_520094107 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094106)
  Avcodeccontext_520094254 = (when declared(Avcodeccontext):
    Avcodeccontext
   else:
    Avcodeccontext_520094253)
  enumavrounding_520094093 = (when declared(enumavrounding):
    enumavrounding
   else:
    enumavrounding_520094092)
  enumavsubtitletype_520094258 = (when declared(enumavsubtitletype):
    enumavsubtitletype
   else:
    enumavsubtitletype_520094257)
  Avpacketlist_520094234 = (when declared(Avpacketlist):
    Avpacketlist
   else:
    Avpacketlist_520094233)
  Avpacketsidedata_520094226 = (when declared(Avpacketsidedata):
    Avpacketsidedata
   else:
    Avpacketsidedata_520094225)
  enumavsampleformat_520094079 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094078)
  structavsidedatadescriptor_520094162 = (when declared(
      structavsidedatadescriptor):
    structavsidedatadescriptor
   else:
    structavsidedatadescriptor_520094161)
  Avclasscategory_520094097 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094096)
  structavhwdevicecontext_520094176 = (when declared(structavhwdevicecontext):
    structavhwdevicecontext
   else:
    structavhwdevicecontext_520094175)
  Avclass_520094101 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094100)
  structavhwframescontext_520094180 = (when declared(structavhwframescontext):
    structavhwframescontext
   else:
    structavhwframescontext_520094179)
  structavdictionaryentry_520094146 = (when declared(structavdictionaryentry):
    structavdictionaryentry
   else:
    structavdictionaryentry_520094145)
  Avsubtitle_520094266 = (when declared(Avsubtitle):
    Avsubtitle
   else:
    Avsubtitle_520094265)
  enumavcodecid_520094190 = (when declared(enumavcodecid):
    enumavcodecid
   else:
    enumavcodecid_520094189)
  Avcodecparser_520094276 = (when declared(Avcodecparser):
    Avcodecparser
   else:
    Avcodecparser_520094275)
  structavhwframesconstraints_520094186 = (when declared(
      structavhwframesconstraints):
    structavhwframesconstraints
   else:
    structavhwframesconstraints_520094185)
  Avhwframescontext_520094182 = (when declared(Avhwframescontext):
    Avhwframescontext
   else:
    Avhwframescontext_520094181)
  Avbufferpool_520094123 = (when declared(Avbufferpool):
    Avbufferpool
   else:
    Avbufferpool_520094122)
  Avrational_520094087 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094086)
  Avhwaccel_520094256 = (when declared(Avhwaccel):
    Avhwaccel
   else:
    Avhwaccel_520094255)
  Avcodecparameters_520094244 = (when declared(Avcodecparameters):
    Avcodecparameters
   else:
    Avcodecparameters_520094243)
  structavsubtitlerect_520094260 = (when declared(structavsubtitlerect):
    structavsubtitlerect
   else:
    structavsubtitlerect_520094259)
  Avframe_520094172 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520094171)
  structavpanscan_520094210 = (when declared(structavpanscan):
    structavpanscan
   else:
    structavpanscan_520094209)
  structavbufferref_520094119 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520094118)
  enumavmediatype_520094081 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094080)
  structavpacketlist_520094232 = (when declared(structavpacketlist):
    structavpacketlist
   else:
    structavpacketlist_520094231)
  Avbuffer_520094117 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520094116)
  Avcodecparsercontext_520094274 = (when declared(Avcodecparsercontext):
    Avcodecparsercontext
   else:
    Avcodecparsercontext_520094273)
  Avchannellayout_520094144 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094143)
  structavcodecparsercontext_520094270 = (when declared(
      structavcodecparsercontext):
    structavcodecparsercontext
   else:
    structavcodecparsercontext_520094269)
  Avregionofinterest_520094168 = (when declared(Avregionofinterest):
    Avregionofinterest
   else:
    Avregionofinterest_520094167)
  structavcodechwconfig_520094200 = (when declared(structavcodechwconfig):
    structavcodechwconfig
   else:
    structavcodechwconfig_520094199)
  Avpanscan_520094212 = (when declared(Avpanscan):
    Avpanscan
   else:
    Avpanscan_520094211)
  structavcodecdescriptor_520094238 = (when declared(structavcodecdescriptor):
    structavcodecdescriptor
   else:
    structavcodecdescriptor_520094237)
  enumavdiscard_520094206 = (when declared(enumavdiscard):
    enumavdiscard
   else:
    enumavdiscard_520094205)
  enumavactiveformatdescription_520094154 = (when declared(
      enumavactiveformatdescription):
    enumavactiveformatdescription
   else:
    enumavactiveformatdescription_520094153)
  Avsidedatadescriptor_520094164 = (when declared(Avsidedatadescriptor):
    Avsidedatadescriptor
   else:
    Avsidedatadescriptor_520094163)
  structavcodecparameters_520094242 = (when declared(structavcodecparameters):
    structavcodecparameters
   else:
    structavcodecparameters_520094241)
  structavcodeccontext_520094250 = (when declared(structavcodeccontext):
    structavcodeccontext
   else:
    structavcodeccontext_520094249)
  structavframe_520094170 = (when declared(structavframe):
    structavframe
   else:
    structavframe_520094169)
when not declared(structavregionofinterest):
  type
    structavregionofinterest* = structavregionofinterest_520094165
else:
  static :
    hint("Declaration of " & "structavregionofinterest" &
        " already exists, not redeclaring")
when not declared(Avhwdevicecontext):
  type
    Avhwdevicecontext* = Avhwdevicecontext_520094177
else:
  static :
    hint("Declaration of " & "Avhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(Avcodecdescriptor):
  type
    Avcodecdescriptor* = Avcodecdescriptor_520094239
else:
  static :
    hint("Declaration of " & "Avcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(structrcoverride):
  type
    structrcoverride* = structrcoverride_520094245
else:
  static :
    hint("Declaration of " & "structrcoverride" &
        " already exists, not redeclaring")
when not declared(Avcpbproperties):
  type
    Avcpbproperties* = Avcpbproperties_520094215
else:
  static :
    hint("Declaration of " & "Avcpbproperties" &
        " already exists, not redeclaring")
when not declared(Avcodec):
  type
    Avcodec* = Avcodec_520094197
else:
  static :
    hint("Declaration of " & "Avcodec" & " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520094155
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
        " already exists, not redeclaring")
when not declared(structavpacket):
  type
    structavpacket* = structavpacket_520094227
else:
  static :
    hint("Declaration of " & "structavpacket" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094130
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avdictionaryentry):
  type
    Avdictionaryentry* = Avdictionaryentry_520094147
else:
  static :
    hint("Declaration of " & "Avdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520094120
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(structavproducerreferencetime):
  type
    structavproducerreferencetime* = structavproducerreferencetime_520094217
else:
  static :
    hint("Declaration of " & "structavproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(structavcpbproperties):
  type
    structavcpbproperties* = structavcpbproperties_520094213
else:
  static :
    hint("Declaration of " & "structavcpbproperties" &
        " already exists, not redeclaring")
when not declared(structavpacketsidedata):
  type
    structavpacketsidedata* = structavpacketsidedata_520094223
else:
  static :
    hint("Declaration of " & "structavpacketsidedata" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520094157
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(structavcodec):
  type
    structavcodec* = structavcodec_520094195
else:
  static :
    hint("Declaration of " & "structavcodec" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfig):
  type
    Avcodechwconfig* = Avcodechwconfig_520094201
else:
  static :
    hint("Declaration of " & "Avcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avproducerreferencetime):
  type
    Avproducerreferencetime* = Avproducerreferencetime_520094219
else:
  static :
    hint("Declaration of " & "Avproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Avsubtitlerect):
  type
    Avsubtitlerect* = Avsubtitlerect_520094261
else:
  static :
    hint("Declaration of " & "Avsubtitlerect" &
        " already exists, not redeclaring")
when not declared(Avpacket):
  type
    Avpacket* = Avpacket_520094229
else:
  static :
    hint("Declaration of " & "Avpacket" & " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094102
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(unionavintfloat64):
  type
    unionavintfloat64* = unionavintfloat64_520094090
else:
  static :
    hint("Declaration of " & "unionavintfloat64" &
        " already exists, not redeclaring")
when not declared(Avprofile):
  type
    Avprofile* = Avprofile_520094193
else:
  static :
    hint("Declaration of " & "Avprofile" & " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094132
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094141
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094084
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(structavhwaccel):
  type
    structavhwaccel* = structavhwaccel_520094251
else:
  static :
    hint("Declaration of " & "structavhwaccel" &
        " already exists, not redeclaring")
when not declared(structavcodecparser):
  type
    structavcodecparser* = structavcodecparser_520094271
else:
  static :
    hint("Declaration of " & "structavcodecparser" &
        " already exists, not redeclaring")
when not declared(unionavintfloat32):
  type
    unionavintfloat32* = unionavintfloat32_520094088
else:
  static :
    hint("Declaration of " & "unionavintfloat32" &
        " already exists, not redeclaring")
when not declared(Rcoverride):
  type
    Rcoverride* = Rcoverride_520094247
else:
  static :
    hint("Declaration of " & "Rcoverride" & " already exists, not redeclaring")
when not declared(structavsubtitle):
  type
    structavsubtitle* = structavsubtitle_520094263
else:
  static :
    hint("Declaration of " & "structavsubtitle" &
        " already exists, not redeclaring")
when not declared(structavprofile):
  type
    structavprofile* = structavprofile_520094191
else:
  static :
    hint("Declaration of " & "structavprofile" &
        " already exists, not redeclaring")
when not declared(Avhwframesconstraints):
  type
    Avhwframesconstraints* = Avhwframesconstraints_520094187
else:
  static :
    hint("Declaration of " & "Avhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094149
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
when not declared(structavclass):
  type
    structavclass* = structavclass_520094098
else:
  static :
    hint("Declaration of " & "structavclass" &
        " already exists, not redeclaring")
when not declared(Avcodeccontext):
  type
    Avcodeccontext* = Avcodeccontext_520094253
else:
  static :
    hint("Declaration of " & "Avcodeccontext" &
        " already exists, not redeclaring")
when not declared(Avpacketlist):
  type
    Avpacketlist* = Avpacketlist_520094233
else:
  static :
    hint("Declaration of " & "Avpacketlist" & " already exists, not redeclaring")
when not declared(Avpacketsidedata):
  type
    Avpacketsidedata* = Avpacketsidedata_520094225
else:
  static :
    hint("Declaration of " & "Avpacketsidedata" &
        " already exists, not redeclaring")
when not declared(structavsidedatadescriptor):
  type
    structavsidedatadescriptor* = structavsidedatadescriptor_520094161
else:
  static :
    hint("Declaration of " & "structavsidedatadescriptor" &
        " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520094096
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(structavhwdevicecontext):
  type
    structavhwdevicecontext* = structavhwdevicecontext_520094175
else:
  static :
    hint("Declaration of " & "structavhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094100
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(structavhwframescontext):
  type
    structavhwframescontext* = structavhwframescontext_520094179
else:
  static :
    hint("Declaration of " & "structavhwframescontext" &
        " already exists, not redeclaring")
when not declared(structavdictionaryentry):
  type
    structavdictionaryentry* = structavdictionaryentry_520094145
else:
  static :
    hint("Declaration of " & "structavdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Avsubtitle):
  type
    Avsubtitle* = Avsubtitle_520094265
else:
  static :
    hint("Declaration of " & "Avsubtitle" & " already exists, not redeclaring")
when not declared(Avcodecparser):
  type
    Avcodecparser* = Avcodecparser_520094275
else:
  static :
    hint("Declaration of " & "Avcodecparser" &
        " already exists, not redeclaring")
when not declared(structavhwframesconstraints):
  type
    structavhwframesconstraints* = structavhwframesconstraints_520094185
else:
  static :
    hint("Declaration of " & "structavhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avhwframescontext):
  type
    Avhwframescontext* = Avhwframescontext_520094181
else:
  static :
    hint("Declaration of " & "Avhwframescontext" &
        " already exists, not redeclaring")
when not declared(Avbufferpool):
  type
    Avbufferpool* = Avbufferpool_520094122
else:
  static :
    hint("Declaration of " & "Avbufferpool" & " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094086
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(Avhwaccel):
  type
    Avhwaccel* = Avhwaccel_520094255
else:
  static :
    hint("Declaration of " & "Avhwaccel" & " already exists, not redeclaring")
when not declared(Avcodecparameters):
  type
    Avcodecparameters* = Avcodecparameters_520094243
else:
  static :
    hint("Declaration of " & "Avcodecparameters" &
        " already exists, not redeclaring")
when not declared(structavsubtitlerect):
  type
    structavsubtitlerect* = structavsubtitlerect_520094259
else:
  static :
    hint("Declaration of " & "structavsubtitlerect" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520094171
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavpanscan):
  type
    structavpanscan* = structavpanscan_520094209
else:
  static :
    hint("Declaration of " & "structavpanscan" &
        " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520094118
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(structavpacketlist):
  type
    structavpacketlist* = structavpacketlist_520094231
else:
  static :
    hint("Declaration of " & "structavpacketlist" &
        " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520094116
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(Avcodecparsercontext):
  type
    Avcodecparsercontext* = Avcodecparsercontext_520094273
else:
  static :
    hint("Declaration of " & "Avcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094143
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(structavcodecparsercontext):
  type
    structavcodecparsercontext* = structavcodecparsercontext_520094269
else:
  static :
    hint("Declaration of " & "structavcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(Avregionofinterest):
  type
    Avregionofinterest* = Avregionofinterest_520094167
else:
  static :
    hint("Declaration of " & "Avregionofinterest" &
        " already exists, not redeclaring")
when not declared(structavcodechwconfig):
  type
    structavcodechwconfig* = structavcodechwconfig_520094199
else:
  static :
    hint("Declaration of " & "structavcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avpanscan):
  type
    Avpanscan* = Avpanscan_520094211
else:
  static :
    hint("Declaration of " & "Avpanscan" & " already exists, not redeclaring")
when not declared(structavcodecdescriptor):
  type
    structavcodecdescriptor* = structavcodecdescriptor_520094237
else:
  static :
    hint("Declaration of " & "structavcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(Avsidedatadescriptor):
  type
    Avsidedatadescriptor* = Avsidedatadescriptor_520094163
else:
  static :
    hint("Declaration of " & "Avsidedatadescriptor" &
        " already exists, not redeclaring")
when not declared(structavcodecparameters):
  type
    structavcodecparameters* = structavcodecparameters_520094241
else:
  static :
    hint("Declaration of " & "structavcodecparameters" &
        " already exists, not redeclaring")
when not declared(structavcodeccontext):
  type
    structavcodeccontext* = structavcodeccontext_520094249
else:
  static :
    hint("Declaration of " & "structavcodeccontext" &
        " already exists, not redeclaring")
when not declared(structavframe):
  type
    structavframe* = structavframe_520094169
else:
  static :
    hint("Declaration of " & "structavframe" &
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
when not declared(Libavcodecversionminor):
  when 5 is static:
    const
      Libavcodecversionminor* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version.h:32:9
  else:
    let Libavcodecversionminor* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionminor" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmicro):
  when 103 is static:
    const
      Libavcodecversionmicro* = 103 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version.h:33:9
  else:
    let Libavcodecversionmicro* = 103 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/version.h:33:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmicro" &
        " already exists, not redeclaring")
when not declared(Avinputbufferminsize):
  when 16384 is static:
    const
      Avinputbufferminsize* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:198:9
  else:
    let Avinputbufferminsize* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:198:9
else:
  static :
    hint("Declaration of " & "Avinputbufferminsize" &
        " already exists, not redeclaring")
when not declared(Sliceflagcodedorder):
  when 1 is static:
    const
      Sliceflagcodedorder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:731:9
  else:
    let Sliceflagcodedorder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:731:9
else:
  static :
    hint("Declaration of " & "Sliceflagcodedorder" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowfield):
  when 2 is static:
    const
      Sliceflagallowfield* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:732:9
  else:
    let Sliceflagallowfield* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:732:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowfield" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowplane):
  when 4 is static:
    const
      Sliceflagallowplane* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:733:9
  else:
    let Sliceflagallowplane* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:733:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowplane" &
        " already exists, not redeclaring")
when not declared(Ffcmpsad):
  when 0 is static:
    const
      Ffcmpsad* = 0          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:895:9
  else:
    let Ffcmpsad* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:895:9
else:
  static :
    hint("Declaration of " & "Ffcmpsad" & " already exists, not redeclaring")
when not declared(Ffcmpsse):
  when 1 is static:
    const
      Ffcmpsse* = 1          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:896:9
  else:
    let Ffcmpsse* = 1        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:896:9
else:
  static :
    hint("Declaration of " & "Ffcmpsse" & " already exists, not redeclaring")
when not declared(Ffcmpsatd):
  when 2 is static:
    const
      Ffcmpsatd* = 2         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:897:9
  else:
    let Ffcmpsatd* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:897:9
else:
  static :
    hint("Declaration of " & "Ffcmpsatd" & " already exists, not redeclaring")
when not declared(Ffcmpdct):
  when 3 is static:
    const
      Ffcmpdct* = 3          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:898:9
  else:
    let Ffcmpdct* = 3        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:898:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct" & " already exists, not redeclaring")
when not declared(Ffcmppsnr):
  when 4 is static:
    const
      Ffcmppsnr* = 4         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:899:9
  else:
    let Ffcmppsnr* = 4       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:899:9
else:
  static :
    hint("Declaration of " & "Ffcmppsnr" & " already exists, not redeclaring")
when not declared(Ffcmpbit):
  when 5 is static:
    const
      Ffcmpbit* = 5          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:900:9
  else:
    let Ffcmpbit* = 5        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:900:9
else:
  static :
    hint("Declaration of " & "Ffcmpbit" & " already exists, not redeclaring")
when not declared(Ffcmprd):
  when 6 is static:
    const
      Ffcmprd* = 6           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:901:9
  else:
    let Ffcmprd* = 6         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:901:9
else:
  static :
    hint("Declaration of " & "Ffcmprd" & " already exists, not redeclaring")
when not declared(Ffcmpzero):
  when 7 is static:
    const
      Ffcmpzero* = 7         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:902:9
  else:
    let Ffcmpzero* = 7       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:902:9
else:
  static :
    hint("Declaration of " & "Ffcmpzero" & " already exists, not redeclaring")
when not declared(Ffcmpvsad):
  when 8 is static:
    const
      Ffcmpvsad* = 8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:903:9
  else:
    let Ffcmpvsad* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:903:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsad" & " already exists, not redeclaring")
when not declared(Ffcmpvsse):
  when 9 is static:
    const
      Ffcmpvsse* = 9         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:904:9
  else:
    let Ffcmpvsse* = 9       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:904:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsse" & " already exists, not redeclaring")
when not declared(Ffcmpnsse):
  when 10 is static:
    const
      Ffcmpnsse* = 10        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:905:9
  else:
    let Ffcmpnsse* = 10      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:905:9
else:
  static :
    hint("Declaration of " & "Ffcmpnsse" & " already exists, not redeclaring")
when not declared(Ffcmpw53):
  when 11 is static:
    const
      Ffcmpw53* = 11         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:906:9
  else:
    let Ffcmpw53* = 11       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:906:9
else:
  static :
    hint("Declaration of " & "Ffcmpw53" & " already exists, not redeclaring")
when not declared(Ffcmpw97):
  when 12 is static:
    const
      Ffcmpw97* = 12         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:907:9
  else:
    let Ffcmpw97* = 12       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:907:9
else:
  static :
    hint("Declaration of " & "Ffcmpw97" & " already exists, not redeclaring")
when not declared(Ffcmpdctmax):
  when 13 is static:
    const
      Ffcmpdctmax* = 13      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:908:9
  else:
    let Ffcmpdctmax* = 13    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:908:9
else:
  static :
    hint("Declaration of " & "Ffcmpdctmax" & " already exists, not redeclaring")
when not declared(Ffcmpdct264):
  when 14 is static:
    const
      Ffcmpdct264* = 14      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:909:9
  else:
    let Ffcmpdct264* = 14    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:909:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct264" & " already exists, not redeclaring")
when not declared(Ffcmpmediansad):
  when 15 is static:
    const
      Ffcmpmediansad* = 15   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:910:9
  else:
    let Ffcmpmediansad* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:910:9
else:
  static :
    hint("Declaration of " & "Ffcmpmediansad" &
        " already exists, not redeclaring")
when not declared(Ffcmpchroma):
  when 256 is static:
    const
      Ffcmpchroma* = 256     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:911:9
  else:
    let Ffcmpchroma* = 256   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:911:9
else:
  static :
    hint("Declaration of " & "Ffcmpchroma" & " already exists, not redeclaring")
when not declared(Ffmbdecisionsimple):
  when 0 is static:
    const
      Ffmbdecisionsimple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:963:9
  else:
    let Ffmbdecisionsimple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:963:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionsimple" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionbits):
  when 1 is static:
    const
      Ffmbdecisionbits* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:964:9
  else:
    let Ffmbdecisionbits* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:964:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionbits" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionrd):
  when 2 is static:
    const
      Ffmbdecisionrd* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:965:9
  else:
    let Ffmbdecisionrd* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:965:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionrd" &
        " already exists, not redeclaring")
when not declared(Ffcompressiondefault):
  when -1 is static:
    const
      Ffcompressiondefault* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1246:9
  else:
    let Ffcompressiondefault* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1246:9
else:
  static :
    hint("Declaration of " & "Ffcompressiondefault" &
        " already exists, not redeclaring")
when not declared(Ffbugautodetect):
  when 1 is static:
    const
      Ffbugautodetect* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1350:9
  else:
    let Ffbugautodetect* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1350:9
else:
  static :
    hint("Declaration of " & "Ffbugautodetect" &
        " already exists, not redeclaring")
when not declared(Ffbugxvidilace):
  when 4 is static:
    const
      Ffbugxvidilace* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1351:9
  else:
    let Ffbugxvidilace* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1351:9
else:
  static :
    hint("Declaration of " & "Ffbugxvidilace" &
        " already exists, not redeclaring")
when not declared(Ffbugump4):
  when 8 is static:
    const
      Ffbugump4* = 8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1352:9
  else:
    let Ffbugump4* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1352:9
else:
  static :
    hint("Declaration of " & "Ffbugump4" & " already exists, not redeclaring")
when not declared(Ffbugnopadding):
  when 16 is static:
    const
      Ffbugnopadding* = 16   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1353:9
  else:
    let Ffbugnopadding* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1353:9
else:
  static :
    hint("Declaration of " & "Ffbugnopadding" &
        " already exists, not redeclaring")
when not declared(Ffbugamv):
  when 32 is static:
    const
      Ffbugamv* = 32         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1354:9
  else:
    let Ffbugamv* = 32       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1354:9
else:
  static :
    hint("Declaration of " & "Ffbugamv" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma):
  when 64 is static:
    const
      Ffbugqpelchroma* = 64  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1355:9
  else:
    let Ffbugqpelchroma* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1355:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugstdqpel):
  when 128 is static:
    const
      Ffbugstdqpel* = 128    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1356:9
  else:
    let Ffbugstdqpel* = 128  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1356:9
else:
  static :
    hint("Declaration of " & "Ffbugstdqpel" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma2):
  when 256 is static:
    const
      Ffbugqpelchroma2* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1357:9
  else:
    let Ffbugqpelchroma2* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1357:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma2" &
        " already exists, not redeclaring")
when not declared(Ffbugdirectblocksize):
  when 512 is static:
    const
      Ffbugdirectblocksize* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1358:9
  else:
    let Ffbugdirectblocksize* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1358:9
else:
  static :
    hint("Declaration of " & "Ffbugdirectblocksize" &
        " already exists, not redeclaring")
when not declared(Ffbugedge):
  when 1024 is static:
    const
      Ffbugedge* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1359:9
  else:
    let Ffbugedge* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1359:9
else:
  static :
    hint("Declaration of " & "Ffbugedge" & " already exists, not redeclaring")
when not declared(Ffbughpelchroma):
  when 2048 is static:
    const
      Ffbughpelchroma* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1360:9
  else:
    let Ffbughpelchroma* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1360:9
else:
  static :
    hint("Declaration of " & "Ffbughpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugdcclip):
  when 4096 is static:
    const
      Ffbugdcclip* = 4096    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1361:9
  else:
    let Ffbugdcclip* = 4096  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1361:9
else:
  static :
    hint("Declaration of " & "Ffbugdcclip" & " already exists, not redeclaring")
when not declared(Ffbugms):
  when 8192 is static:
    const
      Ffbugms* = 8192        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1362:9
  else:
    let Ffbugms* = 8192      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1362:9
else:
  static :
    hint("Declaration of " & "Ffbugms" & " already exists, not redeclaring")
when not declared(Ffbugtruncated):
  when 16384 is static:
    const
      Ffbugtruncated* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1363:9
  else:
    let Ffbugtruncated* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1363:9
else:
  static :
    hint("Declaration of " & "Ffbugtruncated" &
        " already exists, not redeclaring")
when not declared(Ffbugiedge):
  when 32768 is static:
    const
      Ffbugiedge* = 32768    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1364:9
  else:
    let Ffbugiedge* = 32768  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1364:9
else:
  static :
    hint("Declaration of " & "Ffbugiedge" & " already exists, not redeclaring")
when not declared(Ffecguessmvs):
  when 1 is static:
    const
      Ffecguessmvs* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1387:9
  else:
    let Ffecguessmvs* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1387:9
else:
  static :
    hint("Declaration of " & "Ffecguessmvs" & " already exists, not redeclaring")
when not declared(Ffecdeblock):
  when 2 is static:
    const
      Ffecdeblock* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1388:9
  else:
    let Ffecdeblock* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1388:9
else:
  static :
    hint("Declaration of " & "Ffecdeblock" & " already exists, not redeclaring")
when not declared(Ffecfavorinter):
  when 256 is static:
    const
      Ffecfavorinter* = 256  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1389:9
  else:
    let Ffecfavorinter* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1389:9
else:
  static :
    hint("Declaration of " & "Ffecfavorinter" &
        " already exists, not redeclaring")
when not declared(Ffdebugpictinfo):
  when 1 is static:
    const
      Ffdebugpictinfo* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1397:9
  else:
    let Ffdebugpictinfo* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1397:9
else:
  static :
    hint("Declaration of " & "Ffdebugpictinfo" &
        " already exists, not redeclaring")
when not declared(Ffdebugrc):
  when 2 is static:
    const
      Ffdebugrc* = 2         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1398:9
  else:
    let Ffdebugrc* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1398:9
else:
  static :
    hint("Declaration of " & "Ffdebugrc" & " already exists, not redeclaring")
when not declared(Ffdebugbitstream):
  when 4 is static:
    const
      Ffdebugbitstream* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1399:9
  else:
    let Ffdebugbitstream* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1399:9
else:
  static :
    hint("Declaration of " & "Ffdebugbitstream" &
        " already exists, not redeclaring")
when not declared(Ffdebugmbtype):
  when 8 is static:
    const
      Ffdebugmbtype* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1400:9
  else:
    let Ffdebugmbtype* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1400:9
else:
  static :
    hint("Declaration of " & "Ffdebugmbtype" &
        " already exists, not redeclaring")
when not declared(Ffdebugqp):
  when 16 is static:
    const
      Ffdebugqp* = 16        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1401:9
  else:
    let Ffdebugqp* = 16      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1401:9
else:
  static :
    hint("Declaration of " & "Ffdebugqp" & " already exists, not redeclaring")
when not declared(Ffdebugdctcoeff):
  when 64 is static:
    const
      Ffdebugdctcoeff* = 64  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1402:9
  else:
    let Ffdebugdctcoeff* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1402:9
else:
  static :
    hint("Declaration of " & "Ffdebugdctcoeff" &
        " already exists, not redeclaring")
when not declared(Ffdebugskip):
  when 128 is static:
    const
      Ffdebugskip* = 128     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1403:9
  else:
    let Ffdebugskip* = 128   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1403:9
else:
  static :
    hint("Declaration of " & "Ffdebugskip" & " already exists, not redeclaring")
when not declared(Ffdebugstartcode):
  when 256 is static:
    const
      Ffdebugstartcode* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1404:9
  else:
    let Ffdebugstartcode* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1404:9
else:
  static :
    hint("Declaration of " & "Ffdebugstartcode" &
        " already exists, not redeclaring")
when not declared(Ffdebuger):
  when 1024 is static:
    const
      Ffdebuger* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1405:9
  else:
    let Ffdebuger* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1405:9
else:
  static :
    hint("Declaration of " & "Ffdebuger" & " already exists, not redeclaring")
when not declared(Ffdebugmmco):
  when 2048 is static:
    const
      Ffdebugmmco* = 2048    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1406:9
  else:
    let Ffdebugmmco* = 2048  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1406:9
else:
  static :
    hint("Declaration of " & "Ffdebugmmco" & " already exists, not redeclaring")
when not declared(Ffdebugbugs):
  when 4096 is static:
    const
      Ffdebugbugs* = 4096    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1407:9
  else:
    let Ffdebugbugs* = 4096  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1407:9
else:
  static :
    hint("Declaration of " & "Ffdebugbugs" & " already exists, not redeclaring")
when not declared(Ffdebugbuffers):
  when 32768 is static:
    const
      Ffdebugbuffers* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1408:9
  else:
    let Ffdebugbuffers* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1408:9
else:
  static :
    hint("Declaration of " & "Ffdebugbuffers" &
        " already exists, not redeclaring")
when not declared(Ffdebugthreads):
  when 65536 is static:
    const
      Ffdebugthreads* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1409:9
  else:
    let Ffdebugthreads* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1409:9
else:
  static :
    hint("Declaration of " & "Ffdebugthreads" &
        " already exists, not redeclaring")
when not declared(Ffdebuggreenmd):
  when 8388608 is static:
    const
      Ffdebuggreenmd* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1410:9
  else:
    let Ffdebuggreenmd* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1410:9
else:
  static :
    hint("Declaration of " & "Ffdebuggreenmd" &
        " already exists, not redeclaring")
when not declared(Ffdebugnomc):
  when 16777216 is static:
    const
      Ffdebugnomc* = 16777216 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1411:9
  else:
    let Ffdebugnomc* = 16777216 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1411:9
else:
  static :
    hint("Declaration of " & "Ffdebugnomc" & " already exists, not redeclaring")
when not declared(Ffdctauto):
  when 0 is static:
    const
      Ffdctauto* = 0         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1535:9
  else:
    let Ffdctauto* = 0       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1535:9
else:
  static :
    hint("Declaration of " & "Ffdctauto" & " already exists, not redeclaring")
when not declared(Ffdctfastint):
  when 1 is static:
    const
      Ffdctfastint* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1536:9
  else:
    let Ffdctfastint* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1536:9
else:
  static :
    hint("Declaration of " & "Ffdctfastint" & " already exists, not redeclaring")
when not declared(Ffdctint):
  when 2 is static:
    const
      Ffdctint* = 2          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1537:9
  else:
    let Ffdctint* = 2        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1537:9
else:
  static :
    hint("Declaration of " & "Ffdctint" & " already exists, not redeclaring")
when not declared(Ffdctmmx):
  when 3 is static:
    const
      Ffdctmmx* = 3          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1538:9
  else:
    let Ffdctmmx* = 3        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1538:9
else:
  static :
    hint("Declaration of " & "Ffdctmmx" & " already exists, not redeclaring")
when not declared(Ffdctaltivec):
  when 5 is static:
    const
      Ffdctaltivec* = 5      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1539:9
  else:
    let Ffdctaltivec* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1539:9
else:
  static :
    hint("Declaration of " & "Ffdctaltivec" & " already exists, not redeclaring")
when not declared(Ffdctfaan):
  when 6 is static:
    const
      Ffdctfaan* = 6         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1540:9
  else:
    let Ffdctfaan* = 6       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1540:9
else:
  static :
    hint("Declaration of " & "Ffdctfaan" & " already exists, not redeclaring")
when not declared(Ffidctauto):
  when 0 is static:
    const
      Ffidctauto* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1548:9
  else:
    let Ffidctauto* = 0      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1548:9
else:
  static :
    hint("Declaration of " & "Ffidctauto" & " already exists, not redeclaring")
when not declared(Ffidctint):
  when 1 is static:
    const
      Ffidctint* = 1         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1549:9
  else:
    let Ffidctint* = 1       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1549:9
else:
  static :
    hint("Declaration of " & "Ffidctint" & " already exists, not redeclaring")
when not declared(Ffidctsimple):
  when 2 is static:
    const
      Ffidctsimple* = 2      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1550:9
  else:
    let Ffidctsimple* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1550:9
else:
  static :
    hint("Declaration of " & "Ffidctsimple" & " already exists, not redeclaring")
when not declared(Ffidctsimplemmx):
  when 3 is static:
    const
      Ffidctsimplemmx* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1551:9
  else:
    let Ffidctsimplemmx* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1551:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplemmx" &
        " already exists, not redeclaring")
when not declared(Ffidctarm):
  when 7 is static:
    const
      Ffidctarm* = 7         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1552:9
  else:
    let Ffidctarm* = 7       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1552:9
else:
  static :
    hint("Declaration of " & "Ffidctarm" & " already exists, not redeclaring")
when not declared(Ffidctaltivec):
  when 8 is static:
    const
      Ffidctaltivec* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1553:9
  else:
    let Ffidctaltivec* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1553:9
else:
  static :
    hint("Declaration of " & "Ffidctaltivec" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearm):
  when 10 is static:
    const
      Ffidctsimplearm* = 10  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1554:9
  else:
    let Ffidctsimplearm* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1554:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearm" &
        " already exists, not redeclaring")
when not declared(Ffidctxvid):
  when 14 is static:
    const
      Ffidctxvid* = 14       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1555:9
  else:
    let Ffidctxvid* = 14     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1555:9
else:
  static :
    hint("Declaration of " & "Ffidctxvid" & " already exists, not redeclaring")
when not declared(Ffidctsimplearmv5te):
  when 16 is static:
    const
      Ffidctsimplearmv5te* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1556:9
  else:
    let Ffidctsimplearmv5te* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1556:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv5te" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearmv6):
  when 17 is static:
    const
      Ffidctsimplearmv6* = 17 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1557:9
  else:
    let Ffidctsimplearmv6* = 17 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1557:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv6" &
        " already exists, not redeclaring")
when not declared(Ffidctfaan):
  when 20 is static:
    const
      Ffidctfaan* = 20       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1558:9
  else:
    let Ffidctfaan* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1558:9
else:
  static :
    hint("Declaration of " & "Ffidctfaan" & " already exists, not redeclaring")
when not declared(Ffidctsimpleneon):
  when 22 is static:
    const
      Ffidctsimpleneon* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1559:9
  else:
    let Ffidctsimpleneon* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1559:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleneon" &
        " already exists, not redeclaring")
when not declared(Ffidctsimpleauto):
  when 128 is static:
    const
      Ffidctsimpleauto* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1560:9
  else:
    let Ffidctsimpleauto* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1560:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleauto" &
        " already exists, not redeclaring")
when not declared(Ffthreadframe):
  when 1 is static:
    const
      Ffthreadframe* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1593:9
  else:
    let Ffthreadframe* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1593:9
else:
  static :
    hint("Declaration of " & "Ffthreadframe" &
        " already exists, not redeclaring")
when not declared(Ffthreadslice):
  when 2 is static:
    const
      Ffthreadslice* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1594:9
  else:
    let Ffthreadslice* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1594:9
else:
  static :
    hint("Declaration of " & "Ffthreadslice" &
        " already exists, not redeclaring")
when not declared(Ffprofileunknown):
  when -99 is static:
    const
      Ffprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1643:9
  else:
    let Ffprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1643:9
else:
  static :
    hint("Declaration of " & "Ffprofileunknown" &
        " already exists, not redeclaring")
when not declared(Ffprofilereserved):
  when -100 is static:
    const
      Ffprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1644:9
  else:
    let Ffprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1644:9
else:
  static :
    hint("Declaration of " & "Ffprofilereserved" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacmain):
  when 0 is static:
    const
      Ffprofileaacmain* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1646:9
  else:
    let Ffprofileaacmain* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1646:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaclow):
  when 1 is static:
    const
      Ffprofileaaclow* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1647:9
  else:
    let Ffprofileaaclow* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1647:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacssr):
  when 2 is static:
    const
      Ffprofileaacssr* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1648:9
  else:
    let Ffprofileaacssr* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1648:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacltp):
  when 3 is static:
    const
      Ffprofileaacltp* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1649:9
  else:
    let Ffprofileaacltp* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1649:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Ffprofileaache):
  when 4 is static:
    const
      Ffprofileaache* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1650:9
  else:
    let Ffprofileaache* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1650:9
else:
  static :
    hint("Declaration of " & "Ffprofileaache" &
        " already exists, not redeclaring")
when not declared(Ffprofileaachev2):
  when 28 is static:
    const
      Ffprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1651:9
  else:
    let Ffprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1651:9
else:
  static :
    hint("Declaration of " & "Ffprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacld):
  when 22 is static:
    const
      Ffprofileaacld* = 22   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1652:9
  else:
    let Ffprofileaacld* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1652:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacld" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaceld):
  when 38 is static:
    const
      Ffprofileaaceld* = 38  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1653:9
  else:
    let Ffprofileaaceld* = 38 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1653:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aaclow):
  when 128 is static:
    const
      Ffprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1654:9
  else:
    let Ffprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1654:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aache):
  when 131 is static:
    const
      Ffprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1655:9
  else:
    let Ffprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1655:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhd):
  when 0 is static:
    const
      Ffprofilednxhd* = 0    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1657:9
  else:
    let Ffprofilednxhd* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1657:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrlb):
  when 1 is static:
    const
      Ffprofilednxhrlb* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1658:9
  else:
    let Ffprofilednxhrlb* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1658:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrsq):
  when 2 is static:
    const
      Ffprofilednxhrsq* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1659:9
  else:
    let Ffprofilednxhrsq* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1659:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhq):
  when 3 is static:
    const
      Ffprofilednxhrhq* = 3  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1660:9
  else:
    let Ffprofilednxhrhq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1660:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhqx):
  when 4 is static:
    const
      Ffprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1661:9
  else:
    let Ffprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1661:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhr444):
  when 5 is static:
    const
      Ffprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1662:9
  else:
    let Ffprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1662:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts):
  when 20 is static:
    const
      Ffprofiledts* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1664:9
  else:
    let Ffprofiledts* = 20   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1664:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts" & " already exists, not redeclaring")
when not declared(Ffprofiledtses):
  when 30 is static:
    const
      Ffprofiledtses* = 30   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1665:9
  else:
    let Ffprofiledtses* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1665:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtses" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts9624):
  when 40 is static:
    const
      Ffprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1666:9
  else:
    let Ffprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1666:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdhra):
  when 50 is static:
    const
      Ffprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1667:9
  else:
    let Ffprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1667:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdma):
  when 60 is static:
    const
      Ffprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1668:9
  else:
    let Ffprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1668:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtsexpress):
  when 70 is static:
    const
      Ffprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1669:9
  else:
    let Ffprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1669:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmax):
  when 61 is static:
    const
      Ffprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1670:9
  else:
    let Ffprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1670:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmaximax):
  when 62 is static:
    const
      Ffprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1671:9
  else:
    let Ffprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1671:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Ffprofileeac3ddpatmos):
  when 30 is static:
    const
      Ffprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1674:9
  else:
    let Ffprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1674:9
else:
  static :
    hint("Declaration of " & "Ffprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofiletruehdatmos):
  when 30 is static:
    const
      Ffprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1676:9
  else:
    let Ffprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1676:9
else:
  static :
    hint("Declaration of " & "Ffprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2422):
  when 0 is static:
    const
      Ffprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1678:9
  else:
    let Ffprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1678:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2high):
  when 1 is static:
    const
      Ffprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1679:9
  else:
    let Ffprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1679:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2ss):
  when 2 is static:
    const
      Ffprofilempeg2ss* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1680:9
  else:
    let Ffprofilempeg2ss* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1680:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2snrscalable):
  when 3 is static:
    const
      Ffprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1681:9
  else:
    let Ffprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1681:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2main):
  when 4 is static:
    const
      Ffprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1682:9
  else:
    let Ffprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1682:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2simple):
  when 5 is static:
    const
      Ffprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1683:9
  else:
    let Ffprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1683:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264baseline):
  when 66 is static:
    const
      Ffprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1688:9
  else:
    let Ffprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1688:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264main):
  when 77 is static:
    const
      Ffprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1690:9
  else:
    let Ffprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1690:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264main" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264extended):
  when 88 is static:
    const
      Ffprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1691:9
  else:
    let Ffprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1691:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high):
  when 100 is static:
    const
      Ffprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1692:9
  else:
    let Ffprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1692:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high10):
  when 110 is static:
    const
      Ffprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1693:9
  else:
    let Ffprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1693:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264multiviewhigh):
  when 118 is static:
    const
      Ffprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1695:9
  else:
    let Ffprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1695:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high422):
  when 122 is static:
    const
      Ffprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1696:9
  else:
    let Ffprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1696:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264stereohigh):
  when 128 is static:
    const
      Ffprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1698:9
  else:
    let Ffprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1698:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444):
  when 144 is static:
    const
      Ffprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1699:9
  else:
    let Ffprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1699:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444predictive):
  when 244 is static:
    const
      Ffprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1700:9
  else:
    let Ffprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1700:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264cavlc444):
  when 44 is static:
    const
      Ffprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1702:9
  else:
    let Ffprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1702:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1simple):
  when 0 is static:
    const
      Ffprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1704:9
  else:
    let Ffprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1704:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1main):
  when 1 is static:
    const
      Ffprofilevc1main* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1705:9
  else:
    let Ffprofilevc1main* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1705:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1complex):
  when 2 is static:
    const
      Ffprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1706:9
  else:
    let Ffprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1706:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1advanced):
  when 3 is static:
    const
      Ffprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1707:9
  else:
    let Ffprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1707:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simple):
  when 0 is static:
    const
      Ffprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1709:9
  else:
    let Ffprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1709:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplescalable):
  when 1 is static:
    const
      Ffprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1710:9
  else:
    let Ffprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1710:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4core):
  when 2 is static:
    const
      Ffprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1711:9
  else:
    let Ffprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1711:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4main):
  when 3 is static:
    const
      Ffprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1712:9
  else:
    let Ffprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1712:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4nbit):
  when 4 is static:
    const
      Ffprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1713:9
  else:
    let Ffprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1713:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4scalabletexture):
  when 5 is static:
    const
      Ffprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1714:9
  else:
    let Ffprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1714:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1715:9
  else:
    let Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1715:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1716:9
  else:
    let Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1716:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4hybrid):
  when 8 is static:
    const
      Ffprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1717:9
  else:
    let Ffprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1717:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1718:9
  else:
    let Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1718:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4corescalable):
  when 10 is static:
    const
      Ffprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1719:9
  else:
    let Ffprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1719:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcoding):
  when 11 is static:
    const
      Ffprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1720:9
  else:
    let Ffprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1720:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcore):
  when 12 is static:
    const
      Ffprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1721:9
  else:
    let Ffprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1721:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1722:9
  else:
    let Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1722:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplestudio):
  when 14 is static:
    const
      Ffprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1723:9
  else:
    let Ffprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1723:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedsimple):
  when 15 is static:
    const
      Ffprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1724:9
  else:
    let Ffprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1724:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1726:9
  else:
    let Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1726:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1727:9
  else:
    let Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1727:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1728:9
  else:
    let Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1728:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1729:9
  else:
    let Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1729:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1730:9
  else:
    let Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1730:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp90):
  when 0 is static:
    const
      Ffprofilevp90* = 0     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1732:9
  else:
    let Ffprofilevp90* = 0   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1732:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp90" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp91):
  when 1 is static:
    const
      Ffprofilevp91* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1733:9
  else:
    let Ffprofilevp91* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1733:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp91" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp92):
  when 2 is static:
    const
      Ffprofilevp92* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1734:9
  else:
    let Ffprofilevp92* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1734:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp92" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp93):
  when 3 is static:
    const
      Ffprofilevp93* = 3     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1735:9
  else:
    let Ffprofilevp93* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1735:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp93" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain):
  when 1 is static:
    const
      Ffprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1737:9
  else:
    let Ffprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1737:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain10):
  when 2 is static:
    const
      Ffprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1738:9
  else:
    let Ffprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1738:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmainstillpicture):
  when 3 is static:
    const
      Ffprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1739:9
  else:
    let Ffprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1739:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcrext):
  when 4 is static:
    const
      Ffprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1740:9
  else:
    let Ffprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1740:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcscc):
  when 9 is static:
    const
      Ffprofilehevcscc* = 9  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1741:9
  else:
    let Ffprofilehevcscc* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1741:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10):
  when 1 is static:
    const
      Ffprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1743:9
  else:
    let Ffprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1743:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10444):
  when 33 is static:
    const
      Ffprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1744:9
  else:
    let Ffprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1744:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1main):
  when 0 is static:
    const
      Ffprofileav1main* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1746:9
  else:
    let Ffprofileav1main* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1746:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1main" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1high):
  when 1 is static:
    const
      Ffprofileav1high* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1747:9
  else:
    let Ffprofileav1high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1747:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1high" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1professional):
  when 2 is static:
    const
      Ffprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1748:9
  else:
    let Ffprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1748:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1750:9
  else:
    let Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1750:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1751:9
  else:
    let Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1751:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1752:9
  else:
    let Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1752:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1753:9
  else:
    let Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1753:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpegjpegls):
  when 247 is static:
    const
      Ffprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1754:9
  else:
    let Ffprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1754:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Ffprofilesbcmsbc):
  when 1 is static:
    const
      Ffprofilesbcmsbc* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1756:9
  else:
    let Ffprofilesbcmsbc* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1756:9
else:
  static :
    hint("Declaration of " & "Ffprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresproxy):
  when 0 is static:
    const
      Ffprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1758:9
  else:
    let Ffprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1758:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreslt):
  when 1 is static:
    const
      Ffprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1759:9
  else:
    let Ffprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1759:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresstandard):
  when 2 is static:
    const
      Ffprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1760:9
  else:
    let Ffprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1760:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreshq):
  when 3 is static:
    const
      Ffprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1761:9
  else:
    let Ffprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1761:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Ffprofileprores4444):
  when 4 is static:
    const
      Ffprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1762:9
  else:
    let Ffprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1762:9
else:
  static :
    hint("Declaration of " & "Ffprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresxq):
  when 5 is static:
    const
      Ffprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1763:9
  else:
    let Ffprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1763:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilea):
  when 0 is static:
    const
      Ffprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1765:9
  else:
    let Ffprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1765:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilec):
  when 1 is static:
    const
      Ffprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1766:9
  else:
    let Ffprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1766:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvasync):
  when 0 is static:
    const
      Ffprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1768:9
  else:
    let Ffprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1768:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvaasync):
  when 1 is static:
    const
      Ffprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1769:9
  else:
    let Ffprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1769:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcbaseline):
  when 0 is static:
    const
      Ffprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1771:9
  else:
    let Ffprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1771:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcmain):
  when 1 is static:
    const
      Ffprofileevcmain* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1772:9
  else:
    let Ffprofileevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1772:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Fflevelunknown):
  when -99 is static:
    const
      Fflevelunknown* = -99  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1787:9
  else:
    let Fflevelunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1787:9
else:
  static :
    hint("Declaration of " & "Fflevelunknown" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertylossless):
  when 1 is static:
    const
      Ffcodecpropertylossless* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1796:9
  else:
    let Ffcodecpropertylossless* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1796:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertylossless" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyclosedcaptions):
  when 2 is static:
    const
      Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1797:9
  else:
    let Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1797:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyclosedcaptions" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyfilmgrain):
  when 4 is static:
    const
      Ffcodecpropertyfilmgrain* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1798:9
  else:
    let Ffcodecpropertyfilmgrain* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1798:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyfilmgrain" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodedonothing):
  when -1 is static:
    const
      Ffsubcharencmodedonothing* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1877:9
  else:
    let Ffsubcharencmodedonothing* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1877:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodedonothing" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeautomatic):
  when 0 is static:
    const
      Ffsubcharencmodeautomatic* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1878:9
  else:
    let Ffsubcharencmodeautomatic* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1878:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeautomatic" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodepredecoder):
  when 1 is static:
    const
      Ffsubcharencmodepredecoder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1879:9
  else:
    let Ffsubcharencmodepredecoder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1879:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodepredecoder" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeignore):
  when 2 is static:
    const
      Ffsubcharencmodeignore* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1880:9
  else:
    let Ffsubcharencmodeignore* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:1880:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeignore" &
        " already exists, not redeclaring")
when not declared(Avhwaccelcodeccapexperimental):
  when 512 is static:
    const
      Avhwaccelcodeccapexperimental* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2128:9
  else:
    let Avhwaccelcodeccapexperimental* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2128:9
else:
  static :
    hint("Declaration of " & "Avhwaccelcodeccapexperimental" &
        " already exists, not redeclaring")
when not declared(Avsubtitleflagforced):
  when 1 is static:
    const
      Avsubtitleflagforced* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2198:9
  else:
    let Avsubtitleflagforced* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2198:9
else:
  static :
    hint("Declaration of " & "Avsubtitleflagforced" &
        " already exists, not redeclaring")
when not declared(Avparserptsnb):
  when 4 is static:
    const
      Avparserptsnb* = 4     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2734:9
  else:
    let Avparserptsnb* = 4   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2734:9
else:
  static :
    hint("Declaration of " & "Avparserptsnb" &
        " already exists, not redeclaring")
when not declared(Parserflagcompleteframes):
  when 1 is static:
    const
      Parserflagcompleteframes* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2741:9
  else:
    let Parserflagcompleteframes* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2741:9
else:
  static :
    hint("Declaration of " & "Parserflagcompleteframes" &
        " already exists, not redeclaring")
when not declared(Parserflagonce):
  when 2 is static:
    const
      Parserflagonce* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2742:9
  else:
    let Parserflagonce* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2742:9
else:
  static :
    hint("Declaration of " & "Parserflagonce" &
        " already exists, not redeclaring")
when not declared(Parserflagfetchedoffset):
  when 4 is static:
    const
      Parserflagfetchedoffset* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2744:9
  else:
    let Parserflagfetchedoffset* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2744:9
else:
  static :
    hint("Declaration of " & "Parserflagfetchedoffset" &
        " already exists, not redeclaring")
when not declared(Parserflagusecodects):
  when 4096 is static:
    const
      Parserflagusecodects* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2745:9
  else:
    let Parserflagusecodects* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavcodec/avcodec.h:2745:9
else:
  static :
    hint("Declaration of " & "Parserflagusecodects" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtname):
  proc avgetsamplefmtname*(samplefmt: enumavsampleformat_520094079): cstring {.
      cdecl, importc: "av_get_sample_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtname" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmt):
  proc avgetsamplefmt*(name: cstring): enumavsampleformat_520094079 {.cdecl,
      importc: "av_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetaltsamplefmt):
  proc avgetaltsamplefmt*(samplefmt: enumavsampleformat_520094079; planar: cint): enumavsampleformat_520094079 {.
      cdecl, importc: "av_get_alt_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetaltsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetpackedsamplefmt):
  proc avgetpackedsamplefmt*(samplefmt: enumavsampleformat_520094079): enumavsampleformat_520094079 {.
      cdecl, importc: "av_get_packed_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpackedsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetplanarsamplefmt):
  proc avgetplanarsamplefmt*(samplefmt: enumavsampleformat_520094079): enumavsampleformat_520094079 {.
      cdecl, importc: "av_get_planar_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetplanarsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtstring):
  proc avgetsamplefmtstring*(buf: cstring; bufsize: cint;
                             samplefmt: enumavsampleformat_520094079): cstring {.
      cdecl, importc: "av_get_sample_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtstring" &
        " already exists, not redeclaring")
when not declared(avgetbytespersample):
  proc avgetbytespersample*(samplefmt: enumavsampleformat_520094079): cint {.
      cdecl, importc: "av_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbytespersample" &
        " already exists, not redeclaring")
when not declared(avsamplefmtisplanar):
  proc avsamplefmtisplanar*(samplefmt: enumavsampleformat_520094079): cint {.
      cdecl, importc: "av_sample_fmt_is_planar".}
else:
  static :
    hint("Declaration of " & "avsamplefmtisplanar" &
        " already exists, not redeclaring")
when not declared(avsamplesgetbuffersize):
  proc avsamplesgetbuffersize*(linesize: ptr cint; nbchannels: cint;
                               nbsamples: cint; samplefmt: enumavsampleformat_520094079;
                               align: cint): cint {.cdecl,
      importc: "av_samples_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avsamplesgetbuffersize" &
        " already exists, not redeclaring")
when not declared(avsamplesfillarrays):
  proc avsamplesfillarrays*(audiodata: ptr ptr uint8; linesize: ptr cint;
                            buf: ptr uint8; nbchannels: cint; nbsamples: cint;
                            samplefmt: enumavsampleformat_520094079; align: cint): cint {.
      cdecl, importc: "av_samples_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avsamplesfillarrays" &
        " already exists, not redeclaring")
when not declared(avsamplesalloc):
  proc avsamplesalloc*(audiodata: ptr ptr uint8; linesize: ptr cint;
                       nbchannels: cint; nbsamples: cint;
                       samplefmt: enumavsampleformat_520094079; align: cint): cint {.
      cdecl, importc: "av_samples_alloc".}
else:
  static :
    hint("Declaration of " & "avsamplesalloc" &
        " already exists, not redeclaring")
when not declared(avsamplesallocarrayandsamples):
  proc avsamplesallocarrayandsamples*(audiodata: ptr ptr ptr uint8;
                                      linesize: ptr cint; nbchannels: cint;
                                      nbsamples: cint;
                                      samplefmt: enumavsampleformat_520094079;
                                      align: cint): cint {.cdecl,
      importc: "av_samples_alloc_array_and_samples".}
else:
  static :
    hint("Declaration of " & "avsamplesallocarrayandsamples" &
        " already exists, not redeclaring")
when not declared(avsamplescopy):
  proc avsamplescopy*(dst: ptr ptr uint8; src: ptr ptr uint8; dstoffset: cint;
                      srcoffset: cint; nbsamples: cint; nbchannels: cint;
                      samplefmt: enumavsampleformat_520094079): cint {.cdecl,
      importc: "av_samples_copy".}
else:
  static :
    hint("Declaration of " & "avsamplescopy" &
        " already exists, not redeclaring")
when not declared(avsamplessetsilence):
  proc avsamplessetsilence*(audiodata: ptr ptr uint8; offset: cint;
                            nbsamples: cint; nbchannels: cint;
                            samplefmt: enumavsampleformat_520094079): cint {.
      cdecl, importc: "av_samples_set_silence".}
else:
  static :
    hint("Declaration of " & "avsamplessetsilence" &
        " already exists, not redeclaring")
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
  proc avgetmediatypestring*(mediatype: enumavmediatype_520094081): cstring {.
      cdecl, importc: "av_get_media_type_string".}
else:
  static :
    hint("Declaration of " & "avgetmediatypestring" &
        " already exists, not redeclaring")
when not declared(avgetpicturetypechar):
  proc avgetpicturetypechar*(picttype: enumavpicturetype_520094083): cschar {.
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
  proc avmulq*(b: Avrational_520094087; c: Avrational_520094087): Avrational_520094087 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094087; c: Avrational_520094087): Avrational_520094087 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094087; c: Avrational_520094087): Avrational_520094087 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094087; c: Avrational_520094087): Avrational_520094087 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094087 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094087; q1: Avrational_520094087;
                  q2: Avrational_520094087): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094087; qlist: ptr Avrational_520094087): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094087): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094087; b: Avrational_520094087; maxden: cint;
               def: Avrational_520094087): Avrational_520094087 {.cdecl,
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
  proc avrescalernd*(a: int64; b: int64; c: int64; rnd: enumavrounding_520094093): int64 {.
      cdecl, importc: "av_rescale_rnd".}
else:
  static :
    hint("Declaration of " & "avrescalernd" & " already exists, not redeclaring")
when not declared(avrescaleq):
  proc avrescaleq*(a: int64; bq: Avrational_520094087; cq: Avrational_520094087): int64 {.
      cdecl, importc: "av_rescale_q".}
else:
  static :
    hint("Declaration of " & "avrescaleq" & " already exists, not redeclaring")
when not declared(avrescaleqrnd):
  proc avrescaleqrnd*(a: int64; bq: Avrational_520094087; cq: Avrational_520094087;
                      rnd: enumavrounding_520094093): int64 {.cdecl,
      importc: "av_rescale_q_rnd".}
else:
  static :
    hint("Declaration of " & "avrescaleqrnd" &
        " already exists, not redeclaring")
when not declared(avcomparets):
  proc avcomparets*(tsa: int64; tba: Avrational_520094087; tsb: int64;
                    tbb: Avrational_520094087): cint {.cdecl,
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
  proc avrescaledelta*(intb: Avrational_520094087; ints: int64;
                       fstb: Avrational_520094087; duration: cint;
                       last: ptr int64; outtb: Avrational_520094087): int64 {.
      cdecl, importc: "av_rescale_delta".}
else:
  static :
    hint("Declaration of " & "avrescaledelta" &
        " already exists, not redeclaring")
when not declared(avaddstable):
  proc avaddstable*(tstb: Avrational_520094087; ts: int64; inctb: Avrational_520094087;
                    inc: int64): int64 {.cdecl, importc: "av_add_stable".}
else:
  static :
    hint("Declaration of " & "avaddstable" & " already exists, not redeclaring")
when not declared(avbesseli0):
  proc avbesseli0*(x: cdouble): cdouble {.cdecl, importc: "av_bessel_i0".}
else:
  static :
    hint("Declaration of " & "avbesseli0" & " already exists, not redeclaring")
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
  proc avdefaultgetcategory*(ptrarg: pointer): Avclasscategory_520094097 {.
      cdecl, importc: "av_default_get_category".}
else:
  static :
    hint("Declaration of " & "avdefaultgetcategory" &
        " already exists, not redeclaring")
when not declared(avlogformatline):
  proc avlogformatline*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094103;
                        line: cstring; linesize: cint; printprefix: ptr cint): void {.
      cdecl, importc: "av_log_format_line".}
else:
  static :
    hint("Declaration of " & "avlogformatline" &
        " already exists, not redeclaring")
when not declared(avlogformatline2):
  proc avlogformatline2*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094103;
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
when not declared(avintlistlengthforsize):
  proc avintlistlengthforsize*(elsize: cuint; list: pointer; term: uint64): cuint {.
      cdecl, importc: "av_int_list_length_for_size".}
else:
  static :
    hint("Declaration of " & "avintlistlengthforsize" &
        " already exists, not redeclaring")
when not declared(avgettimebaseq):
  proc avgettimebaseq*(): Avrational_520094087 {.cdecl,
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
when not declared(avbufferalloc):
  proc avbufferalloc*(size: csize_t): ptr Avbufferref_520094121 {.cdecl,
      importc: "av_buffer_alloc".}
else:
  static :
    hint("Declaration of " & "avbufferalloc" &
        " already exists, not redeclaring")
when not declared(avbufferallocz):
  proc avbufferallocz*(size: csize_t): ptr Avbufferref_520094121 {.cdecl,
      importc: "av_buffer_allocz".}
else:
  static :
    hint("Declaration of " & "avbufferallocz" &
        " already exists, not redeclaring")
when not declared(avbuffercreate):
  proc avbuffercreate*(data: ptr uint8; size: csize_t;
                       free: proc (a0: pointer; a1: ptr uint8): void {.cdecl.};
                       opaque: pointer; flags: cint): ptr Avbufferref_520094121 {.
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
  proc avbufferref*(buf: ptr Avbufferref_520094121): ptr Avbufferref_520094121 {.
      cdecl, importc: "av_buffer_ref".}
else:
  static :
    hint("Declaration of " & "avbufferref" & " already exists, not redeclaring")
when not declared(avbufferunref):
  proc avbufferunref*(buf: ptr ptr Avbufferref_520094121): void {.cdecl,
      importc: "av_buffer_unref".}
else:
  static :
    hint("Declaration of " & "avbufferunref" &
        " already exists, not redeclaring")
when not declared(avbufferiswritable):
  proc avbufferiswritable*(buf: ptr Avbufferref_520094121): cint {.cdecl,
      importc: "av_buffer_is_writable".}
else:
  static :
    hint("Declaration of " & "avbufferiswritable" &
        " already exists, not redeclaring")
when not declared(avbuffergetopaque):
  proc avbuffergetopaque*(buf: ptr Avbufferref_520094121): pointer {.cdecl,
      importc: "av_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avbuffergetrefcount):
  proc avbuffergetrefcount*(buf: ptr Avbufferref_520094121): cint {.cdecl,
      importc: "av_buffer_get_ref_count".}
else:
  static :
    hint("Declaration of " & "avbuffergetrefcount" &
        " already exists, not redeclaring")
when not declared(avbuffermakewritable):
  proc avbuffermakewritable*(buf: ptr ptr Avbufferref_520094121): cint {.cdecl,
      importc: "av_buffer_make_writable".}
else:
  static :
    hint("Declaration of " & "avbuffermakewritable" &
        " already exists, not redeclaring")
when not declared(avbufferrealloc):
  proc avbufferrealloc*(buf: ptr ptr Avbufferref_520094121; size: csize_t): cint {.
      cdecl, importc: "av_buffer_realloc".}
else:
  static :
    hint("Declaration of " & "avbufferrealloc" &
        " already exists, not redeclaring")
when not declared(avbufferreplace):
  proc avbufferreplace*(dst: ptr ptr Avbufferref_520094121; src: ptr Avbufferref_520094121): cint {.
      cdecl, importc: "av_buffer_replace".}
else:
  static :
    hint("Declaration of " & "avbufferreplace" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit):
  proc avbufferpoolinit*(size: csize_t;
                         alloc: proc (a0: csize_t): ptr Avbufferref_520094121 {.
      cdecl.}): ptr Avbufferpool_520094123 {.cdecl,
      importc: "av_buffer_pool_init".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit2):
  proc avbufferpoolinit2*(size: csize_t; opaque: pointer; alloc: proc (
      a0: pointer; a1: csize_t): ptr Avbufferref_520094121 {.cdecl.};
                          poolfree: proc (a0: pointer): void {.cdecl.}): ptr Avbufferpool_520094123 {.
      cdecl, importc: "av_buffer_pool_init2".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit2" &
        " already exists, not redeclaring")
when not declared(avbufferpooluninit):
  proc avbufferpooluninit*(pool: ptr ptr Avbufferpool_520094123): void {.cdecl,
      importc: "av_buffer_pool_uninit".}
else:
  static :
    hint("Declaration of " & "avbufferpooluninit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolget):
  proc avbufferpoolget*(pool: ptr Avbufferpool_520094123): ptr Avbufferref_520094121 {.
      cdecl, importc: "av_buffer_pool_get".}
else:
  static :
    hint("Declaration of " & "avbufferpoolget" &
        " already exists, not redeclaring")
when not declared(avbufferpoolbuffergetopaque):
  proc avbufferpoolbuffergetopaque*(refarg: ptr Avbufferref_520094121): pointer {.
      cdecl, importc: "av_buffer_pool_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbufferpoolbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avchannelname):
  proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel_520094125): cint {.
      cdecl, importc: "av_channel_name".}
else:
  static :
    hint("Declaration of " & "avchannelname" &
        " already exists, not redeclaring")
when not declared(avchannelnamebprint):
  proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel_520094125): void {.
      cdecl, importc: "av_channel_name_bprint".}
else:
  static :
    hint("Declaration of " & "avchannelnamebprint" &
        " already exists, not redeclaring")
when not declared(avchanneldescription):
  proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                             channel: enumavchannel_520094125): cint {.cdecl,
      importc: "av_channel_description".}
else:
  static :
    hint("Declaration of " & "avchanneldescription" &
        " already exists, not redeclaring")
when not declared(avchanneldescriptionbprint):
  proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                   channelid: enumavchannel_520094125): void {.
      cdecl, importc: "av_channel_description_bprint".}
else:
  static :
    hint("Declaration of " & "avchanneldescriptionbprint" &
        " already exists, not redeclaring")
when not declared(avchannelfromstring):
  proc avchannelfromstring*(name: cstring): enumavchannel_520094125 {.cdecl,
      importc: "av_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcustominit):
  proc avchannellayoutcustominit*(channellayout: ptr Avchannellayout_520094144;
                                  nbchannels: cint): cint {.cdecl,
      importc: "av_channel_layout_custom_init".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcustominit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfrommask):
  proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout_520094144;
                                mask: uint64): cint {.cdecl,
      importc: "av_channel_layout_from_mask".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfrommask" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfromstring):
  proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout_520094144;
                                  str: cstring): cint {.cdecl,
      importc: "av_channel_layout_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdefault):
  proc avchannellayoutdefault*(chlayout: ptr Avchannellayout_520094144;
                               nbchannels: cint): void {.cdecl,
      importc: "av_channel_layout_default".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdefault" &
        " already exists, not redeclaring")
when not declared(avchannellayoutstandard):
  proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout_520094144 {.
      cdecl, importc: "av_channel_layout_standard".}
else:
  static :
    hint("Declaration of " & "avchannellayoutstandard" &
        " already exists, not redeclaring")
when not declared(avchannellayoutuninit):
  proc avchannellayoutuninit*(channellayout: ptr Avchannellayout_520094144): void {.
      cdecl, importc: "av_channel_layout_uninit".}
else:
  static :
    hint("Declaration of " & "avchannellayoutuninit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcopy):
  proc avchannellayoutcopy*(dst: ptr Avchannellayout_520094144;
                            src: ptr Avchannellayout_520094144): cint {.cdecl,
      importc: "av_channel_layout_copy".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcopy" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribe):
  proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout_520094144;
                                buf: cstring; bufsize: csize_t): cint {.cdecl,
      importc: "av_channel_layout_describe".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribe" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribebprint):
  proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout_520094144;
                                      bp: ptr structavbprint): cint {.cdecl,
      importc: "av_channel_layout_describe_bprint".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribebprint" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromindex):
  proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout_520094144;
                                        idx: cuint): enumavchannel_520094125 {.
      cdecl, importc: "av_channel_layout_channel_from_index".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromchannel):
  proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout_520094144;
                                        channel: enumavchannel_520094125): cint {.
      cdecl, importc: "av_channel_layout_index_from_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromchannel" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromstring):
  proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout_520094144;
                                       name: cstring): cint {.cdecl,
      importc: "av_channel_layout_index_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromstring):
  proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout_520094144;
      name: cstring): enumavchannel_520094125 {.cdecl,
      importc: "av_channel_layout_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutsubset):
  proc avchannellayoutsubset*(channellayout: ptr Avchannellayout_520094144;
                              mask: uint64): uint64 {.cdecl,
      importc: "av_channel_layout_subset".}
else:
  static :
    hint("Declaration of " & "avchannellayoutsubset" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcheck):
  proc avchannellayoutcheck*(channellayout: ptr Avchannellayout_520094144): cint {.
      cdecl, importc: "av_channel_layout_check".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcheck" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcompare):
  proc avchannellayoutcompare*(chl: ptr Avchannellayout_520094144;
                               chl1: ptr Avchannellayout_520094144): cint {.
      cdecl, importc: "av_channel_layout_compare".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcompare" &
        " already exists, not redeclaring")
when not declared(avchannellayoutretype):
  proc avchannellayoutretype*(channellayout: ptr Avchannellayout_520094144;
                              order: enumavchannelorder_520094127; flags: cint): cint {.
      cdecl, importc: "av_channel_layout_retype".}
else:
  static :
    hint("Declaration of " & "avchannellayoutretype" &
        " already exists, not redeclaring")
when not declared(avdictget):
  proc avdictget*(m: ptr Avdictionary_520094150; key: cstring;
                  prev: ptr Avdictionaryentry_520094148; flags: cint): ptr Avdictionaryentry_520094148 {.
      cdecl, importc: "av_dict_get".}
else:
  static :
    hint("Declaration of " & "avdictget" & " already exists, not redeclaring")
when not declared(avdictiterate):
  proc avdictiterate*(m: ptr Avdictionary_520094150; prev: ptr Avdictionaryentry_520094148): ptr Avdictionaryentry_520094148 {.
      cdecl, importc: "av_dict_iterate".}
else:
  static :
    hint("Declaration of " & "avdictiterate" &
        " already exists, not redeclaring")
when not declared(avdictcount):
  proc avdictcount*(m: ptr Avdictionary_520094150): cint {.cdecl,
      importc: "av_dict_count".}
else:
  static :
    hint("Declaration of " & "avdictcount" & " already exists, not redeclaring")
when not declared(avdictset):
  proc avdictset*(pm: ptr ptr Avdictionary_520094150; key: cstring;
                  value: cstring; flags: cint): cint {.cdecl,
      importc: "av_dict_set".}
else:
  static :
    hint("Declaration of " & "avdictset" & " already exists, not redeclaring")
when not declared(avdictsetint):
  proc avdictsetint*(pm: ptr ptr Avdictionary_520094150; key: cstring;
                     value: int64; flags: cint): cint {.cdecl,
      importc: "av_dict_set_int".}
else:
  static :
    hint("Declaration of " & "avdictsetint" & " already exists, not redeclaring")
when not declared(avdictparsestring):
  proc avdictparsestring*(pm: ptr ptr Avdictionary_520094150; str: cstring;
                          keyvalsep: cstring; pairssep: cstring; flags: cint): cint {.
      cdecl, importc: "av_dict_parse_string".}
else:
  static :
    hint("Declaration of " & "avdictparsestring" &
        " already exists, not redeclaring")
when not declared(avdictcopy):
  proc avdictcopy*(dst: ptr ptr Avdictionary_520094150; src: ptr Avdictionary_520094150;
                   flags: cint): cint {.cdecl, importc: "av_dict_copy".}
else:
  static :
    hint("Declaration of " & "avdictcopy" & " already exists, not redeclaring")
when not declared(avdictfree):
  proc avdictfree*(m: ptr ptr Avdictionary_520094150): void {.cdecl,
      importc: "av_dict_free".}
else:
  static :
    hint("Declaration of " & "avdictfree" & " already exists, not redeclaring")
when not declared(avdictgetstring):
  proc avdictgetstring*(m: ptr Avdictionary_520094150; buffer: ptr cstring;
                        keyvalsep: cschar; pairssep: cschar): cint {.cdecl,
      importc: "av_dict_get_string".}
else:
  static :
    hint("Declaration of " & "avdictgetstring" &
        " already exists, not redeclaring")
when not declared(avframealloc):
  proc avframealloc*(): ptr Avframe_520094172 {.cdecl, importc: "av_frame_alloc".}
else:
  static :
    hint("Declaration of " & "avframealloc" & " already exists, not redeclaring")
when not declared(avframefree):
  proc avframefree*(frame: ptr ptr Avframe_520094172): void {.cdecl,
      importc: "av_frame_free".}
else:
  static :
    hint("Declaration of " & "avframefree" & " already exists, not redeclaring")
when not declared(avframeref):
  proc avframeref*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172): cint {.
      cdecl, importc: "av_frame_ref".}
else:
  static :
    hint("Declaration of " & "avframeref" & " already exists, not redeclaring")
when not declared(avframereplace):
  proc avframereplace*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172): cint {.
      cdecl, importc: "av_frame_replace".}
else:
  static :
    hint("Declaration of " & "avframereplace" &
        " already exists, not redeclaring")
when not declared(avframeclone):
  proc avframeclone*(src: ptr Avframe_520094172): ptr Avframe_520094172 {.cdecl,
      importc: "av_frame_clone".}
else:
  static :
    hint("Declaration of " & "avframeclone" & " already exists, not redeclaring")
when not declared(avframeunref):
  proc avframeunref*(frame: ptr Avframe_520094172): void {.cdecl,
      importc: "av_frame_unref".}
else:
  static :
    hint("Declaration of " & "avframeunref" & " already exists, not redeclaring")
when not declared(avframemoveref):
  proc avframemoveref*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172): void {.
      cdecl, importc: "av_frame_move_ref".}
else:
  static :
    hint("Declaration of " & "avframemoveref" &
        " already exists, not redeclaring")
when not declared(avframegetbuffer):
  proc avframegetbuffer*(frame: ptr Avframe_520094172; align: cint): cint {.
      cdecl, importc: "av_frame_get_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avframeiswritable):
  proc avframeiswritable*(frame: ptr Avframe_520094172): cint {.cdecl,
      importc: "av_frame_is_writable".}
else:
  static :
    hint("Declaration of " & "avframeiswritable" &
        " already exists, not redeclaring")
when not declared(avframemakewritable):
  proc avframemakewritable*(frame: ptr Avframe_520094172): cint {.cdecl,
      importc: "av_frame_make_writable".}
else:
  static :
    hint("Declaration of " & "avframemakewritable" &
        " already exists, not redeclaring")
when not declared(avframecopy):
  proc avframecopy*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172): cint {.
      cdecl, importc: "av_frame_copy".}
else:
  static :
    hint("Declaration of " & "avframecopy" & " already exists, not redeclaring")
when not declared(avframecopyprops):
  proc avframecopyprops*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172): cint {.
      cdecl, importc: "av_frame_copy_props".}
else:
  static :
    hint("Declaration of " & "avframecopyprops" &
        " already exists, not redeclaring")
when not declared(avframegetplanebuffer):
  proc avframegetplanebuffer*(frame: ptr Avframe_520094172; plane: cint): ptr Avbufferref_520094121 {.
      cdecl, importc: "av_frame_get_plane_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetplanebuffer" &
        " already exists, not redeclaring")
when not declared(avframenewsidedata):
  proc avframenewsidedata*(frame: ptr Avframe_520094172;
                           typearg: enumavframesidedatatype_520094152;
                           size: csize_t): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_new_side_data".}
else:
  static :
    hint("Declaration of " & "avframenewsidedata" &
        " already exists, not redeclaring")
when not declared(avframenewsidedatafrombuf):
  proc avframenewsidedatafrombuf*(frame: ptr Avframe_520094172;
                                  typearg: enumavframesidedatatype_520094152;
                                  buf: ptr Avbufferref_520094121): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_new_side_data_from_buf".}
else:
  static :
    hint("Declaration of " & "avframenewsidedatafrombuf" &
        " already exists, not redeclaring")
when not declared(avframegetsidedata):
  proc avframegetsidedata*(frame: ptr Avframe_520094172;
                           typearg: enumavframesidedatatype_520094152): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_get_side_data".}
else:
  static :
    hint("Declaration of " & "avframegetsidedata" &
        " already exists, not redeclaring")
when not declared(avframeremovesidedata):
  proc avframeremovesidedata*(frame: ptr Avframe_520094172;
                              typearg: enumavframesidedatatype_520094152): void {.
      cdecl, importc: "av_frame_remove_side_data".}
else:
  static :
    hint("Declaration of " & "avframeremovesidedata" &
        " already exists, not redeclaring")
when not declared(avframeapplycropping):
  proc avframeapplycropping*(frame: ptr Avframe_520094172; flags: cint): cint {.
      cdecl, importc: "av_frame_apply_cropping".}
else:
  static :
    hint("Declaration of " & "avframeapplycropping" &
        " already exists, not redeclaring")
when not declared(avframesidedataname):
  proc avframesidedataname*(typearg: enumavframesidedatatype_520094152): cstring {.
      cdecl, importc: "av_frame_side_data_name".}
else:
  static :
    hint("Declaration of " & "avframesidedataname" &
        " already exists, not redeclaring")
when not declared(avframesidedatadesc):
  proc avframesidedatadesc*(typearg: enumavframesidedatatype_520094152): ptr Avsidedatadescriptor_520094164 {.
      cdecl, importc: "av_frame_side_data_desc".}
else:
  static :
    hint("Declaration of " & "avframesidedatadesc" &
        " already exists, not redeclaring")
when not declared(avframesidedatafree):
  proc avframesidedatafree*(sd: ptr ptr ptr Avframesidedata_520094158;
                            nbsd: ptr cint): void {.cdecl,
      importc: "av_frame_side_data_free".}
else:
  static :
    hint("Declaration of " & "avframesidedatafree" &
        " already exists, not redeclaring")
when not declared(avframesidedatanew):
  proc avframesidedatanew*(sd: ptr ptr ptr Avframesidedata_520094158;
                           nbsd: ptr cint; typearg: enumavframesidedatatype_520094152;
                           size: csize_t; flags: cuint): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_side_data_new".}
else:
  static :
    hint("Declaration of " & "avframesidedatanew" &
        " already exists, not redeclaring")
when not declared(avframesidedataadd):
  proc avframesidedataadd*(sd: ptr ptr ptr Avframesidedata_520094158;
                           nbsd: ptr cint; typearg: enumavframesidedatatype_520094152;
                           buf: ptr ptr Avbufferref_520094121; flags: cuint): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_side_data_add".}
else:
  static :
    hint("Declaration of " & "avframesidedataadd" &
        " already exists, not redeclaring")
when not declared(avframesidedataclone):
  proc avframesidedataclone*(sd: ptr ptr ptr Avframesidedata_520094158;
                             nbsd: ptr cint; src: ptr Avframesidedata_520094158;
                             flags: cuint): cint {.cdecl,
      importc: "av_frame_side_data_clone".}
else:
  static :
    hint("Declaration of " & "avframesidedataclone" &
        " already exists, not redeclaring")
when not declared(avframesidedatagetc):
  proc avframesidedatagetc*(sd: ptr ptr Avframesidedata_520094158; nbsd: cint;
                            typearg: enumavframesidedatatype_520094152): ptr Avframesidedata_520094158 {.
      cdecl, importc: "av_frame_side_data_get_c".}
else:
  static :
    hint("Declaration of " & "avframesidedatagetc" &
        " already exists, not redeclaring")
when not declared(avframesidedataremove):
  proc avframesidedataremove*(sd: ptr ptr ptr Avframesidedata_520094158;
                              nbsd: ptr cint; typearg: enumavframesidedatatype_520094152): void {.
      cdecl, importc: "av_frame_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avframesidedataremove" &
        " already exists, not redeclaring")
when not declared(avhwdevicefindtypebyname):
  proc avhwdevicefindtypebyname*(name: cstring): enumavhwdevicetype_520094174 {.
      cdecl, importc: "av_hwdevice_find_type_by_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicefindtypebyname" &
        " already exists, not redeclaring")
when not declared(avhwdevicegettypename):
  proc avhwdevicegettypename*(typearg: enumavhwdevicetype_520094174): cstring {.
      cdecl, importc: "av_hwdevice_get_type_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicegettypename" &
        " already exists, not redeclaring")
when not declared(avhwdeviceiteratetypes):
  proc avhwdeviceiteratetypes*(prev: enumavhwdevicetype_520094174): enumavhwdevicetype_520094174 {.
      cdecl, importc: "av_hwdevice_iterate_types".}
else:
  static :
    hint("Declaration of " & "avhwdeviceiteratetypes" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxalloc):
  proc avhwdevicectxalloc*(typearg: enumavhwdevicetype_520094174): ptr Avbufferref_520094121 {.
      cdecl, importc: "av_hwdevice_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxinit):
  proc avhwdevicectxinit*(refarg: ptr Avbufferref_520094121): cint {.cdecl,
      importc: "av_hwdevice_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxinit" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreate):
  proc avhwdevicectxcreate*(devicectx: ptr ptr Avbufferref_520094121;
                            typearg: enumavhwdevicetype_520094174;
                            device: cstring; opts: ptr Avdictionary_520094150;
                            flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreate" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederived):
  proc avhwdevicectxcreatederived*(dstctx: ptr ptr Avbufferref_520094121;
                                   typearg: enumavhwdevicetype_520094174;
                                   srcctx: ptr Avbufferref_520094121;
                                   flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederivedopts):
  proc avhwdevicectxcreatederivedopts*(dstctx: ptr ptr Avbufferref_520094121;
                                       typearg: enumavhwdevicetype_520094174;
                                       srcctx: ptr Avbufferref_520094121;
                                       options: ptr Avdictionary_520094150;
                                       flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived_opts".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederivedopts" &
        " already exists, not redeclaring")
when not declared(avhwframectxalloc):
  proc avhwframectxalloc*(devicectx: ptr Avbufferref_520094121): ptr Avbufferref_520094121 {.
      cdecl, importc: "av_hwframe_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwframectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwframectxinit):
  proc avhwframectxinit*(refarg: ptr Avbufferref_520094121): cint {.cdecl,
      importc: "av_hwframe_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwframectxinit" &
        " already exists, not redeclaring")
when not declared(avhwframegetbuffer):
  proc avhwframegetbuffer*(hwframectx: ptr Avbufferref_520094121;
                           frame: ptr Avframe_520094172; flags: cint): cint {.
      cdecl, importc: "av_hwframe_get_buffer".}
else:
  static :
    hint("Declaration of " & "avhwframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avhwframetransferdata):
  proc avhwframetransferdata*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172;
                              flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_data".}
else:
  static :
    hint("Declaration of " & "avhwframetransferdata" &
        " already exists, not redeclaring")
when not declared(avhwframetransfergetformats):
  proc avhwframetransfergetformats*(hwframectx: ptr Avbufferref_520094121;
                                    dir: enumavhwframetransferdirection_520094184;
                                    formats: ptr ptr enumavpixelformat_520094105;
                                    flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_get_formats".}
else:
  static :
    hint("Declaration of " & "avhwframetransfergetformats" &
        " already exists, not redeclaring")
when not declared(avhwdevicehwconfigalloc):
  proc avhwdevicehwconfigalloc*(devicectx: ptr Avbufferref_520094121): pointer {.
      cdecl, importc: "av_hwdevice_hwconfig_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicehwconfigalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicegethwframeconstraints):
  proc avhwdevicegethwframeconstraints*(refarg: ptr Avbufferref_520094121;
                                        hwconfig: pointer): ptr Avhwframesconstraints_520094188 {.
      cdecl, importc: "av_hwdevice_get_hwframe_constraints".}
else:
  static :
    hint("Declaration of " & "avhwdevicegethwframeconstraints" &
        " already exists, not redeclaring")
when not declared(avhwframeconstraintsfree):
  proc avhwframeconstraintsfree*(constraints: ptr ptr Avhwframesconstraints_520094188): void {.
      cdecl, importc: "av_hwframe_constraints_free".}
else:
  static :
    hint("Declaration of " & "avhwframeconstraintsfree" &
        " already exists, not redeclaring")
when not declared(avhwframemap):
  proc avhwframemap*(dst: ptr Avframe_520094172; src: ptr Avframe_520094172;
                     flags: cint): cint {.cdecl, importc: "av_hwframe_map".}
else:
  static :
    hint("Declaration of " & "avhwframemap" & " already exists, not redeclaring")
when not declared(avhwframectxcreatederived):
  proc avhwframectxcreatederived*(derivedframectx: ptr ptr Avbufferref_520094121;
                                  format: enumavpixelformat_520094105;
                                  deriveddevicectx: ptr Avbufferref_520094121;
                                  sourceframectx: ptr Avbufferref_520094121;
                                  flags: cint): cint {.cdecl,
      importc: "av_hwframe_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwframectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avcodecgettype):
  proc avcodecgettype*(codecid: enumavcodecid_520094190): enumavmediatype_520094081 {.
      cdecl, importc: "avcodec_get_type".}
else:
  static :
    hint("Declaration of " & "avcodecgettype" &
        " already exists, not redeclaring")
when not declared(avcodecgetname):
  proc avcodecgetname*(id: enumavcodecid_520094190): cstring {.cdecl,
      importc: "avcodec_get_name".}
else:
  static :
    hint("Declaration of " & "avcodecgetname" &
        " already exists, not redeclaring")
when not declared(avgetbitspersample):
  proc avgetbitspersample*(codecid: enumavcodecid_520094190): cint {.cdecl,
      importc: "av_get_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbitspersample" &
        " already exists, not redeclaring")
when not declared(avgetexactbitspersample):
  proc avgetexactbitspersample*(codecid: enumavcodecid_520094190): cint {.cdecl,
      importc: "av_get_exact_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetexactbitspersample" &
        " already exists, not redeclaring")
when not declared(avcodecprofilename):
  proc avcodecprofilename*(codecid: enumavcodecid_520094190; profile: cint): cstring {.
      cdecl, importc: "avcodec_profile_name".}
else:
  static :
    hint("Declaration of " & "avcodecprofilename" &
        " already exists, not redeclaring")
when not declared(avgetpcmcodec):
  proc avgetpcmcodec*(fmt: enumavsampleformat_520094079; be: cint): enumavcodecid_520094190 {.
      cdecl, importc: "av_get_pcm_codec".}
else:
  static :
    hint("Declaration of " & "avgetpcmcodec" &
        " already exists, not redeclaring")
when not declared(avcodeciterate):
  proc avcodeciterate*(opaque: ptr pointer): ptr Avcodec_520094198 {.cdecl,
      importc: "av_codec_iterate".}
else:
  static :
    hint("Declaration of " & "avcodeciterate" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoder):
  proc avcodecfinddecoder*(id: enumavcodecid_520094190): ptr Avcodec_520094198 {.
      cdecl, importc: "avcodec_find_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoder" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoderbyname):
  proc avcodecfinddecoderbyname*(name: cstring): ptr Avcodec_520094198 {.cdecl,
      importc: "avcodec_find_decoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoder):
  proc avcodecfindencoder*(id: enumavcodecid_520094190): ptr Avcodec_520094198 {.
      cdecl, importc: "avcodec_find_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoder" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoderbyname):
  proc avcodecfindencoderbyname*(name: cstring): ptr Avcodec_520094198 {.cdecl,
      importc: "avcodec_find_encoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecisencoder):
  proc avcodecisencoder*(codec: ptr Avcodec_520094198): cint {.cdecl,
      importc: "av_codec_is_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecisencoder" &
        " already exists, not redeclaring")
when not declared(avcodecisdecoder):
  proc avcodecisdecoder*(codec: ptr Avcodec_520094198): cint {.cdecl,
      importc: "av_codec_is_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecisdecoder" &
        " already exists, not redeclaring")
when not declared(avgetprofilename):
  proc avgetprofilename*(codec: ptr Avcodec_520094198; profile: cint): cstring {.
      cdecl, importc: "av_get_profile_name".}
else:
  static :
    hint("Declaration of " & "avgetprofilename" &
        " already exists, not redeclaring")
when not declared(avcodecgethwconfig):
  proc avcodecgethwconfig*(codec: ptr Avcodec_520094198; index: cint): ptr Avcodechwconfig_520094202 {.
      cdecl, importc: "avcodec_get_hw_config".}
else:
  static :
    hint("Declaration of " & "avcodecgethwconfig" &
        " already exists, not redeclaring")
when not declared(avcpbpropertiesalloc):
  proc avcpbpropertiesalloc*(size: ptr csize_t): ptr Avcpbproperties_520094216 {.
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
when not declared(avpacketsidedatanew):
  proc avpacketsidedatanew*(psd: ptr ptr Avpacketsidedata_520094226;
                            pnbsd: ptr cint; typearg: enumavpacketsidedatatype_520094222;
                            size: csize_t; flags: cint): ptr Avpacketsidedata_520094226 {.
      cdecl, importc: "av_packet_side_data_new".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatanew" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataadd):
  proc avpacketsidedataadd*(sd: ptr ptr Avpacketsidedata_520094226;
                            nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094222;
                            data: pointer; size: csize_t; flags: cint): ptr Avpacketsidedata_520094226 {.
      cdecl, importc: "av_packet_side_data_add".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataadd" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataget):
  proc avpacketsidedataget*(sd: ptr Avpacketsidedata_520094226; nbsd: cint;
                            typearg: enumavpacketsidedatatype_520094222): ptr Avpacketsidedata_520094226 {.
      cdecl, importc: "av_packet_side_data_get".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataget" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataremove):
  proc avpacketsidedataremove*(sd: ptr Avpacketsidedata_520094226;
                               nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094222): void {.
      cdecl, importc: "av_packet_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataremove" &
        " already exists, not redeclaring")
when not declared(avpacketsidedatafree):
  proc avpacketsidedatafree*(sd: ptr ptr Avpacketsidedata_520094226;
                             nbsd: ptr cint): void {.cdecl,
      importc: "av_packet_side_data_free".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatafree" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataname):
  proc avpacketsidedataname*(typearg: enumavpacketsidedatatype_520094222): cstring {.
      cdecl, importc: "av_packet_side_data_name".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataname" &
        " already exists, not redeclaring")
when not declared(avpacketalloc):
  proc avpacketalloc*(): ptr Avpacket_520094230 {.cdecl,
      importc: "av_packet_alloc".}
else:
  static :
    hint("Declaration of " & "avpacketalloc" &
        " already exists, not redeclaring")
when not declared(avpacketclone):
  proc avpacketclone*(src: ptr Avpacket_520094230): ptr Avpacket_520094230 {.
      cdecl, importc: "av_packet_clone".}
else:
  static :
    hint("Declaration of " & "avpacketclone" &
        " already exists, not redeclaring")
when not declared(avpacketfree):
  proc avpacketfree*(pkt: ptr ptr Avpacket_520094230): void {.cdecl,
      importc: "av_packet_free".}
else:
  static :
    hint("Declaration of " & "avpacketfree" & " already exists, not redeclaring")
when not declared(avinitpacket):
  proc avinitpacket*(pkt: ptr Avpacket_520094230): void {.cdecl,
      importc: "av_init_packet".}
else:
  static :
    hint("Declaration of " & "avinitpacket" & " already exists, not redeclaring")
when not declared(avnewpacket):
  proc avnewpacket*(pkt: ptr Avpacket_520094230; size: cint): cint {.cdecl,
      importc: "av_new_packet".}
else:
  static :
    hint("Declaration of " & "avnewpacket" & " already exists, not redeclaring")
when not declared(avshrinkpacket):
  proc avshrinkpacket*(pkt: ptr Avpacket_520094230; size: cint): void {.cdecl,
      importc: "av_shrink_packet".}
else:
  static :
    hint("Declaration of " & "avshrinkpacket" &
        " already exists, not redeclaring")
when not declared(avgrowpacket):
  proc avgrowpacket*(pkt: ptr Avpacket_520094230; growby: cint): cint {.cdecl,
      importc: "av_grow_packet".}
else:
  static :
    hint("Declaration of " & "avgrowpacket" & " already exists, not redeclaring")
when not declared(avpacketfromdata):
  proc avpacketfromdata*(pkt: ptr Avpacket_520094230; data: ptr uint8;
                         size: cint): cint {.cdecl,
      importc: "av_packet_from_data".}
else:
  static :
    hint("Declaration of " & "avpacketfromdata" &
        " already exists, not redeclaring")
when not declared(avpacketnewsidedata):
  proc avpacketnewsidedata*(pkt: ptr Avpacket_520094230;
                            typearg: enumavpacketsidedatatype_520094222;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_new_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketnewsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketaddsidedata):
  proc avpacketaddsidedata*(pkt: ptr Avpacket_520094230;
                            typearg: enumavpacketsidedatatype_520094222;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_packet_add_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketaddsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketshrinksidedata):
  proc avpacketshrinksidedata*(pkt: ptr Avpacket_520094230;
                               typearg: enumavpacketsidedatatype_520094222;
                               size: csize_t): cint {.cdecl,
      importc: "av_packet_shrink_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketshrinksidedata" &
        " already exists, not redeclaring")
when not declared(avpacketgetsidedata):
  proc avpacketgetsidedata*(pkt: ptr Avpacket_520094230;
                            typearg: enumavpacketsidedatatype_520094222;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_get_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketgetsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketpackdictionary):
  proc avpacketpackdictionary*(dict: ptr Avdictionary_520094150;
                               size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_pack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketunpackdictionary):
  proc avpacketunpackdictionary*(data: ptr uint8; size: csize_t;
                                 dict: ptr ptr Avdictionary_520094150): cint {.
      cdecl, importc: "av_packet_unpack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketunpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketfreesidedata):
  proc avpacketfreesidedata*(pkt: ptr Avpacket_520094230): void {.cdecl,
      importc: "av_packet_free_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketfreesidedata" &
        " already exists, not redeclaring")
when not declared(avpacketref):
  proc avpacketref*(dst: ptr Avpacket_520094230; src: ptr Avpacket_520094230): cint {.
      cdecl, importc: "av_packet_ref".}
else:
  static :
    hint("Declaration of " & "avpacketref" & " already exists, not redeclaring")
when not declared(avpacketunref):
  proc avpacketunref*(pkt: ptr Avpacket_520094230): void {.cdecl,
      importc: "av_packet_unref".}
else:
  static :
    hint("Declaration of " & "avpacketunref" &
        " already exists, not redeclaring")
when not declared(avpacketmoveref):
  proc avpacketmoveref*(dst: ptr Avpacket_520094230; src: ptr Avpacket_520094230): void {.
      cdecl, importc: "av_packet_move_ref".}
else:
  static :
    hint("Declaration of " & "avpacketmoveref" &
        " already exists, not redeclaring")
when not declared(avpacketcopyprops):
  proc avpacketcopyprops*(dst: ptr Avpacket_520094230; src: ptr Avpacket_520094230): cint {.
      cdecl, importc: "av_packet_copy_props".}
else:
  static :
    hint("Declaration of " & "avpacketcopyprops" &
        " already exists, not redeclaring")
when not declared(avpacketmakerefcounted):
  proc avpacketmakerefcounted*(pkt: ptr Avpacket_520094230): cint {.cdecl,
      importc: "av_packet_make_refcounted".}
else:
  static :
    hint("Declaration of " & "avpacketmakerefcounted" &
        " already exists, not redeclaring")
when not declared(avpacketmakewritable):
  proc avpacketmakewritable*(pkt: ptr Avpacket_520094230): cint {.cdecl,
      importc: "av_packet_make_writable".}
else:
  static :
    hint("Declaration of " & "avpacketmakewritable" &
        " already exists, not redeclaring")
when not declared(avpacketrescalets):
  proc avpacketrescalets*(pkt: ptr Avpacket_520094230; tbsrc: Avrational_520094087;
                          tbdst: Avrational_520094087): void {.cdecl,
      importc: "av_packet_rescale_ts".}
else:
  static :
    hint("Declaration of " & "avpacketrescalets" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorget):
  proc avcodecdescriptorget*(id: enumavcodecid_520094190): ptr Avcodecdescriptor_520094240 {.
      cdecl, importc: "avcodec_descriptor_get".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorget" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptornext):
  proc avcodecdescriptornext*(prev: ptr Avcodecdescriptor_520094240): ptr Avcodecdescriptor_520094240 {.
      cdecl, importc: "avcodec_descriptor_next".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptornext" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorgetbyname):
  proc avcodecdescriptorgetbyname*(name: cstring): ptr Avcodecdescriptor_520094240 {.
      cdecl, importc: "avcodec_descriptor_get_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorgetbyname" &
        " already exists, not redeclaring")
when not declared(avcodecparametersalloc):
  proc avcodecparametersalloc*(): ptr Avcodecparameters_520094244 {.cdecl,
      importc: "avcodec_parameters_alloc".}
else:
  static :
    hint("Declaration of " & "avcodecparametersalloc" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfree):
  proc avcodecparametersfree*(par: ptr ptr Avcodecparameters_520094244): void {.
      cdecl, importc: "avcodec_parameters_free".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfree" &
        " already exists, not redeclaring")
when not declared(avcodecparameterscopy):
  proc avcodecparameterscopy*(dst: ptr Avcodecparameters_520094244;
                              src: ptr Avcodecparameters_520094244): cint {.
      cdecl, importc: "avcodec_parameters_copy".}
else:
  static :
    hint("Declaration of " & "avcodecparameterscopy" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration2):
  proc avgetaudioframeduration2*(par: ptr Avcodecparameters_520094244;
                                 framebytes: cint): cint {.cdecl,
      importc: "av_get_audio_frame_duration2".}
else:
  static :
    hint("Declaration of " & "avgetaudioframeduration2" &
        " already exists, not redeclaring")
when not declared(avcodecversion):
  proc avcodecversion*(): cuint {.cdecl, importc: "avcodec_version".}
else:
  static :
    hint("Declaration of " & "avcodecversion" &
        " already exists, not redeclaring")
when not declared(avcodecconfiguration):
  proc avcodecconfiguration*(): cstring {.cdecl,
      importc: "avcodec_configuration".}
else:
  static :
    hint("Declaration of " & "avcodecconfiguration" &
        " already exists, not redeclaring")
when not declared(avcodeclicense):
  proc avcodeclicense*(): cstring {.cdecl, importc: "avcodec_license".}
else:
  static :
    hint("Declaration of " & "avcodeclicense" &
        " already exists, not redeclaring")
when not declared(avcodecalloccontext3):
  proc avcodecalloccontext3*(codec: ptr Avcodec_520094198): ptr Avcodeccontext_520094254 {.
      cdecl, importc: "avcodec_alloc_context3".}
else:
  static :
    hint("Declaration of " & "avcodecalloccontext3" &
        " already exists, not redeclaring")
when not declared(avcodecfreecontext):
  proc avcodecfreecontext*(avctx: ptr ptr Avcodeccontext_520094254): void {.
      cdecl, importc: "avcodec_free_context".}
else:
  static :
    hint("Declaration of " & "avcodecfreecontext" &
        " already exists, not redeclaring")
when not declared(avcodecgetclass):
  proc avcodecgetclass*(): ptr Avclass_520094101 {.cdecl,
      importc: "avcodec_get_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetclass" &
        " already exists, not redeclaring")
when not declared(avcodecgetsubtitlerectclass):
  proc avcodecgetsubtitlerectclass*(): ptr Avclass_520094101 {.cdecl,
      importc: "avcodec_get_subtitle_rect_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetsubtitlerectclass" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfromcontext):
  proc avcodecparametersfromcontext*(par: ptr structavcodecparameters_520094242;
                                     codec: ptr Avcodeccontext_520094254): cint {.
      cdecl, importc: "avcodec_parameters_from_context".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfromcontext" &
        " already exists, not redeclaring")
when not declared(avcodecparameterstocontext):
  proc avcodecparameterstocontext*(codec: ptr Avcodeccontext_520094254;
                                   par: ptr structavcodecparameters_520094242): cint {.
      cdecl, importc: "avcodec_parameters_to_context".}
else:
  static :
    hint("Declaration of " & "avcodecparameterstocontext" &
        " already exists, not redeclaring")
when not declared(avcodecopen2):
  proc avcodecopen2*(avctx: ptr Avcodeccontext_520094254; codec: ptr Avcodec_520094198;
                     options: ptr ptr Avdictionary_520094150): cint {.cdecl,
      importc: "avcodec_open2".}
else:
  static :
    hint("Declaration of " & "avcodecopen2" & " already exists, not redeclaring")
when not declared(avcodecclose):
  proc avcodecclose*(avctx: ptr Avcodeccontext_520094254): cint {.cdecl,
      importc: "avcodec_close".}
else:
  static :
    hint("Declaration of " & "avcodecclose" & " already exists, not redeclaring")
when not declared(avsubtitlefree):
  proc avsubtitlefree*(sub: ptr Avsubtitle_520094266): void {.cdecl,
      importc: "avsubtitle_free".}
else:
  static :
    hint("Declaration of " & "avsubtitlefree" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetbuffer2):
  proc avcodecdefaultgetbuffer2*(s: ptr Avcodeccontext_520094254;
                                 frame: ptr Avframe_520094172; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_buffer2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetbuffer2" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetencodebuffer):
  proc avcodecdefaultgetencodebuffer*(s: ptr Avcodeccontext_520094254;
                                      pkt: ptr Avpacket_520094230; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_encode_buffer".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetencodebuffer" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions):
  proc avcodecaligndimensions*(s: ptr Avcodeccontext_520094254; width: ptr cint;
                               height: ptr cint): void {.cdecl,
      importc: "avcodec_align_dimensions".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions2):
  proc avcodecaligndimensions2*(s: ptr Avcodeccontext_520094254;
                                width: ptr cint; height: ptr cint;
                                linesizealign: array[8'i64, cint]): void {.
      cdecl, importc: "avcodec_align_dimensions2".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions2" &
        " already exists, not redeclaring")
when not declared(avcodecdecodesubtitle2):
  proc avcodecdecodesubtitle2*(avctx: ptr Avcodeccontext_520094254;
                               sub: ptr Avsubtitle_520094266;
                               gotsubptr: ptr cint; avpkt: ptr Avpacket_520094230): cint {.
      cdecl, importc: "avcodec_decode_subtitle2".}
else:
  static :
    hint("Declaration of " & "avcodecdecodesubtitle2" &
        " already exists, not redeclaring")
when not declared(avcodecsendpacket):
  proc avcodecsendpacket*(avctx: ptr Avcodeccontext_520094254;
                          avpkt: ptr Avpacket_520094230): cint {.cdecl,
      importc: "avcodec_send_packet".}
else:
  static :
    hint("Declaration of " & "avcodecsendpacket" &
        " already exists, not redeclaring")
when not declared(avcodecreceiveframe):
  proc avcodecreceiveframe*(avctx: ptr Avcodeccontext_520094254;
                            frame: ptr Avframe_520094172): cint {.cdecl,
      importc: "avcodec_receive_frame".}
else:
  static :
    hint("Declaration of " & "avcodecreceiveframe" &
        " already exists, not redeclaring")
when not declared(avcodecsendframe):
  proc avcodecsendframe*(avctx: ptr Avcodeccontext_520094254; frame: ptr Avframe_520094172): cint {.
      cdecl, importc: "avcodec_send_frame".}
else:
  static :
    hint("Declaration of " & "avcodecsendframe" &
        " already exists, not redeclaring")
when not declared(avcodecreceivepacket):
  proc avcodecreceivepacket*(avctx: ptr Avcodeccontext_520094254;
                             avpkt: ptr Avpacket_520094230): cint {.cdecl,
      importc: "avcodec_receive_packet".}
else:
  static :
    hint("Declaration of " & "avcodecreceivepacket" &
        " already exists, not redeclaring")
when not declared(avcodecgethwframesparameters):
  proc avcodecgethwframesparameters*(avctx: ptr Avcodeccontext_520094254;
                                     deviceref: ptr Avbufferref_520094121;
                                     hwpixfmt: enumavpixelformat_520094105;
                                     outframesref: ptr ptr Avbufferref_520094121): cint {.
      cdecl, importc: "avcodec_get_hw_frames_parameters".}
else:
  static :
    hint("Declaration of " & "avcodecgethwframesparameters" &
        " already exists, not redeclaring")
when not declared(avparseriterate):
  proc avparseriterate*(opaque: ptr pointer): ptr Avcodecparser_520094276 {.
      cdecl, importc: "av_parser_iterate".}
else:
  static :
    hint("Declaration of " & "avparseriterate" &
        " already exists, not redeclaring")
when not declared(avparserinit):
  proc avparserinit*(codecid: cint): ptr Avcodecparsercontext_520094274 {.cdecl,
      importc: "av_parser_init".}
else:
  static :
    hint("Declaration of " & "avparserinit" & " already exists, not redeclaring")
when not declared(avparserparse2):
  proc avparserparse2*(s: ptr Avcodecparsercontext_520094274;
                       avctx: ptr Avcodeccontext_520094254;
                       poutbuf: ptr ptr uint8; poutbufsize: ptr cint;
                       buf: ptr uint8; bufsize: cint; pts: int64; dts: int64;
                       pos: int64): cint {.cdecl, importc: "av_parser_parse2".}
else:
  static :
    hint("Declaration of " & "avparserparse2" &
        " already exists, not redeclaring")
when not declared(avparserclose):
  proc avparserclose*(s: ptr Avcodecparsercontext_520094274): void {.cdecl,
      importc: "av_parser_close".}
else:
  static :
    hint("Declaration of " & "avparserclose" &
        " already exists, not redeclaring")
when not declared(avcodecencodesubtitle):
  proc avcodecencodesubtitle*(avctx: ptr Avcodeccontext_520094254;
                              buf: ptr uint8; bufsize: cint; sub: ptr Avsubtitle_520094266): cint {.
      cdecl, importc: "avcodec_encode_subtitle".}
else:
  static :
    hint("Declaration of " & "avcodecencodesubtitle" &
        " already exists, not redeclaring")
when not declared(avcodecpixfmttocodectag):
  proc avcodecpixfmttocodectag*(pixfmt: enumavpixelformat_520094105): cuint {.
      cdecl, importc: "avcodec_pix_fmt_to_codec_tag".}
else:
  static :
    hint("Declaration of " & "avcodecpixfmttocodectag" &
        " already exists, not redeclaring")
when not declared(avcodecfindbestpixfmtoflist):
  proc avcodecfindbestpixfmtoflist*(pixfmtlist: ptr enumavpixelformat_520094105;
                                    srcpixfmt: enumavpixelformat_520094105;
                                    hasalpha: cint; lossptr: ptr cint): enumavpixelformat_520094105 {.
      cdecl, importc: "avcodec_find_best_pix_fmt_of_list".}
else:
  static :
    hint("Declaration of " & "avcodecfindbestpixfmtoflist" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetformat):
  proc avcodecdefaultgetformat*(s: ptr structavcodeccontext_520094250;
                                fmt: ptr enumavpixelformat_520094105): enumavpixelformat_520094105 {.
      cdecl, importc: "avcodec_default_get_format".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetformat" &
        " already exists, not redeclaring")
when not declared(avcodecstring):
  proc avcodecstring*(buf: cstring; bufsize: cint; enc: ptr Avcodeccontext_520094254;
                      encode: cint): void {.cdecl, importc: "avcodec_string".}
else:
  static :
    hint("Declaration of " & "avcodecstring" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute):
  proc avcodecdefaultexecute*(c: ptr Avcodeccontext_520094254; funcarg: proc (
      a0: ptr Avcodeccontext_520094254; a1: pointer): cint {.cdecl.};
                              arg: pointer; ret: ptr cint; count: cint;
                              size: cint): cint {.cdecl,
      importc: "avcodec_default_execute".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute2):
  proc avcodecdefaultexecute2*(c: ptr Avcodeccontext_520094254; funcarg: proc (
      a0: ptr Avcodeccontext_520094254; a1: pointer; a2: cint; a3: cint): cint {.
      cdecl.}; arg: pointer; ret: ptr cint; count: cint): cint {.cdecl,
      importc: "avcodec_default_execute2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute2" &
        " already exists, not redeclaring")
when not declared(avcodecfillaudioframe):
  proc avcodecfillaudioframe*(frame: ptr Avframe_520094172; nbchannels: cint;
                              samplefmt: enumavsampleformat_520094079;
                              buf: ptr uint8; bufsize: cint; align: cint): cint {.
      cdecl, importc: "avcodec_fill_audio_frame".}
else:
  static :
    hint("Declaration of " & "avcodecfillaudioframe" &
        " already exists, not redeclaring")
when not declared(avcodecflushbuffers):
  proc avcodecflushbuffers*(avctx: ptr Avcodeccontext_520094254): void {.cdecl,
      importc: "avcodec_flush_buffers".}
else:
  static :
    hint("Declaration of " & "avcodecflushbuffers" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration):
  proc avgetaudioframeduration*(avctx: ptr Avcodeccontext_520094254;
                                framebytes: cint): cint {.cdecl,
      importc: "av_get_audio_frame_duration".}
else:
  static :
    hint("Declaration of " & "avgetaudioframeduration" &
        " already exists, not redeclaring")
when not declared(avfastpaddedmalloc):
  proc avfastpaddedmalloc*(ptrarg: pointer; size: ptr cuint; minsize: csize_t): void {.
      cdecl, importc: "av_fast_padded_malloc".}
else:
  static :
    hint("Declaration of " & "avfastpaddedmalloc" &
        " already exists, not redeclaring")
when not declared(avfastpaddedmallocz):
  proc avfastpaddedmallocz*(ptrarg: pointer; size: ptr cuint; minsize: csize_t): void {.
      cdecl, importc: "av_fast_padded_mallocz".}
else:
  static :
    hint("Declaration of " & "avfastpaddedmallocz" &
        " already exists, not redeclaring")
when not declared(avcodecisopen):
  proc avcodecisopen*(s: ptr Avcodeccontext_520094254): cint {.cdecl,
      importc: "avcodec_is_open".}
else:
  static :
    hint("Declaration of " & "avcodecisopen" &
        " already exists, not redeclaring")