
from macros import hint

when not declared(Avoptflagimplicitkey):
  const
    Avoptflagimplicitkey* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avoptflagimplicitkey" &
        " already exists, not redeclaring")
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
      Avchannelordercustom = 2, Avchannelorderambisonic = 3
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
      Avpixfmtbayergrbg16be = 150, Avpixfmtxvmc = 151,
      Avpixfmtyuv440p10le = 152, Avpixfmtyuv440p10be = 153,
      Avpixfmtyuv440p12le = 154, Avpixfmtyuv440p12be = 155,
      Avpixfmtayuv64le = 156, Avpixfmtayuv64be = 157,
      Avpixfmtvideotoolbox = 158, Avpixfmtp010le = 159, Avpixfmtp010be = 160,
      Avpixfmtgbrap12be = 161, Avpixfmtgbrap12le = 162, Avpixfmtgbrap10be = 163,
      Avpixfmtgbrap10le = 164, Avpixfmtmediacodec = 165, Avpixfmtgray12be = 166,
      Avpixfmtgray12le = 167, Avpixfmtgray10be = 168, Avpixfmtgray10le = 169,
      Avpixfmtp016le = 170, Avpixfmtp016be = 171, Avpixfmtd3d11 = 172,
      Avpixfmtgray9be = 173, Avpixfmtgray9le = 174, Avpixfmtgbrpf32be = 175,
      Avpixfmtgbrpf32le = 176, Avpixfmtgbrapf32be = 177,
      Avpixfmtgbrapf32le = 178, Avpixfmtdrmprime = 179, Avpixfmtopencl = 180,
      Avpixfmtgray14be = 181, Avpixfmtgray14le = 182, Avpixfmtgrayf32be = 183,
      Avpixfmtgrayf32le = 184, Avpixfmtyuva422p12be = 185,
      Avpixfmtyuva422p12le = 186, Avpixfmtyuva444p12be = 187,
      Avpixfmtyuva444p12le = 188, Avpixfmtnv24 = 189, Avpixfmtnv42 = 190,
      Avpixfmtvulkan = 191, Avpixfmty210be = 192, Avpixfmty210le = 193,
      Avpixfmtx2rgb10le = 194, Avpixfmtx2rgb10be = 195, Avpixfmtx2bgr10le = 196,
      Avpixfmtx2bgr10be = 197, Avpixfmtp210be = 198, Avpixfmtp210le = 199,
      Avpixfmtp410be = 200, Avpixfmtp410le = 201, Avpixfmtp216be = 202,
      Avpixfmtp216le = 203, Avpixfmtp416be = 204, Avpixfmtp416le = 205,
      Avpixfmtvuya = 206, Avpixfmtrgbaf16be = 207, Avpixfmtrgbaf16le = 208,
      Avpixfmtvuyx = 209, Avpixfmtp012le = 210, Avpixfmtp012be = 211,
      Avpixfmty212be = 212, Avpixfmty212le = 213, Avpixfmtxv30be = 214,
      Avpixfmtxv30le = 215, Avpixfmtxv36be = 216, Avpixfmtxv36le = 217,
      Avpixfmtrgbf32be = 218, Avpixfmtrgbf32le = 219, Avpixfmtrgbaf32be = 220,
      Avpixfmtrgbaf32le = 221, Avpixfmtp212be = 222, Avpixfmtp212le = 223,
      Avpixfmtp412be = 224, Avpixfmtp412le = 225, Avpixfmtgbrap14be = 226,
      Avpixfmtgbrap14le = 227, Avpixfmtnb = 228
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
      Avcolspcictcp = 14, Avcolspcnb = 15
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
when not declared(enumavoptiontype):
  type
    enumavoptiontype* {.size: sizeof(cuint).} = enum
      Avopttypeflags = 0, Avopttypeint = 1, Avopttypeint64 = 2,
      Avopttypedouble = 3, Avopttypefloat = 4, Avopttypestring = 5,
      Avopttyperational = 6, Avopttypebinary = 7, Avopttypedict = 8,
      Avopttypeuint64 = 9, Avopttypeconst = 10, Avopttypeimagesize = 11,
      Avopttypepixelfmt = 12, Avopttypesamplefmt = 13, Avopttypevideorate = 14,
      Avopttypeduration = 15, Avopttypecolor = 16, Avopttypechannellayout = 17,
      Avopttypebool = 18, Avopttypechlayout = 19
else:
  static :
    hint("Declaration of " & "enumavoptiontype" &
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
when not declared(enumavhwdevicetype):
  type
    enumavhwdevicetype* {.size: sizeof(cuint).} = enum
      Avhwdevicetypenone = 0, Avhwdevicetypevdpau = 1, Avhwdevicetypecuda = 2,
      Avhwdevicetypevaapi = 3, Avhwdevicetypedxva2 = 4, Avhwdevicetypeqsv = 5,
      Avhwdevicetypevideotoolbox = 6, Avhwdevicetyped3d11va = 7,
      Avhwdevicetypedrm = 8, Avhwdevicetypeopencl = 9,
      Avhwdevicetypemediacodec = 10, Avhwdevicetypevulkan = 11
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
      Avcodecidfirstaudio = 65536, Avcodecidpcms16be = 65537,
      Avcodecidpcmu16le = 65538, Avcodecidpcmu16be = 65539,
      Avcodecidpcms8 = 65540, Avcodecidpcmu8 = 65541, Avcodecidpcmmulaw = 65542,
      Avcodecidpcmalaw = 65543, Avcodecidpcms32le = 65544,
      Avcodecidpcms32be = 65545, Avcodecidpcmu32le = 65546,
      Avcodecidpcmu32be = 65547, Avcodecidpcms24le = 65548,
      Avcodecidpcms24be = 65549, Avcodecidpcmu24le = 65550,
      Avcodecidpcmu24be = 65551, Avcodecidpcms24daud = 65552,
      Avcodecidpcmzork = 65553, Avcodecidpcms16leplanar = 65554,
      Avcodecidpcmdvd = 65555, Avcodecidpcmf32be = 65556,
      Avcodecidpcmf32le = 65557, Avcodecidpcmf64be = 65558,
      Avcodecidpcmf64le = 65559, Avcodecidpcmbluray = 65560,
      Avcodecidpcmlxf = 65561, Avcodecids302m = 65562,
      Avcodecidpcms8planar = 65563, Avcodecidpcms24leplanar = 65564,
      Avcodecidpcms32leplanar = 65565, Avcodecidpcms16beplanar = 65566,
      Avcodecidpcms64le = 65567, Avcodecidpcms64be = 65568,
      Avcodecidpcmf16le = 65569, Avcodecidpcmf24le = 65570,
      Avcodecidpcmvidc = 65571, Avcodecidpcmsga = 65572,
      Avcodecidadpcmimaqt = 69632, Avcodecidadpcmimawav = 69633,
      Avcodecidadpcmimadk3 = 69634, Avcodecidadpcmimadk4 = 69635,
      Avcodecidadpcmimaws = 69636, Avcodecidadpcmimasmjpeg = 69637,
      Avcodecidadpcmms = 69638, Avcodecidadpcm4xm = 69639,
      Avcodecidadpcmxa = 69640, Avcodecidadpcmadx = 69641,
      Avcodecidadpcmea = 69642, Avcodecidadpcmg726 = 69643,
      Avcodecidadpcmct = 69644, Avcodecidadpcmswf = 69645,
      Avcodecidadpcmyamaha = 69646, Avcodecidadpcmsbpro4 = 69647,
      Avcodecidadpcmsbpro3 = 69648, Avcodecidadpcmsbpro2 = 69649,
      Avcodecidadpcmthp = 69650, Avcodecidadpcmimaamv = 69651,
      Avcodecidadpcmear1 = 69652, Avcodecidadpcmear3 = 69653,
      Avcodecidadpcmear2 = 69654, Avcodecidadpcmimaeasead = 69655,
      Avcodecidadpcmimaeaeacs = 69656, Avcodecidadpcmeaxas = 69657,
      Avcodecidadpcmeamaxisxa = 69658, Avcodecidadpcmimaiss = 69659,
      Avcodecidadpcmg722 = 69660, Avcodecidadpcmimaapc = 69661,
      Avcodecidadpcmvima = 69662, Avcodecidadpcmafc = 69663,
      Avcodecidadpcmimaoki = 69664, Avcodecidadpcmdtk = 69665,
      Avcodecidadpcmimarad = 69666, Avcodecidadpcmg726le = 69667,
      Avcodecidadpcmthple = 69668, Avcodecidadpcmpsx = 69669,
      Avcodecidadpcmaica = 69670, Avcodecidadpcmimadat4 = 69671,
      Avcodecidadpcmmtaf = 69672, Avcodecidadpcmagm = 69673,
      Avcodecidadpcmargo = 69674, Avcodecidadpcmimassi = 69675,
      Avcodecidadpcmzork = 69676, Avcodecidadpcmimaapm = 69677,
      Avcodecidadpcmimaalp = 69678, Avcodecidadpcmimamtf = 69679,
      Avcodecidadpcmimacunning = 69680, Avcodecidadpcmimamoflex = 69681,
      Avcodecidadpcmimaacorn = 69682, Avcodecidadpcmxmd = 69683,
      Avcodecidamrnb = 73728, Avcodecidamrwb = 73729, Avcodecidra144 = 77824,
      Avcodecidra288 = 77825, Avcodecidroqdpcm = 81920,
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
      Avcodecidosq = 86120, Avcodecidfirstsubtitle = 94208,
      Avcodeciddvbsubtitle = 94209, Avcodecidtext = 94210,
      Avcodecidxsub = 94211, Avcodecidssa = 94212, Avcodecidmovtext = 94213,
      Avcodecidhdmvpgssubtitle = 94214, Avcodeciddvbteletext = 94215,
      Avcodecidsrt = 94216, Avcodecidmicrodvd = 94217, Avcodecideia608 = 94218,
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
      Avpktdatanb = 32
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
when not declared(structavdeviceinfolist):
  type
    structavdeviceinfolist* = distinct object
else:
  static :
    hint("Declaration of " & "structavdeviceinfolist" &
        " already exists, not redeclaring")
when not declared(structavhwdeviceinternal):
  type
    structavhwdeviceinternal* = distinct object
else:
  static :
    hint("Declaration of " & "structavhwdeviceinternal" &
        " already exists, not redeclaring")
when not declared(structavbprint):
  type
    structavbprint* = distinct object
else:
  static :
    hint("Declaration of " & "structavbprint" &
        " already exists, not redeclaring")
when not declared(structurlcontext):
  type
    structurlcontext* = distinct object
else:
  static :
    hint("Declaration of " & "structurlcontext" &
        " already exists, not redeclaring")
when not declared(structavbufferpool):
  type
    structavbufferpool* = distinct object
else:
  static :
    hint("Declaration of " & "structavbufferpool" &
        " already exists, not redeclaring")
when not declared(structiowidedata):
  type
    structiowidedata* = distinct object
else:
  static :
    hint("Declaration of " & "structiowidedata" &
        " already exists, not redeclaring")
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
when not declared(Libavcodecversionint):
  type
    Libavcodecversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libavcodecversionint" &
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
when not declared(Libswscaleversionint):
  type
    Libswscaleversionint* = distinct object
else:
  static :
    hint("Declaration of " & "Libswscaleversionint" &
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
when not declared(structavbuffer):
  type
    structavbuffer* = distinct object
else:
  static :
    hint("Declaration of " & "structavbuffer" &
        " already exists, not redeclaring")
when not declared(structswscontext):
  type
    structswscontext* = distinct object
else:
  static :
    hint("Declaration of " & "structswscontext" &
        " already exists, not redeclaring")
when not declared(structavhwframesinternal):
  type
    structavhwframesinternal* = distinct object
else:
  static :
    hint("Declaration of " & "structavhwframesinternal" &
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
when not declared(structiomarker):
  type
    structiomarker* = distinct object
else:
  static :
    hint("Declaration of " & "structiomarker" &
        " already exists, not redeclaring")
type
  structavchannelcustom_520094084 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094079 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:271:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom_520094086 = structavchannelcustom_520094085 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:275:3
  structavchannellayout_u_t* {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094087

  structavchannellayout_520094088 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094081 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:307:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout_520094090 = structavchannellayout_520094089 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:365:3
  Avclasscategory_520094096 = enumavclasscategory_520094095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:47:2
  structavclass_520094098 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption_520094101
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094097
    getcategory*: proc (a0: pointer): Avclasscategory_520094097 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges_520094103; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094099 {.
        cdecl.}

  structavoption_defaultval_t {.union, bycopy.} = object
    i64*: int64
    dbl*: cdouble
    str*: cstring
    q*: Avrational_520094117

  structavoption_520094100 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:251:16
    help*: cstring
    offset*: cint
    typefield*: enumavoptiontype_520094150
    defaultval*: structavoption_defaultval_t
    min*: cdouble
    max*: cdouble
    flags*: cint
    unit*: cstring

  structavoptionranges_520094102 {.pure, inheritable, bycopy.} = object
    range*: ptr ptr Avoptionrange_520094156 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:336:16
    nbranges*: cint
    nbcomponents*: cint

  Avclass_520094104 = structavclass_520094099 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:147:3
  valist_520094106 = compilergnucvalist_520094372 ## Generated based on /usr/include/stdio.h:53:24
  structavdictionaryentry_520094108 {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:89:16
    value*: cstring

  Avdictionaryentry_520094110 = structavdictionaryentry_520094109 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:92:3
  Avdictionary_520094112 = structavdictionary ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:94:29
  structavrational_520094114 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094116 = structavrational_520094115 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/rational.h:61:3
  unionavintfloat32_520094122 {.union, bycopy.} = object
    i*: uint32               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/intfloat.h:27:7
    f*: cfloat

  unionavintfloat64_520094124 {.union, bycopy.} = object
    i*: uint64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/intfloat.h:32:7
    f*: cdouble

  File_520094147 = structiofile_520094374 ## Generated based on /usr/include/bits/types/FILE.h:7:25
  Avoption_520094151 = structavoption_520094101 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:308:3
  structavoptionrange_520094153 {.pure, inheritable, bycopy.} = object
    str*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:313:16
    valuemin*: cdouble
    valuemax*: cdouble
    componentmin*: cdouble
    componentmax*: cdouble
    isrange*: cint

  Avoptionrange_520094155 = structavoptionrange_520094154 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:331:3
  Avoptionranges_520094157 = structavoptionranges_520094103 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:376:3
  structavcomponentdescriptor_520094159 {.pure, inheritable, bycopy.} = object
    plane*: cint             ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:30:16
    step*: cint
    offset*: cint
    shift*: cint
    depth*: cint

  Avcomponentdescriptor_520094161 = structavcomponentdescriptor_520094160 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:58:3
  structavpixfmtdescriptor_520094163 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:69:16
    nbcomponents*: uint8
    log2chromaw*: uint8
    log2chromah*: uint8
    flags*: uint64
    comp*: array[4'i64, Avcomponentdescriptor_520094162]
    alias*: cstring

  Avpixfmtdescriptor_520094165 = structavpixfmtdescriptor_520094164 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:111:3
  ptrdifft_520094167 = clong ## Generated based on /usr/lib/clang/17/include/stddef.h:35:26
  Avbuffer_520094169 = structavbuffer ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/buffer.h:74:25
  structavbufferref_520094171 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520094170 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  Avbufferref_520094173 = structavbufferref_520094172 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/buffer.h:95:3
  Avbufferpool_520094175 = structavbufferpool ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/buffer.h:255:29
  structavframesidedata_520094181 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520094178 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:246:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520094113
    buf*: ptr Avbufferref_520094174

  Avframesidedata_520094183 = structavframesidedata_520094182 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:252:3
  structavregionofinterest_520094185 {.pure, inheritable, bycopy.} = object
    selfsize*: uint32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:265:16
    top*: cint
    bottom*: cint
    left*: cint
    right*: cint
    qoffset*: Avrational_520094117

  Avregionofinterest_520094187 = structavregionofinterest_520094186 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:308:3
  structavframe_520094189 {.pure, inheritable, bycopy.} = object
    data*: array[8'i64, ptr uint8] ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:340:16
    linesize*: array[8'i64, cint]
    extendeddata*: ptr ptr uint8
    width*: cint
    height*: cint
    nbsamples*: cint
    format*: cint
    keyframe*: cint
    picttype*: enumavpicturetype_520094121
    sampleaspectratio*: Avrational_520094117
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520094117
    codedpicturenumber*: cint
    displaypicturenumber*: cint
    quality*: cint
    opaque*: pointer
    repeatpict*: cint
    interlacedframe*: cint
    topfieldfirst*: cint
    palettehaschanged*: cint
    reorderedopaque*: int64
    samplerate*: cint
    channellayout*: uint64
    buf*: array[8'i64, ptr Avbufferref_520094174]
    extendedbuf*: ptr ptr Avbufferref_520094174
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520094184
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520094144
    colorprimaries*: enumavcolorprimaries_520094131
    colortrc*: enumavcolortransfercharacteristic_520094133
    colorspace*: enumavcolorspace_520094142
    chromalocation*: enumavchromalocation_520094146
    bestefforttimestamp*: int64
    pktpos*: int64
    pktduration*: int64
    metadata*: ptr Avdictionary_520094113
    decodeerrorflags*: cint
    channels*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520094174
    opaqueref*: ptr Avbufferref_520094174
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520094174
    chlayout*: Avchannellayout_520094091
    duration*: int64

  Avframe_520094191 = structavframe_520094190 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:808:3
  Avhwdeviceinternal_520094195 = structavhwdeviceinternal ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:42:35
  structavhwdevicecontext_520094197 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:61:16
    internal*: ptr Avhwdeviceinternal_520094196
    typefield*: enumavhwdevicetype_520094194
    hwctx*: pointer
    free*: proc (a0: ptr structavhwdevicecontext_520094198): void {.cdecl.}
    useropaque*: pointer

  Avhwdevicecontext_520094199 = structavhwdevicecontext_520094198 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:110:3
  Avhwframesinternal_520094201 = structavhwframesinternal ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:112:35
  structavhwframescontext_520094203 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:124:16
    internal*: ptr Avhwframesinternal_520094202
    deviceref*: ptr Avbufferref_520094174
    devicectx*: ptr Avhwdevicecontext_520094200
    hwctx*: pointer
    free*: proc (a0: ptr structavhwframescontext_520094204): void {.cdecl.}
    useropaque*: pointer
    pool*: ptr Avbufferpool_520094176
    initialpoolsize*: cint
    format*: enumavpixelformat_520094129
    swformat*: enumavpixelformat_520094129
    width*: cint
    height*: cint

  Avhwframescontext_520094205 = structavhwframescontext_520094204 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:230:3
  structavhwframesconstraints_520094209 {.pure, inheritable, bycopy.} = object
    validhwformats*: ptr enumavpixelformat_520094129 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:453:16
    validswformats*: ptr enumavpixelformat_520094129
    minwidth*: cint
    minheight*: cint
    maxwidth*: cint
    maxheight*: cint

  Avhwframesconstraints_520094211 = structavhwframesconstraints_520094210 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/hwcontext.h:480:3
  structavprofile_520094215 {.pure, inheritable, bycopy.} = object
    profile*: cint           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:179:16
    name*: cstring

  Avprofile_520094217 = structavprofile_520094216 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:182:3
  structavcodec_520094219 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:187:16
    longname*: cstring
    typefield*: enumavmediatype_520094119
    id*: enumavcodecid_520094214
    capabilities*: cint
    maxlowres*: uint8
    supportedframerates*: ptr Avrational_520094117
    pixfmts*: ptr enumavpixelformat_520094129
    supportedsamplerates*: ptr cint
    samplefmts*: ptr enumavsampleformat_520094093
    channellayouts*: ptr uint64
    privclass*: ptr Avclass_520094105
    profiles*: ptr Avprofile_520094218
    wrappername*: cstring
    chlayouts*: ptr Avchannellayout_520094091

  Avcodec_520094221 = structavcodec_520094220 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:238:3
  structavcodechwconfig_520094223 {.pure, inheritable, bycopy.} = object
    pixfmt*: enumavpixelformat_520094129 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:341:16
    methods*: cint
    devicetype*: enumavhwdevicetype_520094194

  Avcodechwconfig_520094225 = structavcodechwconfig_520094224 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec.h:363:3
  structavpanscan_520094233 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:240:16
    width*: cint
    height*: cint
    position*: array[3'i64, array[2'i64, int16]]

  Avpanscan_520094235 = structavpanscan_520094234 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:262:3
  structavcpbproperties_520094237 {.pure, inheritable, bycopy.} = object
    maxbitrate*: int64       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:269:16
    minbitrate*: int64
    avgbitrate*: int64
    buffersize*: int64
    vbvdelay*: uint64

  Avcpbproperties_520094239 = structavcpbproperties_520094238 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:300:3
  structavproducerreferencetime_520094241 {.pure, inheritable, bycopy.} = object
    wallclock*: int64        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:318:16
    flags*: cint

  Avproducerreferencetime_520094243 = structavproducerreferencetime_520094242 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:324:3
  structavpacketsidedata_520094247 {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:342:16
    size*: csize_t
    typefield*: enumavpacketsidedatatype_520094246

  Avpacketsidedata_520094249 = structavpacketsidedata_520094248 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:346:3
  structavpacket_520094251 {.pure, inheritable, bycopy.} = object
    buf*: ptr Avbufferref_520094174 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:468:16
    pts*: int64
    dts*: int64
    data*: ptr uint8
    size*: cint
    streamindex*: cint
    flags*: cint
    sidedata*: ptr Avpacketsidedata_520094250
    sidedataelems*: cint
    duration*: int64
    pos*: int64
    opaque*: pointer
    opaqueref*: ptr Avbufferref_520094174
    timebase*: Avrational_520094117

  Avpacket_520094253 = structavpacket_520094252 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:536:3
  structavpacketlist_520094255 {.pure, inheritable, bycopy.} = object
    pkt*: Avpacket_520094254 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:540:16
    next*: ptr structavpacketlist_520094256

  Avpacketlist_520094257 = structavpacketlist_520094256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:543:3
  structavcodecdescriptor_520094261 {.pure, inheritable, bycopy.} = object
    id*: enumavcodecid_520094214 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec_desc.h:38:16
    typefield*: enumavmediatype_520094119
    name*: cstring
    longname*: cstring
    props*: cint
    mimetypes*: ptr cstring
    profiles*: ptr structavprofile_520094216

  Avcodecdescriptor_520094263 = structavcodecdescriptor_520094262 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec_desc.h:66:3
  structavcodecparameters_520094265 {.pure, inheritable, bycopy.} = object
    codectype*: enumavmediatype_520094119 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec_par.h:47:16
    codecid*: enumavcodecid_520094214
    codectag*: uint32
    extradata*: ptr uint8
    extradatasize*: cint
    format*: cint
    bitrate*: int64
    bitspercodedsample*: cint
    bitsperrawsample*: cint
    profile*: cint
    level*: cint
    width*: cint
    height*: cint
    sampleaspectratio*: Avrational_520094117
    fieldorder*: enumavfieldorder_520094228
    colorrange*: enumavcolorrange_520094144
    colorprimaries*: enumavcolorprimaries_520094131
    colortrc*: enumavcolortransfercharacteristic_520094133
    colorspace*: enumavcolorspace_520094142
    chromalocation*: enumavchromalocation_520094146
    videodelay*: cint
    channellayout*: uint64
    channels*: cint
    samplerate*: cint
    blockalign*: cint
    framesize*: cint
    initialpadding*: cint
    trailingpadding*: cint
    seekpreroll*: cint
    chlayout*: Avchannellayout_520094091
    framerate*: Avrational_520094117
    codedsidedata*: ptr Avpacketsidedata_520094250
    nbcodedsidedata*: cint

  Avcodecparameters_520094267 = structavcodecparameters_520094266 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/codec_par.h:229:3
  structrcoverride_520094269 {.pure, inheritable, bycopy.} = object
    startframe*: cint        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:200:16
    endframe*: cint
    qscale*: cint
    qualityfactor*: cfloat

  Rcoverride_520094271 = structrcoverride_520094270 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:205:3
  structavcodeccontext_520094273 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:441:16
    logleveloffset*: cint
    codectype*: enumavmediatype_520094119
    codec*: ptr structavcodec_520094220
    codecid*: enumavcodecid_520094214
    codectag*: cuint
    privdata*: pointer
    internal*: ptr structavcodecinternal
    opaque*: pointer
    bitrate*: int64
    bitratetolerance*: cint
    globalquality*: cint
    compressionlevel*: cint
    flags*: cint
    flags2*: cint
    extradata*: ptr uint8
    extradatasize*: cint
    timebase*: Avrational_520094117
    ticksperframe*: cint
    delay*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    gopsize*: cint
    pixfmt*: enumavpixelformat_520094129
    drawhorizband*: proc (a0: ptr structavcodeccontext_520094274;
                          a1: ptr Avframe_520094192; a2: array[8'i64, cint];
                          a3: cint; a4: cint; a5: cint): void {.cdecl.}
    getformat*: proc (a0: ptr structavcodeccontext_520094274;
                      a1: ptr enumavpixelformat_520094129): enumavpixelformat_520094129 {.
        cdecl.}
    maxbframes*: cint
    bquantfactor*: cfloat
    bquantoffset*: cfloat
    hasbframes*: cint
    iquantfactor*: cfloat
    iquantoffset*: cfloat
    lumimasking*: cfloat
    temporalcplxmasking*: cfloat
    spatialcplxmasking*: cfloat
    pmasking*: cfloat
    darkmasking*: cfloat
    slicecount*: cint
    sliceoffset*: ptr cint
    sampleaspectratio*: Avrational_520094117
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
    sliceflags*: cint
    mbdecision*: cint
    intramatrix*: ptr uint16
    intermatrix*: ptr uint16
    intradcprecision*: cint
    skiptop*: cint
    skipbottom*: cint
    mblmin*: cint
    mblmax*: cint
    bidirrefine*: cint
    keyintmin*: cint
    refs*: cint
    mv0threshold*: cint
    colorprimaries*: enumavcolorprimaries_520094131
    colortrc*: enumavcolortransfercharacteristic_520094133
    colorspace*: enumavcolorspace_520094142
    colorrange*: enumavcolorrange_520094144
    chromasamplelocation*: enumavchromalocation_520094146
    slices*: cint
    fieldorder*: enumavfieldorder_520094228
    samplerate*: cint
    channels*: cint
    samplefmt*: enumavsampleformat_520094093
    framesize*: cint
    framenumber*: cint
    blockalign*: cint
    cutoff*: cint
    channellayout*: uint64
    requestchannellayout*: uint64
    audioservicetype*: enumavaudioservicetype_520094232
    requestsamplefmt*: enumavsampleformat_520094093
    getbuffer2*: proc (a0: ptr structavcodeccontext_520094274; a1: ptr Avframe_520094192;
                       a2: cint): cint {.cdecl.}
    qcompress*: cfloat
    qblur*: cfloat
    qmin*: cint
    qmax*: cint
    maxqdiff*: cint
    rcbuffersize*: cint
    rcoverridecount*: cint
    rcoverride*: ptr Rcoverride_520094272
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
    reorderedopaque*: int64
    hwaccel*: ptr structavhwaccel_520094276
    hwaccelcontext*: pointer
    error*: array[8'i64, uint64]
    dctalgo*: cint
    idctalgo*: cint
    bitspercodedsample*: cint
    bitsperrawsample*: cint
    lowres*: cint
    threadcount*: cint
    threadtype*: cint
    activethreadtype*: cint
    execute*: proc (a0: ptr structavcodeccontext_520094274; a1: proc (
        a0: ptr structavcodeccontext_520094274; a1: pointer): cint {.cdecl.};
                    a2: pointer; a3: ptr cint; a4: cint; a5: cint): cint {.cdecl.}
    execute2*: proc (a0: ptr structavcodeccontext_520094274; a1: proc (
        a0: ptr structavcodeccontext_520094274; a1: pointer; a2: cint; a3: cint): cint {.
        cdecl.}; a2: pointer; a3: ptr cint; a4: cint): cint {.cdecl.}
    nsseweight*: cint
    profile*: cint
    level*: cint
    skiploopfilter*: enumavdiscard_520094230
    skipidct*: enumavdiscard_520094230
    skipframe*: enumavdiscard_520094230
    subtitleheader*: ptr uint8
    subtitleheadersize*: cint
    initialpadding*: cint
    framerate*: Avrational_520094117
    swpixfmt*: enumavpixelformat_520094129
    pkttimebase*: Avrational_520094117
    codecdescriptor*: ptr structavcodecdescriptor_520094262
    ptscorrectionnumfaultypts*: int64
    ptscorrectionnumfaultydts*: int64
    ptscorrectionlastpts*: int64
    ptscorrectionlastdts*: int64
    subcharenc*: cstring
    subcharencmode*: cint
    skipalpha*: cint
    seekpreroll*: cint
    chromaintramatrix*: ptr uint16
    dumpseparator*: ptr uint8
    codecwhitelist*: cstring
    properties*: cuint
    codedsidedata*: ptr Avpacketsidedata_520094250
    nbcodedsidedata*: cint
    hwframesctx*: ptr Avbufferref_520094174
    trailingpadding*: cint
    maxpixels*: int64
    hwdevicectx*: ptr Avbufferref_520094174
    hwaccelflags*: cint
    applycropping*: cint
    extrahwframes*: cint
    discarddamagedpercentage*: cint
    maxsamples*: int64
    exportsidedata*: cint
    getencodebuffer*: proc (a0: ptr structavcodeccontext_520094274;
                            a1: ptr Avpacket_520094254; a2: cint): cint {.cdecl.}
    chlayout*: Avchannellayout_520094091
    framenum*: int64

  structavhwaccel_520094275 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2129:16
    typefield*: enumavmediatype_520094119
    id*: enumavcodecid_520094214
    pixfmt*: enumavpixelformat_520094129
    capabilities*: cint

  Avcodeccontext_520094277 = structavcodeccontext_520094274 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2119:3
  Avhwaccel_520094279 = structavhwaccel_520094276 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2163:3
  structavsubtitlerect_520094283 {.pure, inheritable, bycopy.} = object
    x*: cint                 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2241:16
    y*: cint
    w*: cint
    h*: cint
    nbcolors*: cint
    data*: array[4'i64, ptr uint8]
    linesize*: array[4'i64, cint]
    typefield*: enumavsubtitletype_520094282
    text*: cstring
    ass*: cstring
    flags*: cint

  Avsubtitlerect_520094285 = structavsubtitlerect_520094284 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2267:3
  structavsubtitle_520094287 {.pure, inheritable, bycopy.} = object
    format*: uint16          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2269:16
    startdisplaytime*: uint32
    enddisplaytime*: uint32
    numrects*: cuint
    rects*: ptr ptr Avsubtitlerect_520094286
    pts*: int64

  Avsubtitle_520094289 = structavsubtitle_520094288 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2276:3
  structavcodecparsercontext_520094293 {.pure, inheritable, bycopy.} = object
    privdata*: pointer       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2774:16
    parser*: ptr structavcodecparser_520094296
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
    fieldorder*: enumavfieldorder_520094228
    picturestructure*: enumavpicturestructure_520094292
    outputpicturenumber*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    format*: cint

  structavcodecparser_520094295 {.pure, inheritable, bycopy.} = object
    codecids*: array[7'i64, cint] ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2933:16
    privdatasize*: cint
    parserinit*: proc (a0: ptr Avcodecparsercontext_520094298): cint {.cdecl.}
    parserparse*: proc (a0: ptr Avcodecparsercontext_520094298;
                        a1: ptr Avcodeccontext_520094278; a2: ptr ptr uint8;
                        a3: ptr cint; a4: ptr uint8; a5: cint): cint {.cdecl.}
    parserclose*: proc (a0: ptr Avcodecparsercontext_520094298): void {.cdecl.}
    split*: proc (a0: ptr Avcodeccontext_520094278; a1: ptr uint8; a2: cint): cint {.
        cdecl.}

  Avcodecparsercontext_520094297 = structavcodecparsercontext_520094294 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2931:3
  Avcodecparser_520094299 = structavcodecparser_520094296 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2945:3
  structaviointerruptcb_520094301 {.pure, inheritable, bycopy.} = object
    callback*: proc (a0: pointer): cint {.cdecl.} ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:59:16
    opaque*: pointer

  Aviointerruptcb_520094303 = structaviointerruptcb_520094302 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:62:3
  structaviodirentry_520094307 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:87:16
    typefield*: cint
    utf8*: cint
    size*: int64
    modificationtimestamp*: int64
    accesstimestamp*: int64
    statuschangetimestamp*: int64
    userid*: int64
    groupid*: int64
    filemode*: int64

  Aviodirentry_520094309 = structaviodirentry_520094308 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:102:3
  structaviodircontext_520094311 {.pure, inheritable, bycopy.} = object
    urlcontext*: ptr structurlcontext ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:105:16
  
  Aviodircontext_520094313 = structaviodircontext_520094312 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:107:3
  structaviocontext_520094317 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:166:16
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
                          a3: enumaviodatamarkertype_520094316; a4: int64): cint {.
        cdecl.}
    ignoreboundarypoint*: cint
    bufptrmax*: ptr uint8
    bytesread*: int64
    byteswritten*: int64

  Aviocontext_520094319 = structaviocontext_520094318 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:322:3
  structavprobedata_520094321 {.pure, inheritable, bycopy.} = object
    filename*: cstring       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:452:16
    buf*: ptr uint8
    bufsize*: cint
    mimetype*: cstring

  Avprobedata_520094323 = structavprobedata_520094322 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:457:3
  structavoutputformat_520094325 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:510:16
    longname*: cstring
    mimetype*: cstring
    extensions*: cstring
    audiocodec*: enumavcodecid_520094214
    videocodec*: enumavcodecid_520094214
    subtitlecodec*: enumavcodecid_520094214
    flags*: cint
    codectag*: ptr ptr structavcodectag
    privclass*: ptr Avclass_520094105

  Avoutputformat_520094327 = structavoutputformat_520094326 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:540:3
  structavinputformat_520094329 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:549:16
    longname*: cstring
    flags*: cint
    extensions*: cstring
    codectag*: ptr ptr structavcodectag
    privclass*: ptr Avclass_520094105
    mimetype*: cstring
    rawcodecid*: cint
    privdatasize*: cint
    flagsinternal*: cint
    readprobe*: proc (a0: ptr Avprobedata_520094324): cint {.cdecl.}
    readheader*: proc (a0: ptr structavformatcontext_520094332): cint {.cdecl.}
    readpacket*: proc (a0: ptr structavformatcontext_520094332; a1: ptr Avpacket_520094254): cint {.
        cdecl.}
    readclose*: proc (a0: ptr structavformatcontext_520094332): cint {.cdecl.}
    readseek*: proc (a0: ptr structavformatcontext_520094332; a1: cint;
                     a2: int64; a3: cint): cint {.cdecl.}
    readtimestamp*: proc (a0: ptr structavformatcontext_520094332; a1: cint;
                          a2: ptr int64; a3: int64): int64 {.cdecl.}
    readplay*: proc (a0: ptr structavformatcontext_520094332): cint {.cdecl.}
    readpause*: proc (a0: ptr structavformatcontext_520094332): cint {.cdecl.}
    readseek2*: proc (a0: ptr structavformatcontext_520094332; a1: cint;
                      a2: int64; a3: int64; a4: int64; a5: cint): cint {.cdecl.}
    getdevicelist*: proc (a0: ptr structavformatcontext_520094332;
                          a1: ptr structavdeviceinfolist): cint {.cdecl.}

  structavformatcontext_520094331 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1117:16
    iformat*: ptr structavinputformat_520094330
    oformat*: ptr structavoutputformat_520094326
    privdata*: pointer
    pb*: ptr Aviocontext_520094320
    ctxflags*: cint
    nbstreams*: cuint
    streams*: ptr ptr Avstream_520094344
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
    programs*: ptr ptr Avprogram_520094348
    videocodecid*: enumavcodecid_520094214
    audiocodecid*: enumavcodecid_520094214
    subtitlecodecid*: enumavcodecid_520094214
    maxindexsize*: cuint
    maxpicturebuffer*: cuint
    nbchapters*: cuint
    chapters*: ptr ptr Avchapter_520094352
    metadata*: ptr Avdictionary_520094113
    starttimerealtime*: int64
    fpsprobesize*: cint
    errorrecognition*: cint
    interruptcallback*: Aviointerruptcb_520094304
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
    durationestimationmethod*: enumavdurationestimationmethod_520094358
    skipinitialbytes*: int64
    correcttsoverflow*: cuint
    seek2any*: cint
    flushpackets*: cint
    probescore*: cint
    formatprobesize*: cint
    codecwhitelist*: cstring
    formatwhitelist*: cstring
    iorepositioned*: cint
    videocodec*: ptr structavcodec_520094220
    audiocodec*: ptr structavcodec_520094220
    subtitlecodec*: ptr structavcodec_520094220
    datacodec*: ptr structavcodec_520094220
    metadataheaderpadding*: cint
    opaque*: pointer
    controlmessagecb*: avformatcontrolmessage_520094354
    outputtsoffset*: int64
    dumpseparator*: ptr uint8
    datacodecid*: enumavcodecid_520094214
    protocolwhitelist*: cstring
    ioopen*: proc (a0: ptr structavformatcontext_520094332;
                   a1: ptr ptr Aviocontext_520094320; a2: cstring; a3: cint;
                   a4: ptr ptr Avdictionary_520094113): cint {.cdecl.}
    ioclose*: proc (a0: ptr structavformatcontext_520094332; a1: ptr Aviocontext_520094320): void {.
        cdecl.}
    protocolblacklist*: cstring
    maxstreams*: cint
    skipestimatedurationfrompts*: cint
    maxprobepackets*: cint
    ioclose2*: proc (a0: ptr structavformatcontext_520094332;
                     a1: ptr Aviocontext_520094320): cint {.cdecl.}

  Avinputformat_520094333 = structavinputformat_520094330 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:684:3
  structavindexentry_520094337 {.pure, inheritable, bycopy.} = object
    pos*: int64              ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:700:16
    timestamp*: int64
    flags* {.bitsize: 2'i64.}: cint
    size* {.bitsize: 30'i64.}: cint
    mindistance*: cint

  Avindexentry_520094339 = structavindexentry_520094338 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:715:3
  structavstream_520094341 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094105 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:843:16
    index*: cint
    id*: cint
    codecpar*: ptr Avcodecparameters_520094268
    privdata*: pointer
    timebase*: Avrational_520094117
    starttime*: int64
    duration*: int64
    nbframes*: int64
    disposition*: cint
    discardfield*: enumavdiscard_520094230
    sampleaspectratio*: Avrational_520094117
    metadata*: ptr Avdictionary_520094113
    avgframerate*: Avrational_520094117
    attachedpic*: Avpacket_520094254
    sidedata*: ptr Avpacketsidedata_520094250
    nbsidedata*: cint
    eventflags*: cint
    rframerate*: Avrational_520094117
    ptswrapbits*: cint

  Avstream_520094343 = structavstream_520094342 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1019:3
  structavprogram_520094345 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1041:16
    flags*: cint
    discardfield*: enumavdiscard_520094230
    streamindex*: ptr cuint
    nbstreamindexes*: cuint
    metadata*: ptr Avdictionary_520094113
    programnum*: cint
    pmtpid*: cint
    pcrpid*: cint
    pmtversion*: cint
    starttime*: int64
    endtime*: int64
    ptswrapreference*: int64
    ptswrapbehavior*: cint

  Avprogram_520094347 = structavprogram_520094346 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1066:3
  structavchapter_520094349 {.pure, inheritable, bycopy.} = object
    id*: int64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1076:16
    timebase*: Avrational_520094117
    start*: int64
    endfield*: int64
    metadata*: ptr Avdictionary_520094113

  Avchapter_520094351 = structavchapter_520094350 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1081:3
  avformatcontrolmessage_520094353 = proc (a0: ptr structavformatcontext_520094332;
      a1: cint; a2: pointer; a3: csize_t): cint {.cdecl.} ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1087:15
  Avopencallback_520094355 = proc (a0: ptr structavformatcontext_520094332;
                                   a1: ptr ptr Aviocontext_520094320;
                                   a2: cstring; a3: cint;
                                   a4: ptr Aviointerruptcb_520094304;
                                   a5: ptr ptr Avdictionary_520094113): cint {.
      cdecl.}                ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1090:15
  Avformatcontext_520094359 = structavformatcontext_520094332 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1729:3
  structswsvector_520094363 {.pure, inheritable, bycopy.} = object
    coeff*: ptr cdouble      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:116:16
    length*: cint

  Swsvector_520094365 = structswsvector_520094364 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:119:3
  structswsfilter_520094367 {.pure, inheritable, bycopy.} = object
    lumh*: ptr Swsvector_520094366 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:122:16
    lumv*: ptr Swsvector_520094366
    chrh*: ptr Swsvector_520094366
    chrv*: ptr Swsvector_520094366

  Swsfilter_520094369 = structswsfilter_520094368 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:127:3
  compilergnucvalist_520094371 = compilerbuiltinvalist ## Generated based on /usr/lib/clang/17/include/stdarg.h:14:27
  structiofile_520094373 {.pure, inheritable, bycopy.} = object
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
    internalchain*: ptr structiofile_520094374
    internalfileno*: cint
    internalflags2*: cint
    internaloldoffset*: compilerofft_520094376
    internalcurcolumn*: cushort
    internalvtableoffset*: cschar
    internalshortbuf*: array[1'i64, cschar]
    internallock*: pointer
    internaloffset*: compileroff64t_520094380
    internalcodecvt*: ptr structiocodecvt
    internalwidedata*: ptr structiowidedata
    internalfreereslist*: ptr structiofile_520094374
    internalfreeresbuf*: pointer
    compilerpad5*: csize_t
    internalmode*: cint
    internalunused2*: array[20'i64, cschar]

  compilerofft_520094375 = clong ## Generated based on /usr/include/bits/types.h:152:25
  compileroff64t_520094379 = clong ## Generated based on /usr/include/bits/types.h:153:27
  structavregionofinterest_520094186 = (when declared(structavregionofinterest):
    structavregionofinterest
   else:
    structavregionofinterest_520094185)
  Avhwdevicecontext_520094200 = (when declared(Avhwdevicecontext):
    Avhwdevicecontext
   else:
    Avhwdevicecontext_520094199)
  Avcodecdescriptor_520094264 = (when declared(Avcodecdescriptor):
    Avcodecdescriptor
   else:
    Avcodecdescriptor_520094263)
  structaviointerruptcb_520094302 = (when declared(structaviointerruptcb):
    structaviointerruptcb
   else:
    structaviointerruptcb_520094301)
  structrcoverride_520094270 = (when declared(structrcoverride):
    structrcoverride
   else:
    structrcoverride_520094269)
  structavinputformat_520094330 = (when declared(structavinputformat):
    structavinputformat
   else:
    structavinputformat_520094329)
  Avcpbproperties_520094240 = (when declared(Avcpbproperties):
    Avcpbproperties
   else:
    Avcpbproperties_520094239)
  structiofile_520094374 = (when declared(structiofile):
    structiofile
   else:
    structiofile_520094373)
  Avoption_520094152 = (when declared(Avoption):
    Avoption
   else:
    Avoption_520094151)
  structavstream_520094342 = (when declared(structavstream):
    structavstream
   else:
    structavstream_520094341)
  Avcodec_520094222 = (when declared(Avcodec):
    Avcodec
   else:
    Avcodec_520094221)
  enumavframesidedatatype_520094178 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520094177)
  structavframesidedata_520094182 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520094181)
  enumavcolorrange_520094144 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094143)
  structavpacket_520094252 = (when declared(structavpacket):
    structavpacket
   else:
    structavpacket_520094251)
  structaviodircontext_520094312 = (when declared(structaviodircontext):
    structaviodircontext
   else:
    structaviodircontext_520094311)
  structavchannelcustom_520094085 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094084)
  Avdictionaryentry_520094111 = (when declared(Avdictionaryentry):
    Avdictionaryentry
   else:
    Avdictionaryentry_520094110)
  Aviointerruptcb_520094304 = (when declared(Aviointerruptcb):
    Aviointerruptcb
   else:
    Aviointerruptcb_520094303)
  Aviodircontext_520094314 = (when declared(Aviodircontext):
    Aviodircontext
   else:
    Aviodircontext_520094313)
  structswsfilter_520094368 = (when declared(structswsfilter):
    structswsfilter
   else:
    structswsfilter_520094367)
  enumavchromalocation_520094146 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094145)
  structavformatcontext_520094332 = (when declared(structavformatcontext):
    structavformatcontext
   else:
    structavformatcontext_520094331)
  structswsvector_520094364 = (when declared(structswsvector):
    structswsvector
   else:
    structswsvector_520094363)
  Avbufferref_520094174 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520094173)
  enumavdurationestimationmethod_520094358 = (when declared(
      enumavdurationestimationmethod):
    enumavdurationestimationmethod
   else:
    enumavdurationestimationmethod_520094357)
  compileroff64t_520094380 = (when declared(compileroff64t):
    compileroff64t
   else:
    compileroff64t_520094379)
  structavproducerreferencetime_520094242 = (when declared(
      structavproducerreferencetime):
    structavproducerreferencetime
   else:
    structavproducerreferencetime_520094241)
  structavcpbproperties_520094238 = (when declared(structavcpbproperties):
    structavcpbproperties
   else:
    structavcpbproperties_520094237)
  Aviocontext_520094320 = (when declared(Aviocontext):
    Aviocontext
   else:
    Aviocontext_520094319)
  structavpacketsidedata_520094248 = (when declared(structavpacketsidedata):
    structavpacketsidedata
   else:
    structavpacketsidedata_520094247)
  enumavclasscategory_520094095 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094094)
  Avframesidedata_520094184 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520094183)
  structavcodec_520094220 = (when declared(structavcodec):
    structavcodec
   else:
    structavcodec_520094219)
  Avinputformat_520094334 = (when declared(Avinputformat):
    Avinputformat
   else:
    Avinputformat_520094333)
  Avcodechwconfig_520094226 = (when declared(Avcodechwconfig):
    Avcodechwconfig
   else:
    Avcodechwconfig_520094225)
  Avproducerreferencetime_520094244 = (when declared(Avproducerreferencetime):
    Avproducerreferencetime
   else:
    Avproducerreferencetime_520094243)
  Avsubtitlerect_520094286 = (when declared(Avsubtitlerect):
    Avsubtitlerect
   else:
    Avsubtitlerect_520094285)
  structavoptionranges_520094103 = (when declared(structavoptionranges):
    structavoptionranges
   else:
    structavoptionranges_520094102)
  enumavhwframetransferdirection_520094208 = (when declared(
      enumavhwframetransferdirection):
    enumavhwframetransferdirection
   else:
    enumavhwframetransferdirection_520094207)
  enumavaudioservicetype_520094232 = (when declared(enumavaudioservicetype):
    enumavaudioservicetype
   else:
    enumavaudioservicetype_520094231)
  structavprobedata_520094322 = (when declared(structavprobedata):
    structavprobedata
   else:
    structavprobedata_520094321)
  enumavmatrixencoding_520094083 = (when declared(enumavmatrixencoding):
    enumavmatrixencoding
   else:
    enumavmatrixencoding_520094082)
  Avpacket_520094254 = (when declared(Avpacket):
    Avpacket
   else:
    Avpacket_520094253)
  valist_520094107 = (when declared(valist):
    valist
   else:
    valist_520094106)
  unionavintfloat64_520094125 = (when declared(unionavintfloat64):
    unionavintfloat64
   else:
    unionavintfloat64_520094124)
  enumavfieldorder_520094228 = (when declared(enumavfieldorder):
    enumavfieldorder
   else:
    enumavfieldorder_520094227)
  structaviocontext_520094318 = (when declared(structaviocontext):
    structaviocontext
   else:
    structaviocontext_520094317)
  Avprofile_520094218 = (when declared(Avprofile):
    Avprofile
   else:
    Avprofile_520094217)
  compilergnucvalist_520094372 = (when declared(compilergnucvalist):
    compilergnucvalist
   else:
    compilergnucvalist_520094371)
  Avchannelcustom_520094087 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094086)
  structavcomponentdescriptor_520094160 = (when declared(
      structavcomponentdescriptor):
    structavcomponentdescriptor
   else:
    structavcomponentdescriptor_520094159)
  enumavpacketsidedatatype_520094246 = (when declared(enumavpacketsidedatatype):
    enumavpacketsidedatatype
   else:
    enumavpacketsidedatatype_520094245)
  enumaviodirentrytype_520094306 = (when declared(enumaviodirentrytype):
    enumaviodirentrytype
   else:
    enumaviodirentrytype_520094305)
  Avoutputformat_520094328 = (when declared(Avoutputformat):
    Avoutputformat
   else:
    Avoutputformat_520094327)
  structavchannellayout_520094089 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094088)
  Avchapter_520094352 = (when declared(Avchapter):
    Avchapter
   else:
    Avchapter_520094351)
  structaviodirentry_520094308 = (when declared(structaviodirentry):
    structaviodirentry
   else:
    structaviodirentry_520094307)
  structavrational_520094115 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094114)
  enumavhwdevicetype_520094194 = (when declared(enumavhwdevicetype):
    enumavhwdevicetype
   else:
    enumavhwdevicetype_520094193)
  structavhwaccel_520094276 = (when declared(structavhwaccel):
    structavhwaccel
   else:
    structavhwaccel_520094275)
  structavcodecparser_520094296 = (when declared(structavcodecparser):
    structavcodecparser
   else:
    structavcodecparser_520094295)
  unionavintfloat32_520094123 = (when declared(unionavintfloat32):
    unionavintfloat32
   else:
    unionavintfloat32_520094122)
  enumavcolortransfercharacteristic_520094133 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094132)
  Rcoverride_520094272 = (when declared(Rcoverride):
    Rcoverride
   else:
    Rcoverride_520094271)
  enumavsidedataparamchangeflags_520094260 = (when declared(
      enumavsidedataparamchangeflags):
    enumavsidedataparamchangeflags
   else:
    enumavsidedataparamchangeflags_520094259)
  structavsubtitle_520094288 = (when declared(structavsubtitle):
    structavsubtitle
   else:
    structavsubtitle_520094287)
  enumavchannel_520094079 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094078)
  enumavpixelformat_520094129 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094128)
  enumavpicturestructure_520094292 = (when declared(enumavpicturestructure):
    enumavpicturestructure
   else:
    enumavpicturestructure_520094291)
  Aviodirentry_520094310 = (when declared(Aviodirentry):
    Aviodirentry
   else:
    Aviodirentry_520094309)
  structavprofile_520094216 = (when declared(structavprofile):
    structavprofile
   else:
    structavprofile_520094215)
  enumavcolorspace_520094142 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094141)
  Avhwframesconstraints_520094212 = (when declared(Avhwframesconstraints):
    Avhwframesconstraints
   else:
    Avhwframesconstraints_520094211)
  Avindexentry_520094340 = (when declared(Avindexentry):
    Avindexentry
   else:
    Avindexentry_520094339)
  Avdictionary_520094113 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094112)
  structavclass_520094099 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094098)
  structavchapter_520094350 = (when declared(structavchapter):
    structavchapter
   else:
    structavchapter_520094349)
  enumavchannelorder_520094081 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094080)
  enumavpicturetype_520094121 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094120)
  enumavcolorprimaries_520094131 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094130)
  Avcodeccontext_520094278 = (when declared(Avcodeccontext):
    Avcodeccontext
   else:
    Avcodeccontext_520094277)
  enumavrounding_520094127 = (when declared(enumavrounding):
    enumavrounding
   else:
    enumavrounding_520094126)
  enumavsubtitletype_520094282 = (when declared(enumavsubtitletype):
    enumavsubtitletype
   else:
    enumavsubtitletype_520094281)
  enumavstreamparsetype_520094336 = (when declared(enumavstreamparsetype):
    enumavstreamparsetype
   else:
    enumavstreamparsetype_520094335)
  Avstream_520094344 = (when declared(Avstream):
    Avstream
   else:
    Avstream_520094343)
  Avpacketlist_520094258 = (when declared(Avpacketlist):
    Avpacketlist
   else:
    Avpacketlist_520094257)
  Avpacketsidedata_520094250 = (when declared(Avpacketsidedata):
    Avpacketsidedata
   else:
    Avpacketsidedata_520094249)
  structavprogram_520094346 = (when declared(structavprogram):
    structavprogram
   else:
    structavprogram_520094345)
  enumavsampleformat_520094093 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094092)
  structavhwdevicecontext_520094198 = (when declared(structavhwdevicecontext):
    structavhwdevicecontext
   else:
    structavhwdevicecontext_520094197)
  Avclasscategory_520094097 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094096)
  Swsvector_520094366 = (when declared(Swsvector):
    Swsvector
   else:
    Swsvector_520094365)
  Avhwframesinternal_520094202 = (when declared(Avhwframesinternal):
    Avhwframesinternal
   else:
    Avhwframesinternal_520094201)
  compilerofft_520094376 = (when declared(compilerofft):
    compilerofft
   else:
    compilerofft_520094375)
  Avclass_520094105 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094104)
  Avprobedata_520094324 = (when declared(Avprobedata):
    Avprobedata
   else:
    Avprobedata_520094323)
  structavhwframescontext_520094204 = (when declared(structavhwframescontext):
    structavhwframescontext
   else:
    structavhwframescontext_520094203)
  Avoptionrange_520094156 = (when declared(Avoptionrange):
    Avoptionrange
   else:
    Avoptionrange_520094155)
  Avopencallback_520094356 = (when declared(Avopencallback):
    Avopencallback
   else:
    Avopencallback_520094355)
  structavoutputformat_520094326 = (when declared(structavoutputformat):
    structavoutputformat
   else:
    structavoutputformat_520094325)
  structavdictionaryentry_520094109 = (when declared(structavdictionaryentry):
    structavdictionaryentry
   else:
    structavdictionaryentry_520094108)
  Avsubtitle_520094290 = (when declared(Avsubtitle):
    Avsubtitle
   else:
    Avsubtitle_520094289)
  enumavcodecid_520094214 = (when declared(enumavcodecid):
    enumavcodecid
   else:
    enumavcodecid_520094213)
  Avcodecparser_520094300 = (when declared(Avcodecparser):
    Avcodecparser
   else:
    Avcodecparser_520094299)
  structavoption_520094101 = (when declared(structavoption):
    structavoption
   else:
    structavoption_520094100)
  enumavoptiontype_520094150 = (when declared(enumavoptiontype):
    enumavoptiontype
   else:
    enumavoptiontype_520094149)
  structavhwframesconstraints_520094210 = (when declared(
      structavhwframesconstraints):
    structavhwframesconstraints
   else:
    structavhwframesconstraints_520094209)
  Avhwframescontext_520094206 = (when declared(Avhwframescontext):
    Avhwframescontext
   else:
    Avhwframescontext_520094205)
  Avcomponentdescriptor_520094162 = (when declared(Avcomponentdescriptor):
    Avcomponentdescriptor
   else:
    Avcomponentdescriptor_520094161)
  Avbufferpool_520094176 = (when declared(Avbufferpool):
    Avbufferpool
   else:
    Avbufferpool_520094175)
  Swsfilter_520094370 = (when declared(Swsfilter):
    Swsfilter
   else:
    Swsfilter_520094369)
  Avrational_520094117 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094116)
  Avprogram_520094348 = (when declared(Avprogram):
    Avprogram
   else:
    Avprogram_520094347)
  structavpixfmtdescriptor_520094164 = (when declared(structavpixfmtdescriptor):
    structavpixfmtdescriptor
   else:
    structavpixfmtdescriptor_520094163)
  Avhwaccel_520094280 = (when declared(Avhwaccel):
    Avhwaccel
   else:
    Avhwaccel_520094279)
  Avcodecparameters_520094268 = (when declared(Avcodecparameters):
    Avcodecparameters
   else:
    Avcodecparameters_520094267)
  Avhwdeviceinternal_520094196 = (when declared(Avhwdeviceinternal):
    Avhwdeviceinternal
   else:
    Avhwdeviceinternal_520094195)
  structavsubtitlerect_520094284 = (when declared(structavsubtitlerect):
    structavsubtitlerect
   else:
    structavsubtitlerect_520094283)
  Avframe_520094192 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520094191)
  structavpanscan_520094234 = (when declared(structavpanscan):
    structavpanscan
   else:
    structavpanscan_520094233)
  structavbufferref_520094172 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520094171)
  enumavmediatype_520094119 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094118)
  Avoptionranges_520094158 = (when declared(Avoptionranges):
    Avoptionranges
   else:
    Avoptionranges_520094157)
  Avpixfmtdescriptor_520094166 = (when declared(Avpixfmtdescriptor):
    Avpixfmtdescriptor
   else:
    Avpixfmtdescriptor_520094165)
  Avbuffer_520094170 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520094169)
  File_520094148 = (when declared(File):
    File
   else:
    File_520094147)
  structavpacketlist_520094256 = (when declared(structavpacketlist):
    structavpacketlist
   else:
    structavpacketlist_520094255)
  Avcodecparsercontext_520094298 = (when declared(Avcodecparsercontext):
    Avcodecparsercontext
   else:
    Avcodecparsercontext_520094297)
  Avchannellayout_520094091 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094090)
  structavcodecparsercontext_520094294 = (when declared(
      structavcodecparsercontext):
    structavcodecparsercontext
   else:
    structavcodecparsercontext_520094293)
  ptrdifft_520094168 = (when declared(ptrdifft):
    ptrdifft
   else:
    ptrdifft_520094167)
  Avregionofinterest_520094188 = (when declared(Avregionofinterest):
    Avregionofinterest
   else:
    Avregionofinterest_520094187)
  structavindexentry_520094338 = (when declared(structavindexentry):
    structavindexentry
   else:
    structavindexentry_520094337)
  Avformatcontext_520094360 = (when declared(Avformatcontext):
    Avformatcontext
   else:
    Avformatcontext_520094359)
  enumavtimebasesource_520094362 = (when declared(enumavtimebasesource):
    enumavtimebasesource
   else:
    enumavtimebasesource_520094361)
  structavcodechwconfig_520094224 = (when declared(structavcodechwconfig):
    structavcodechwconfig
   else:
    structavcodechwconfig_520094223)
  Avpanscan_520094236 = (when declared(Avpanscan):
    Avpanscan
   else:
    Avpanscan_520094235)
  structavcodecdescriptor_520094262 = (when declared(structavcodecdescriptor):
    structavcodecdescriptor
   else:
    structavcodecdescriptor_520094261)
  enumavdiscard_520094230 = (when declared(enumavdiscard):
    enumavdiscard
   else:
    enumavdiscard_520094229)
  enumaviodatamarkertype_520094316 = (when declared(enumaviodatamarkertype):
    enumaviodatamarkertype
   else:
    enumaviodatamarkertype_520094315)
  enumavactiveformatdescription_520094180 = (when declared(
      enumavactiveformatdescription):
    enumavactiveformatdescription
   else:
    enumavactiveformatdescription_520094179)
  structavoptionrange_520094154 = (when declared(structavoptionrange):
    structavoptionrange
   else:
    structavoptionrange_520094153)
  structavcodecparameters_520094266 = (when declared(structavcodecparameters):
    structavcodecparameters
   else:
    structavcodecparameters_520094265)
  avformatcontrolmessage_520094354 = (when declared(avformatcontrolmessage):
    avformatcontrolmessage
   else:
    avformatcontrolmessage_520094353)
  structavcodeccontext_520094274 = (when declared(structavcodeccontext):
    structavcodeccontext
   else:
    structavcodeccontext_520094273)
  structavframe_520094190 = (when declared(structavframe):
    structavframe
   else:
    structavframe_520094189)
when not declared(structavregionofinterest):
  type
    structavregionofinterest* = structavregionofinterest_520094185
else:
  static :
    hint("Declaration of " & "structavregionofinterest" &
        " already exists, not redeclaring")
when not declared(Avhwdevicecontext):
  type
    Avhwdevicecontext* = Avhwdevicecontext_520094199
else:
  static :
    hint("Declaration of " & "Avhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(Avcodecdescriptor):
  type
    Avcodecdescriptor* = Avcodecdescriptor_520094263
else:
  static :
    hint("Declaration of " & "Avcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(structaviointerruptcb):
  type
    structaviointerruptcb* = structaviointerruptcb_520094301
else:
  static :
    hint("Declaration of " & "structaviointerruptcb" &
        " already exists, not redeclaring")
when not declared(structrcoverride):
  type
    structrcoverride* = structrcoverride_520094269
else:
  static :
    hint("Declaration of " & "structrcoverride" &
        " already exists, not redeclaring")
when not declared(structavinputformat):
  type
    structavinputformat* = structavinputformat_520094329
else:
  static :
    hint("Declaration of " & "structavinputformat" &
        " already exists, not redeclaring")
when not declared(Avcpbproperties):
  type
    Avcpbproperties* = Avcpbproperties_520094239
else:
  static :
    hint("Declaration of " & "Avcpbproperties" &
        " already exists, not redeclaring")
when not declared(structiofile):
  type
    structiofile* = structiofile_520094373
else:
  static :
    hint("Declaration of " & "structiofile" & " already exists, not redeclaring")
when not declared(Avoption):
  type
    Avoption* = Avoption_520094151
else:
  static :
    hint("Declaration of " & "Avoption" & " already exists, not redeclaring")
when not declared(structavstream):
  type
    structavstream* = structavstream_520094341
else:
  static :
    hint("Declaration of " & "structavstream" &
        " already exists, not redeclaring")
when not declared(Avcodec):
  type
    Avcodec* = Avcodec_520094221
else:
  static :
    hint("Declaration of " & "Avcodec" & " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520094181
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
        " already exists, not redeclaring")
when not declared(structavpacket):
  type
    structavpacket* = structavpacket_520094251
else:
  static :
    hint("Declaration of " & "structavpacket" &
        " already exists, not redeclaring")
when not declared(structaviodircontext):
  type
    structaviodircontext* = structaviodircontext_520094311
else:
  static :
    hint("Declaration of " & "structaviodircontext" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094084
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avdictionaryentry):
  type
    Avdictionaryentry* = Avdictionaryentry_520094110
else:
  static :
    hint("Declaration of " & "Avdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Aviointerruptcb):
  type
    Aviointerruptcb* = Aviointerruptcb_520094303
else:
  static :
    hint("Declaration of " & "Aviointerruptcb" &
        " already exists, not redeclaring")
when not declared(Aviodircontext):
  type
    Aviodircontext* = Aviodircontext_520094313
else:
  static :
    hint("Declaration of " & "Aviodircontext" &
        " already exists, not redeclaring")
when not declared(structswsfilter):
  type
    structswsfilter* = structswsfilter_520094367
else:
  static :
    hint("Declaration of " & "structswsfilter" &
        " already exists, not redeclaring")
when not declared(structavformatcontext):
  type
    structavformatcontext* = structavformatcontext_520094331
else:
  static :
    hint("Declaration of " & "structavformatcontext" &
        " already exists, not redeclaring")
when not declared(structswsvector):
  type
    structswsvector* = structswsvector_520094363
else:
  static :
    hint("Declaration of " & "structswsvector" &
        " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520094173
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(compileroff64t):
  type
    compileroff64t* = compileroff64t_520094379
else:
  static :
    hint("Declaration of " & "compileroff64t" &
        " already exists, not redeclaring")
when not declared(structavproducerreferencetime):
  type
    structavproducerreferencetime* = structavproducerreferencetime_520094241
else:
  static :
    hint("Declaration of " & "structavproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(structavcpbproperties):
  type
    structavcpbproperties* = structavcpbproperties_520094237
else:
  static :
    hint("Declaration of " & "structavcpbproperties" &
        " already exists, not redeclaring")
when not declared(Aviocontext):
  type
    Aviocontext* = Aviocontext_520094319
else:
  static :
    hint("Declaration of " & "Aviocontext" & " already exists, not redeclaring")
when not declared(structavpacketsidedata):
  type
    structavpacketsidedata* = structavpacketsidedata_520094247
else:
  static :
    hint("Declaration of " & "structavpacketsidedata" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520094183
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(structavcodec):
  type
    structavcodec* = structavcodec_520094219
else:
  static :
    hint("Declaration of " & "structavcodec" &
        " already exists, not redeclaring")
when not declared(Avinputformat):
  type
    Avinputformat* = Avinputformat_520094333
else:
  static :
    hint("Declaration of " & "Avinputformat" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfig):
  type
    Avcodechwconfig* = Avcodechwconfig_520094225
else:
  static :
    hint("Declaration of " & "Avcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avproducerreferencetime):
  type
    Avproducerreferencetime* = Avproducerreferencetime_520094243
else:
  static :
    hint("Declaration of " & "Avproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Avsubtitlerect):
  type
    Avsubtitlerect* = Avsubtitlerect_520094285
else:
  static :
    hint("Declaration of " & "Avsubtitlerect" &
        " already exists, not redeclaring")
when not declared(structavoptionranges):
  type
    structavoptionranges* = structavoptionranges_520094102
else:
  static :
    hint("Declaration of " & "structavoptionranges" &
        " already exists, not redeclaring")
when not declared(structavprobedata):
  type
    structavprobedata* = structavprobedata_520094321
else:
  static :
    hint("Declaration of " & "structavprobedata" &
        " already exists, not redeclaring")
when not declared(Avpacket):
  type
    Avpacket* = Avpacket_520094253
else:
  static :
    hint("Declaration of " & "Avpacket" & " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094106
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(unionavintfloat64):
  type
    unionavintfloat64* = unionavintfloat64_520094124
else:
  static :
    hint("Declaration of " & "unionavintfloat64" &
        " already exists, not redeclaring")
when not declared(structaviocontext):
  type
    structaviocontext* = structaviocontext_520094317
else:
  static :
    hint("Declaration of " & "structaviocontext" &
        " already exists, not redeclaring")
when not declared(Avprofile):
  type
    Avprofile* = Avprofile_520094217
else:
  static :
    hint("Declaration of " & "Avprofile" & " already exists, not redeclaring")
when not declared(compilergnucvalist):
  type
    compilergnucvalist* = compilergnucvalist_520094371
else:
  static :
    hint("Declaration of " & "compilergnucvalist" &
        " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094086
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(structavcomponentdescriptor):
  type
    structavcomponentdescriptor* = structavcomponentdescriptor_520094159
else:
  static :
    hint("Declaration of " & "structavcomponentdescriptor" &
        " already exists, not redeclaring")
when not declared(Avoutputformat):
  type
    Avoutputformat* = Avoutputformat_520094327
else:
  static :
    hint("Declaration of " & "Avoutputformat" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094088
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(Avchapter):
  type
    Avchapter* = Avchapter_520094351
else:
  static :
    hint("Declaration of " & "Avchapter" & " already exists, not redeclaring")
when not declared(structaviodirentry):
  type
    structaviodirentry* = structaviodirentry_520094307
else:
  static :
    hint("Declaration of " & "structaviodirentry" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094114
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(structavhwaccel):
  type
    structavhwaccel* = structavhwaccel_520094275
else:
  static :
    hint("Declaration of " & "structavhwaccel" &
        " already exists, not redeclaring")
when not declared(structavcodecparser):
  type
    structavcodecparser* = structavcodecparser_520094295
else:
  static :
    hint("Declaration of " & "structavcodecparser" &
        " already exists, not redeclaring")
when not declared(unionavintfloat32):
  type
    unionavintfloat32* = unionavintfloat32_520094122
else:
  static :
    hint("Declaration of " & "unionavintfloat32" &
        " already exists, not redeclaring")
when not declared(Rcoverride):
  type
    Rcoverride* = Rcoverride_520094271
else:
  static :
    hint("Declaration of " & "Rcoverride" & " already exists, not redeclaring")
when not declared(structavsubtitle):
  type
    structavsubtitle* = structavsubtitle_520094287
else:
  static :
    hint("Declaration of " & "structavsubtitle" &
        " already exists, not redeclaring")
when not declared(Aviodirentry):
  type
    Aviodirentry* = Aviodirentry_520094309
else:
  static :
    hint("Declaration of " & "Aviodirentry" & " already exists, not redeclaring")
when not declared(structavprofile):
  type
    structavprofile* = structavprofile_520094215
else:
  static :
    hint("Declaration of " & "structavprofile" &
        " already exists, not redeclaring")
when not declared(Avhwframesconstraints):
  type
    Avhwframesconstraints* = Avhwframesconstraints_520094211
else:
  static :
    hint("Declaration of " & "Avhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avindexentry):
  type
    Avindexentry* = Avindexentry_520094339
else:
  static :
    hint("Declaration of " & "Avindexentry" & " already exists, not redeclaring")
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094112
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
when not declared(structavchapter):
  type
    structavchapter* = structavchapter_520094349
else:
  static :
    hint("Declaration of " & "structavchapter" &
        " already exists, not redeclaring")
when not declared(Avcodeccontext):
  type
    Avcodeccontext* = Avcodeccontext_520094277
else:
  static :
    hint("Declaration of " & "Avcodeccontext" &
        " already exists, not redeclaring")
when not declared(Avstream):
  type
    Avstream* = Avstream_520094343
else:
  static :
    hint("Declaration of " & "Avstream" & " already exists, not redeclaring")
when not declared(Avpacketlist):
  type
    Avpacketlist* = Avpacketlist_520094257
else:
  static :
    hint("Declaration of " & "Avpacketlist" & " already exists, not redeclaring")
when not declared(Avpacketsidedata):
  type
    Avpacketsidedata* = Avpacketsidedata_520094249
else:
  static :
    hint("Declaration of " & "Avpacketsidedata" &
        " already exists, not redeclaring")
when not declared(structavprogram):
  type
    structavprogram* = structavprogram_520094345
else:
  static :
    hint("Declaration of " & "structavprogram" &
        " already exists, not redeclaring")
when not declared(structavhwdevicecontext):
  type
    structavhwdevicecontext* = structavhwdevicecontext_520094197
else:
  static :
    hint("Declaration of " & "structavhwdevicecontext" &
        " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520094096
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(Swsvector):
  type
    Swsvector* = Swsvector_520094365
else:
  static :
    hint("Declaration of " & "Swsvector" & " already exists, not redeclaring")
when not declared(Avhwframesinternal):
  type
    Avhwframesinternal* = Avhwframesinternal_520094201
else:
  static :
    hint("Declaration of " & "Avhwframesinternal" &
        " already exists, not redeclaring")
when not declared(compilerofft):
  type
    compilerofft* = compilerofft_520094375
else:
  static :
    hint("Declaration of " & "compilerofft" & " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094104
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(Avprobedata):
  type
    Avprobedata* = Avprobedata_520094323
else:
  static :
    hint("Declaration of " & "Avprobedata" & " already exists, not redeclaring")
when not declared(structavhwframescontext):
  type
    structavhwframescontext* = structavhwframescontext_520094203
else:
  static :
    hint("Declaration of " & "structavhwframescontext" &
        " already exists, not redeclaring")
when not declared(Avoptionrange):
  type
    Avoptionrange* = Avoptionrange_520094155
else:
  static :
    hint("Declaration of " & "Avoptionrange" &
        " already exists, not redeclaring")
when not declared(Avopencallback):
  type
    Avopencallback* = Avopencallback_520094355
else:
  static :
    hint("Declaration of " & "Avopencallback" &
        " already exists, not redeclaring")
when not declared(structavoutputformat):
  type
    structavoutputformat* = structavoutputformat_520094325
else:
  static :
    hint("Declaration of " & "structavoutputformat" &
        " already exists, not redeclaring")
when not declared(structavdictionaryentry):
  type
    structavdictionaryentry* = structavdictionaryentry_520094108
else:
  static :
    hint("Declaration of " & "structavdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Avsubtitle):
  type
    Avsubtitle* = Avsubtitle_520094289
else:
  static :
    hint("Declaration of " & "Avsubtitle" & " already exists, not redeclaring")
when not declared(Avcodecparser):
  type
    Avcodecparser* = Avcodecparser_520094299
else:
  static :
    hint("Declaration of " & "Avcodecparser" &
        " already exists, not redeclaring")
when not declared(structavoption):
  type
    structavoption* = structavoption_520094100
else:
  static :
    hint("Declaration of " & "structavoption" &
        " already exists, not redeclaring")
when not declared(structavhwframesconstraints):
  type
    structavhwframesconstraints* = structavhwframesconstraints_520094209
else:
  static :
    hint("Declaration of " & "structavhwframesconstraints" &
        " already exists, not redeclaring")
when not declared(Avhwframescontext):
  type
    Avhwframescontext* = Avhwframescontext_520094205
else:
  static :
    hint("Declaration of " & "Avhwframescontext" &
        " already exists, not redeclaring")
when not declared(Avcomponentdescriptor):
  type
    Avcomponentdescriptor* = Avcomponentdescriptor_520094161
else:
  static :
    hint("Declaration of " & "Avcomponentdescriptor" &
        " already exists, not redeclaring")
when not declared(Avbufferpool):
  type
    Avbufferpool* = Avbufferpool_520094175
else:
  static :
    hint("Declaration of " & "Avbufferpool" & " already exists, not redeclaring")
when not declared(Swsfilter):
  type
    Swsfilter* = Swsfilter_520094369
else:
  static :
    hint("Declaration of " & "Swsfilter" & " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094116
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(Avprogram):
  type
    Avprogram* = Avprogram_520094347
else:
  static :
    hint("Declaration of " & "Avprogram" & " already exists, not redeclaring")
when not declared(structavpixfmtdescriptor):
  type
    structavpixfmtdescriptor* = structavpixfmtdescriptor_520094163
else:
  static :
    hint("Declaration of " & "structavpixfmtdescriptor" &
        " already exists, not redeclaring")
when not declared(Avhwaccel):
  type
    Avhwaccel* = Avhwaccel_520094279
else:
  static :
    hint("Declaration of " & "Avhwaccel" & " already exists, not redeclaring")
when not declared(Avcodecparameters):
  type
    Avcodecparameters* = Avcodecparameters_520094267
else:
  static :
    hint("Declaration of " & "Avcodecparameters" &
        " already exists, not redeclaring")
when not declared(Avhwdeviceinternal):
  type
    Avhwdeviceinternal* = Avhwdeviceinternal_520094195
else:
  static :
    hint("Declaration of " & "Avhwdeviceinternal" &
        " already exists, not redeclaring")
when not declared(structavsubtitlerect):
  type
    structavsubtitlerect* = structavsubtitlerect_520094283
else:
  static :
    hint("Declaration of " & "structavsubtitlerect" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520094191
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavpanscan):
  type
    structavpanscan* = structavpanscan_520094233
else:
  static :
    hint("Declaration of " & "structavpanscan" &
        " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520094171
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(Avoptionranges):
  type
    Avoptionranges* = Avoptionranges_520094157
else:
  static :
    hint("Declaration of " & "Avoptionranges" &
        " already exists, not redeclaring")
when not declared(Avpixfmtdescriptor):
  type
    Avpixfmtdescriptor* = Avpixfmtdescriptor_520094165
else:
  static :
    hint("Declaration of " & "Avpixfmtdescriptor" &
        " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520094169
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(File):
  type
    File* = File_520094147
else:
  static :
    hint("Declaration of " & "File" & " already exists, not redeclaring")
when not declared(structavpacketlist):
  type
    structavpacketlist* = structavpacketlist_520094255
else:
  static :
    hint("Declaration of " & "structavpacketlist" &
        " already exists, not redeclaring")
when not declared(Avcodecparsercontext):
  type
    Avcodecparsercontext* = Avcodecparsercontext_520094297
else:
  static :
    hint("Declaration of " & "Avcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094090
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(structavcodecparsercontext):
  type
    structavcodecparsercontext* = structavcodecparsercontext_520094293
else:
  static :
    hint("Declaration of " & "structavcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(ptrdifft):
  type
    ptrdifft* = ptrdifft_520094167
else:
  static :
    hint("Declaration of " & "ptrdifft" & " already exists, not redeclaring")
when not declared(Avregionofinterest):
  type
    Avregionofinterest* = Avregionofinterest_520094187
else:
  static :
    hint("Declaration of " & "Avregionofinterest" &
        " already exists, not redeclaring")
when not declared(structavindexentry):
  type
    structavindexentry* = structavindexentry_520094337
else:
  static :
    hint("Declaration of " & "structavindexentry" &
        " already exists, not redeclaring")
when not declared(Avformatcontext):
  type
    Avformatcontext* = Avformatcontext_520094359
else:
  static :
    hint("Declaration of " & "Avformatcontext" &
        " already exists, not redeclaring")
when not declared(structavcodechwconfig):
  type
    structavcodechwconfig* = structavcodechwconfig_520094223
else:
  static :
    hint("Declaration of " & "structavcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avpanscan):
  type
    Avpanscan* = Avpanscan_520094235
else:
  static :
    hint("Declaration of " & "Avpanscan" & " already exists, not redeclaring")
when not declared(structavcodecdescriptor):
  type
    structavcodecdescriptor* = structavcodecdescriptor_520094261
else:
  static :
    hint("Declaration of " & "structavcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(structavoptionrange):
  type
    structavoptionrange* = structavoptionrange_520094153
else:
  static :
    hint("Declaration of " & "structavoptionrange" &
        " already exists, not redeclaring")
when not declared(structavcodecparameters):
  type
    structavcodecparameters* = structavcodecparameters_520094265
else:
  static :
    hint("Declaration of " & "structavcodecparameters" &
        " already exists, not redeclaring")
when not declared(avformatcontrolmessage):
  type
    avformatcontrolmessage* = avformatcontrolmessage_520094353
else:
  static :
    hint("Declaration of " & "avformatcontrolmessage" &
        " already exists, not redeclaring")
when not declared(structavcodeccontext):
  type
    structavcodeccontext* = structavcodeccontext_520094273
else:
  static :
    hint("Declaration of " & "structavcodeccontext" &
        " already exists, not redeclaring")
when not declared(structavframe):
  type
    structavframe* = structavframe_520094189
else:
  static :
    hint("Declaration of " & "structavframe" &
        " already exists, not redeclaring")
when not declared(Averrormaxstringsize):
  when 64 is static:
    const
      Averrormaxstringsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/error.h:85:9
  else:
    let Averrormaxstringsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/error.h:85:9
else:
  static :
    hint("Declaration of " & "Averrormaxstringsize" &
        " already exists, not redeclaring")
when not declared(Libavutilversionmajor):
  when 58 is static:
    const
      Libavutilversionmajor* = 58 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:81:9
  else:
    let Libavutilversionmajor* = 58 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:81:9
else:
  static :
    hint("Declaration of " & "Libavutilversionmajor" &
        " already exists, not redeclaring")
when not declared(Libavutilversionminor):
  when 29 is static:
    const
      Libavutilversionminor* = 29 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:82:9
  else:
    let Libavutilversionminor* = 29 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:82:9
else:
  static :
    hint("Declaration of " & "Libavutilversionminor" &
        " already exists, not redeclaring")
when not declared(Libavutilversionmicro):
  when 100 is static:
    const
      Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:83:9
  else:
    let Libavutilversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/version.h:83:9
else:
  static :
    hint("Declaration of " & "Libavutilversionmicro" &
        " already exists, not redeclaring")
when not declared(Avchlayoutnative):
  when cast[culonglong](-9223372036854775808'i64) is static:
    const
      Avchlayoutnative* = cast[culonglong](-9223372036854775808'i64) ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:202:9
  else:
    let Avchlayoutnative* = cast[culonglong](-9223372036854775808'i64) ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/channel_layout.h:202:9
else:
  static :
    hint("Declaration of " & "Avchlayoutnative" &
        " already exists, not redeclaring")
when not declared(Avlogquiet):
  when -8 is static:
    const
      Avlogquiet* = -8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:162:9
  else:
    let Avlogquiet* = -8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:162:9
else:
  static :
    hint("Declaration of " & "Avlogquiet" & " already exists, not redeclaring")
when not declared(Avlogpanic):
  when 0 is static:
    const
      Avlogpanic* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:167:9
  else:
    let Avlogpanic* = 0      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:167:9
else:
  static :
    hint("Declaration of " & "Avlogpanic" & " already exists, not redeclaring")
when not declared(Avlogfatal):
  when 8 is static:
    const
      Avlogfatal* = 8        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:174:9
  else:
    let Avlogfatal* = 8      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:174:9
else:
  static :
    hint("Declaration of " & "Avlogfatal" & " already exists, not redeclaring")
when not declared(Avlogerror):
  when 16 is static:
    const
      Avlogerror* = 16       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:180:9
  else:
    let Avlogerror* = 16     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:180:9
else:
  static :
    hint("Declaration of " & "Avlogerror" & " already exists, not redeclaring")
when not declared(Avlogwarning):
  when 24 is static:
    const
      Avlogwarning* = 24     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:186:9
  else:
    let Avlogwarning* = 24   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:186:9
else:
  static :
    hint("Declaration of " & "Avlogwarning" & " already exists, not redeclaring")
when not declared(Avloginfo):
  when 32 is static:
    const
      Avloginfo* = 32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:191:9
  else:
    let Avloginfo* = 32      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:191:9
else:
  static :
    hint("Declaration of " & "Avloginfo" & " already exists, not redeclaring")
when not declared(Avlogverbose):
  when 40 is static:
    const
      Avlogverbose* = 40     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:196:9
  else:
    let Avlogverbose* = 40   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:196:9
else:
  static :
    hint("Declaration of " & "Avlogverbose" & " already exists, not redeclaring")
when not declared(Avlogdebug):
  when 48 is static:
    const
      Avlogdebug* = 48       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:201:9
  else:
    let Avlogdebug* = 48     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:201:9
else:
  static :
    hint("Declaration of " & "Avlogdebug" & " already exists, not redeclaring")
when not declared(Avlogtrace):
  when 56 is static:
    const
      Avlogtrace* = 56       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:206:9
  else:
    let Avlogtrace* = 56     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:206:9
else:
  static :
    hint("Declaration of " & "Avlogtrace" & " already exists, not redeclaring")
when not declared(Avlogskiprepeated):
  when 1 is static:
    const
      Avlogskiprepeated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:370:9
  else:
    let Avlogskiprepeated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:370:9
else:
  static :
    hint("Declaration of " & "Avlogskiprepeated" &
        " already exists, not redeclaring")
when not declared(Avlogprintlevel):
  when 2 is static:
    const
      Avlogprintlevel* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:378:9
  else:
    let Avlogprintlevel* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/log.h:378:9
else:
  static :
    hint("Declaration of " & "Avlogprintlevel" &
        " already exists, not redeclaring")
when not declared(Avdictmatchcase):
  when 1 is static:
    const
      Avdictmatchcase* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:74:9
  else:
    let Avdictmatchcase* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:74:9
else:
  static :
    hint("Declaration of " & "Avdictmatchcase" &
        " already exists, not redeclaring")
when not declared(Avdictignoresuffix):
  when 2 is static:
    const
      Avdictignoresuffix* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:75:9
  else:
    let Avdictignoresuffix* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:75:9
else:
  static :
    hint("Declaration of " & "Avdictignoresuffix" &
        " already exists, not redeclaring")
when not declared(Avdictdontstrdupkey):
  when 4 is static:
    const
      Avdictdontstrdupkey* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:77:9
  else:
    let Avdictdontstrdupkey* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:77:9
else:
  static :
    hint("Declaration of " & "Avdictdontstrdupkey" &
        " already exists, not redeclaring")
when not declared(Avdictdontstrdupval):
  when 8 is static:
    const
      Avdictdontstrdupval* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:79:9
  else:
    let Avdictdontstrdupval* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:79:9
else:
  static :
    hint("Declaration of " & "Avdictdontstrdupval" &
        " already exists, not redeclaring")
when not declared(Avdictdontoverwrite):
  when 16 is static:
    const
      Avdictdontoverwrite* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:81:9
  else:
    let Avdictdontoverwrite* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:81:9
else:
  static :
    hint("Declaration of " & "Avdictdontoverwrite" &
        " already exists, not redeclaring")
when not declared(Avdictappend):
  when 32 is static:
    const
      Avdictappend* = 32     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:82:9
  else:
    let Avdictappend* = 32   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:82:9
else:
  static :
    hint("Declaration of " & "Avdictappend" & " already exists, not redeclaring")
when not declared(Avdictmultikey):
  when 64 is static:
    const
      Avdictmultikey* = 64   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:84:9
  else:
    let Avdictmultikey* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/dict.h:84:9
else:
  static :
    hint("Declaration of " & "Avdictmultikey" &
        " already exists, not redeclaring")
when not declared(Fflambdashift):
  when 7 is static:
    const
      Fflambdashift* = 7     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:225:9
  else:
    let Fflambdashift* = 7   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:225:9
else:
  static :
    hint("Declaration of " & "Fflambdashift" &
        " already exists, not redeclaring")
when not declared(Ffqp2lambda):
  when 118 is static:
    const
      Ffqp2lambda* = 118     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:227:9
  else:
    let Ffqp2lambda* = 118   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:227:9
else:
  static :
    hint("Declaration of " & "Ffqp2lambda" & " already exists, not redeclaring")
when not declared(Avtimebase):
  when 1000000 is static:
    const
      Avtimebase* = 1000000  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:254:9
  else:
    let Avtimebase* = 1000000 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:254:9
else:
  static :
    hint("Declaration of " & "Avtimebase" & " already exists, not redeclaring")
when not declared(Mef):
  when 2.718281828459045 is static:
    const
      Mef* = 2.718281828459045 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:40:9
  else:
    let Mef* = 2.718281828459045 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:40:9
else:
  static :
    hint("Declaration of " & "Mef" & " already exists, not redeclaring")
when not declared(Mln2f):
  when 0.6931471805599453 is static:
    const
      Mln2f* = 0.6931471805599453 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:46:9
  else:
    let Mln2f* = 0.6931471805599453 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:46:9
else:
  static :
    hint("Declaration of " & "Mln2f" & " already exists, not redeclaring")
when not declared(Mln10f):
  when 2.302585092994046 is static:
    const
      Mln10f* = 2.302585092994046 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:52:9
  else:
    let Mln10f* = 2.302585092994046 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:52:9
else:
  static :
    hint("Declaration of " & "Mln10f" & " already exists, not redeclaring")
when not declared(Mlog210):
  when 3.321928094887362 is static:
    const
      Mlog210* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:55:9
  else:
    let Mlog210* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:55:9
else:
  static :
    hint("Declaration of " & "Mlog210" & " already exists, not redeclaring")
when not declared(Mlog210f):
  when 3.321928094887362 is static:
    const
      Mlog210f* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:58:9
  else:
    let Mlog210f* = 3.321928094887362 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:58:9
else:
  static :
    hint("Declaration of " & "Mlog210f" & " already exists, not redeclaring")
when not declared(Mphi):
  when 1.618033988749895 is static:
    const
      Mphi* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:61:9
  else:
    let Mphi* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:61:9
else:
  static :
    hint("Declaration of " & "Mphi" & " already exists, not redeclaring")
when not declared(Mphif):
  when 1.618033988749895 is static:
    const
      Mphif* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:64:9
  else:
    let Mphif* = 1.618033988749895 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:64:9
else:
  static :
    hint("Declaration of " & "Mphif" & " already exists, not redeclaring")
when not declared(Mpif):
  when 3.141592653589793 is static:
    const
      Mpif* = 3.141592653589793 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:70:9
  else:
    let Mpif* = 3.141592653589793 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:70:9
else:
  static :
    hint("Declaration of " & "Mpif" & " already exists, not redeclaring")
when not declared(Mpi2f):
  when 1.570796326794897 is static:
    const
      Mpi2f* = 1.570796326794897 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:76:9
  else:
    let Mpi2f* = 1.570796326794897 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:76:9
else:
  static :
    hint("Declaration of " & "Mpi2f" & " already exists, not redeclaring")
when not declared(Mpi4f):
  when 0.7853981633974483 is static:
    const
      Mpi4f* = 0.7853981633974483 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:82:9
  else:
    let Mpi4f* = 0.7853981633974483 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:82:9
else:
  static :
    hint("Declaration of " & "Mpi4f" & " already exists, not redeclaring")
when not declared(M1pif):
  when 0.3183098861837907 is static:
    const
      M1pif* = 0.3183098861837907 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:88:9
  else:
    let M1pif* = 0.3183098861837907 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:88:9
else:
  static :
    hint("Declaration of " & "M1pif" & " already exists, not redeclaring")
when not declared(M2pif):
  when 0.6366197723675814 is static:
    const
      M2pif* = 0.6366197723675814 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:94:9
  else:
    let M2pif* = 0.6366197723675814 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:94:9
else:
  static :
    hint("Declaration of " & "M2pif" & " already exists, not redeclaring")
when not declared(M2sqrtpif):
  when 1.128379167095513 is static:
    const
      M2sqrtpif* = 1.128379167095513 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:100:9
  else:
    let M2sqrtpif* = 1.128379167095513 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:100:9
else:
  static :
    hint("Declaration of " & "M2sqrtpif" & " already exists, not redeclaring")
when not declared(Msqrt12f):
  when 0.7071067811865476 is static:
    const
      Msqrt12f* = 0.7071067811865476 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:106:9
  else:
    let Msqrt12f* = 0.7071067811865476 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:106:9
else:
  static :
    hint("Declaration of " & "Msqrt12f" & " already exists, not redeclaring")
when not declared(Msqrt2f):
  when 1.414213562373095 is static:
    const
      Msqrt2f* = 1.414213562373095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:112:9
  else:
    let Msqrt2f* = 1.414213562373095 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/mathematics.h:112:9
else:
  static :
    hint("Declaration of " & "Msqrt2f" & " already exists, not redeclaring")
when not declared(Avpalettesize):
  when 1024 is static:
    const
      Avpalettesize* = 1024  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixfmt.h:32:9
  else:
    let Avpalettesize* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixfmt.h:32:9
else:
  static :
    hint("Declaration of " & "Avpalettesize" &
        " already exists, not redeclaring")
when not declared(Avpalettecount):
  when 256 is static:
    const
      Avpalettecount* = 256  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixfmt.h:33:9
  else:
    let Avpalettecount* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixfmt.h:33:9
else:
  static :
    hint("Declaration of " & "Avpalettecount" &
        " already exists, not redeclaring")
when not declared(Avfourccmaxstringsize):
  when 32 is static:
    const
      Avfourccmaxstringsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:356:9
  else:
    let Avfourccmaxstringsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/avutil.h:356:9
else:
  static :
    hint("Declaration of " & "Avfourccmaxstringsize" &
        " already exists, not redeclaring")
when not declared(Avoptflagencodingparam):
  when 1 is static:
    const
      Avoptflagencodingparam* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:281:9
  else:
    let Avoptflagencodingparam* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:281:9
else:
  static :
    hint("Declaration of " & "Avoptflagencodingparam" &
        " already exists, not redeclaring")
when not declared(Avoptflagdecodingparam):
  when 2 is static:
    const
      Avoptflagdecodingparam* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:282:9
  else:
    let Avoptflagdecodingparam* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:282:9
else:
  static :
    hint("Declaration of " & "Avoptflagdecodingparam" &
        " already exists, not redeclaring")
when not declared(Avoptflagaudioparam):
  when 8 is static:
    const
      Avoptflagaudioparam* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:283:9
  else:
    let Avoptflagaudioparam* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:283:9
else:
  static :
    hint("Declaration of " & "Avoptflagaudioparam" &
        " already exists, not redeclaring")
when not declared(Avoptflagvideoparam):
  when 16 is static:
    const
      Avoptflagvideoparam* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:284:9
  else:
    let Avoptflagvideoparam* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:284:9
else:
  static :
    hint("Declaration of " & "Avoptflagvideoparam" &
        " already exists, not redeclaring")
when not declared(Avoptflagsubtitleparam):
  when 32 is static:
    const
      Avoptflagsubtitleparam* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:285:9
  else:
    let Avoptflagsubtitleparam* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:285:9
else:
  static :
    hint("Declaration of " & "Avoptflagsubtitleparam" &
        " already exists, not redeclaring")
when not declared(Avoptflagexport):
  when 64 is static:
    const
      Avoptflagexport* = 64  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:289:9
  else:
    let Avoptflagexport* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:289:9
else:
  static :
    hint("Declaration of " & "Avoptflagexport" &
        " already exists, not redeclaring")
when not declared(Avoptflagreadonly):
  when 128 is static:
    const
      Avoptflagreadonly* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:294:9
  else:
    let Avoptflagreadonly* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:294:9
else:
  static :
    hint("Declaration of " & "Avoptflagreadonly" &
        " already exists, not redeclaring")
when not declared(Avoptserializeskipdefaults):
  when 1 is static:
    const
      Avoptserializeskipdefaults* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:864:9
  else:
    let Avoptserializeskipdefaults* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:864:9
else:
  static :
    hint("Declaration of " & "Avoptserializeskipdefaults" &
        " already exists, not redeclaring")
when not declared(Avoptserializeoptflagsexact):
  when 2 is static:
    const
      Avoptserializeoptflagsexact* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:865:9
  else:
    let Avoptserializeoptflagsexact* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/opt.h:865:9
else:
  static :
    hint("Declaration of " & "Avoptserializeoptflagsexact" &
        " already exists, not redeclaring")
when not declared(Fflossresolution):
  when 1 is static:
    const
      Fflossresolution* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:382:9
  else:
    let Fflossresolution* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:382:9
else:
  static :
    hint("Declaration of " & "Fflossresolution" &
        " already exists, not redeclaring")
when not declared(Fflossdepth):
  when 2 is static:
    const
      Fflossdepth* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:383:9
  else:
    let Fflossdepth* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:383:9
else:
  static :
    hint("Declaration of " & "Fflossdepth" & " already exists, not redeclaring")
when not declared(Fflosscolorspace):
  when 4 is static:
    const
      Fflosscolorspace* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:384:9
  else:
    let Fflosscolorspace* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:384:9
else:
  static :
    hint("Declaration of " & "Fflosscolorspace" &
        " already exists, not redeclaring")
when not declared(Fflossalpha):
  when 8 is static:
    const
      Fflossalpha* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:385:9
  else:
    let Fflossalpha* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:385:9
else:
  static :
    hint("Declaration of " & "Fflossalpha" & " already exists, not redeclaring")
when not declared(Fflosscolorquant):
  when 16 is static:
    const
      Fflosscolorquant* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:386:9
  else:
    let Fflosscolorquant* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:386:9
else:
  static :
    hint("Declaration of " & "Fflosscolorquant" &
        " already exists, not redeclaring")
when not declared(Fflosschroma):
  when 32 is static:
    const
      Fflosschroma* = 32     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:387:9
  else:
    let Fflosschroma* = 32   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:387:9
else:
  static :
    hint("Declaration of " & "Fflosschroma" & " already exists, not redeclaring")
when not declared(Fflossexcessresolution):
  when 64 is static:
    const
      Fflossexcessresolution* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:388:9
  else:
    let Fflossexcessresolution* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:388:9
else:
  static :
    hint("Declaration of " & "Fflossexcessresolution" &
        " already exists, not redeclaring")
when not declared(Fflossexcessdepth):
  when 128 is static:
    const
      Fflossexcessdepth* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:389:9
  else:
    let Fflossexcessdepth* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/pixdesc.h:389:9
else:
  static :
    hint("Declaration of " & "Fflossexcessdepth" &
        " already exists, not redeclaring")
when not declared(Avnumdatapointers):
  when 8 is static:
    const
      Avnumdatapointers* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:341:9
  else:
    let Avnumdatapointers* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:341:9
else:
  static :
    hint("Declaration of " & "Avnumdatapointers" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrorinvalidbitstream):
  when 1 is static:
    const
      Ffdecodeerrorinvalidbitstream* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:718:9
  else:
    let Ffdecodeerrorinvalidbitstream* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:718:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrorinvalidbitstream" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrormissingreference):
  when 2 is static:
    const
      Ffdecodeerrormissingreference* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:719:9
  else:
    let Ffdecodeerrormissingreference* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:719:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrormissingreference" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrorconcealmentactive):
  when 4 is static:
    const
      Ffdecodeerrorconcealmentactive* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:720:9
  else:
    let Ffdecodeerrorconcealmentactive* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:720:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrorconcealmentactive" &
        " already exists, not redeclaring")
when not declared(Ffdecodeerrordecodeslices):
  when 8 is static:
    const
      Ffdecodeerrordecodeslices* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:721:9
  else:
    let Ffdecodeerrordecodeslices* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavutil/frame.h:721:9
else:
  static :
    hint("Declaration of " & "Ffdecodeerrordecodeslices" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmajor):
  when 60 is static:
    const
      Libavcodecversionmajor* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version_major.h:28:9
  else:
    let Libavcodecversionmajor* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version_major.h:28:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmajor" &
        " already exists, not redeclaring")
when not declared(Avinputbufferpaddingsize):
  when 64 is static:
    const
      Avinputbufferpaddingsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:40:9
  else:
    let Avinputbufferpaddingsize* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:40:9
else:
  static :
    hint("Declaration of " & "Avinputbufferpaddingsize" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceverystrict):
  when 2 is static:
    const
      Ffcomplianceverystrict* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:58:9
  else:
    let Ffcomplianceverystrict* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:58:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceverystrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancestrict):
  when 1 is static:
    const
      Ffcompliancestrict* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:59:9
  else:
    let Ffcompliancestrict* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:59:9
else:
  static :
    hint("Declaration of " & "Ffcompliancestrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancenormal):
  when 0 is static:
    const
      Ffcompliancenormal* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:60:9
  else:
    let Ffcompliancenormal* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:60:9
else:
  static :
    hint("Declaration of " & "Ffcompliancenormal" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceunofficial):
  when -1 is static:
    const
      Ffcomplianceunofficial* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:61:9
  else:
    let Ffcomplianceunofficial* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:61:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceunofficial" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceexperimental):
  when -2 is static:
    const
      Ffcomplianceexperimental* = -2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:62:9
  else:
    let Ffcomplianceexperimental* = -2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:62:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceexperimental" &
        " already exists, not redeclaring")
when not declared(Avprofileunknown):
  when -99 is static:
    const
      Avprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:65:9
  else:
    let Avprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:65:9
else:
  static :
    hint("Declaration of " & "Avprofileunknown" &
        " already exists, not redeclaring")
when not declared(Avprofilereserved):
  when -100 is static:
    const
      Avprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:66:9
  else:
    let Avprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:66:9
else:
  static :
    hint("Declaration of " & "Avprofilereserved" &
        " already exists, not redeclaring")
when not declared(Avprofileaacmain):
  when 0 is static:
    const
      Avprofileaacmain* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:68:9
  else:
    let Avprofileaacmain* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:68:9
else:
  static :
    hint("Declaration of " & "Avprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Avprofileaaclow):
  when 1 is static:
    const
      Avprofileaaclow* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:69:9
  else:
    let Avprofileaaclow* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:69:9
else:
  static :
    hint("Declaration of " & "Avprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Avprofileaacssr):
  when 2 is static:
    const
      Avprofileaacssr* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:70:9
  else:
    let Avprofileaacssr* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:70:9
else:
  static :
    hint("Declaration of " & "Avprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Avprofileaacltp):
  when 3 is static:
    const
      Avprofileaacltp* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:71:9
  else:
    let Avprofileaacltp* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:71:9
else:
  static :
    hint("Declaration of " & "Avprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Avprofileaache):
  when 4 is static:
    const
      Avprofileaache* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:72:9
  else:
    let Avprofileaache* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:72:9
else:
  static :
    hint("Declaration of " & "Avprofileaache" &
        " already exists, not redeclaring")
when not declared(Avprofileaachev2):
  when 28 is static:
    const
      Avprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:73:9
  else:
    let Avprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:73:9
else:
  static :
    hint("Declaration of " & "Avprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Avprofileaacld):
  when 22 is static:
    const
      Avprofileaacld* = 22   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:74:9
  else:
    let Avprofileaacld* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:74:9
else:
  static :
    hint("Declaration of " & "Avprofileaacld" &
        " already exists, not redeclaring")
when not declared(Avprofileaaceld):
  when 38 is static:
    const
      Avprofileaaceld* = 38  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:75:9
  else:
    let Avprofileaaceld* = 38 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:75:9
else:
  static :
    hint("Declaration of " & "Avprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aaclow):
  when 128 is static:
    const
      Avprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:76:9
  else:
    let Avprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:76:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aache):
  when 131 is static:
    const
      Avprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:77:9
  else:
    let Avprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:77:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhd):
  when 0 is static:
    const
      Avprofilednxhd* = 0    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:79:9
  else:
    let Avprofilednxhd* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:79:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrlb):
  when 1 is static:
    const
      Avprofilednxhrlb* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:80:9
  else:
    let Avprofilednxhrlb* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:80:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrsq):
  when 2 is static:
    const
      Avprofilednxhrsq* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:81:9
  else:
    let Avprofilednxhrsq* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:81:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhq):
  when 3 is static:
    const
      Avprofilednxhrhq* = 3  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:82:9
  else:
    let Avprofilednxhrhq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:82:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhqx):
  when 4 is static:
    const
      Avprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:83:9
  else:
    let Avprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:83:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhr444):
  when 5 is static:
    const
      Avprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:84:9
  else:
    let Avprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:84:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Avprofiledts):
  when 20 is static:
    const
      Avprofiledts* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:86:9
  else:
    let Avprofiledts* = 20   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:86:9
else:
  static :
    hint("Declaration of " & "Avprofiledts" & " already exists, not redeclaring")
when not declared(Avprofiledtses):
  when 30 is static:
    const
      Avprofiledtses* = 30   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:87:9
  else:
    let Avprofiledtses* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:87:9
else:
  static :
    hint("Declaration of " & "Avprofiledtses" &
        " already exists, not redeclaring")
when not declared(Avprofiledts9624):
  when 40 is static:
    const
      Avprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:88:9
  else:
    let Avprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:88:9
else:
  static :
    hint("Declaration of " & "Avprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdhra):
  when 50 is static:
    const
      Avprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:89:9
  else:
    let Avprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:89:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdma):
  when 60 is static:
    const
      Avprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:90:9
  else:
    let Avprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:90:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Avprofiledtsexpress):
  when 70 is static:
    const
      Avprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:91:9
  else:
    let Avprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:91:9
else:
  static :
    hint("Declaration of " & "Avprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmax):
  when 61 is static:
    const
      Avprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:92:9
  else:
    let Avprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:92:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmaximax):
  when 62 is static:
    const
      Avprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:93:9
  else:
    let Avprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:93:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Avprofileeac3ddpatmos):
  when 30 is static:
    const
      Avprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:95:9
  else:
    let Avprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:95:9
else:
  static :
    hint("Declaration of " & "Avprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Avprofiletruehdatmos):
  when 30 is static:
    const
      Avprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:97:9
  else:
    let Avprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:97:9
else:
  static :
    hint("Declaration of " & "Avprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2422):
  when 0 is static:
    const
      Avprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:99:9
  else:
    let Avprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:99:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2high):
  when 1 is static:
    const
      Avprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:100:9
  else:
    let Avprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:100:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2ss):
  when 2 is static:
    const
      Avprofilempeg2ss* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:101:9
  else:
    let Avprofilempeg2ss* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:101:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2snrscalable):
  when 3 is static:
    const
      Avprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:102:9
  else:
    let Avprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:102:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2main):
  when 4 is static:
    const
      Avprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:103:9
  else:
    let Avprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:103:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2simple):
  when 5 is static:
    const
      Avprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:104:9
  else:
    let Avprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:104:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Avprofileh264baseline):
  when 66 is static:
    const
      Avprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:109:9
  else:
    let Avprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:109:9
else:
  static :
    hint("Declaration of " & "Avprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Avprofileh264main):
  when 77 is static:
    const
      Avprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:111:9
  else:
    let Avprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:111:9
else:
  static :
    hint("Declaration of " & "Avprofileh264main" &
        " already exists, not redeclaring")
when not declared(Avprofileh264extended):
  when 88 is static:
    const
      Avprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:112:9
  else:
    let Avprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:112:9
else:
  static :
    hint("Declaration of " & "Avprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high):
  when 100 is static:
    const
      Avprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:113:9
  else:
    let Avprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:113:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high10):
  when 110 is static:
    const
      Avprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:114:9
  else:
    let Avprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:114:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Avprofileh264multiviewhigh):
  when 118 is static:
    const
      Avprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:116:9
  else:
    let Avprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:116:9
else:
  static :
    hint("Declaration of " & "Avprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high422):
  when 122 is static:
    const
      Avprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:117:9
  else:
    let Avprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:117:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Avprofileh264stereohigh):
  when 128 is static:
    const
      Avprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:119:9
  else:
    let Avprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:119:9
else:
  static :
    hint("Declaration of " & "Avprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444):
  when 144 is static:
    const
      Avprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:120:9
  else:
    let Avprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:120:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444predictive):
  when 244 is static:
    const
      Avprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:121:9
  else:
    let Avprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:121:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Avprofileh264cavlc444):
  when 44 is static:
    const
      Avprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:123:9
  else:
    let Avprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:123:9
else:
  static :
    hint("Declaration of " & "Avprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1simple):
  when 0 is static:
    const
      Avprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:125:9
  else:
    let Avprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:125:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1main):
  when 1 is static:
    const
      Avprofilevc1main* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:126:9
  else:
    let Avprofilevc1main* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:126:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1complex):
  when 2 is static:
    const
      Avprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:127:9
  else:
    let Avprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:127:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1advanced):
  when 3 is static:
    const
      Avprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:128:9
  else:
    let Avprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:128:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simple):
  when 0 is static:
    const
      Avprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:130:9
  else:
    let Avprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:130:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplescalable):
  when 1 is static:
    const
      Avprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:131:9
  else:
    let Avprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:131:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4core):
  when 2 is static:
    const
      Avprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:132:9
  else:
    let Avprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:132:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4main):
  when 3 is static:
    const
      Avprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:133:9
  else:
    let Avprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:133:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4nbit):
  when 4 is static:
    const
      Avprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:134:9
  else:
    let Avprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:134:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4scalabletexture):
  when 5 is static:
    const
      Avprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:135:9
  else:
    let Avprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:135:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:136:9
  else:
    let Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:136:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:137:9
  else:
    let Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:137:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4hybrid):
  when 8 is static:
    const
      Avprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:138:9
  else:
    let Avprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:138:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Avprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:139:9
  else:
    let Avprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:139:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4corescalable):
  when 10 is static:
    const
      Avprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:140:9
  else:
    let Avprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:140:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcoding):
  when 11 is static:
    const
      Avprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:141:9
  else:
    let Avprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:141:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcore):
  when 12 is static:
    const
      Avprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:142:9
  else:
    let Avprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:142:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:143:9
  else:
    let Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:143:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplestudio):
  when 14 is static:
    const
      Avprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:144:9
  else:
    let Avprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:144:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedsimple):
  when 15 is static:
    const
      Avprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:145:9
  else:
    let Avprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:145:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:147:9
  else:
    let Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:147:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:148:9
  else:
    let Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:148:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:149:9
  else:
    let Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:149:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:150:9
  else:
    let Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:150:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:151:9
  else:
    let Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:151:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Avprofilevp90):
  when 0 is static:
    const
      Avprofilevp90* = 0     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:153:9
  else:
    let Avprofilevp90* = 0   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:153:9
else:
  static :
    hint("Declaration of " & "Avprofilevp90" &
        " already exists, not redeclaring")
when not declared(Avprofilevp91):
  when 1 is static:
    const
      Avprofilevp91* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:154:9
  else:
    let Avprofilevp91* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:154:9
else:
  static :
    hint("Declaration of " & "Avprofilevp91" &
        " already exists, not redeclaring")
when not declared(Avprofilevp92):
  when 2 is static:
    const
      Avprofilevp92* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:155:9
  else:
    let Avprofilevp92* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:155:9
else:
  static :
    hint("Declaration of " & "Avprofilevp92" &
        " already exists, not redeclaring")
when not declared(Avprofilevp93):
  when 3 is static:
    const
      Avprofilevp93* = 3     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:156:9
  else:
    let Avprofilevp93* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:156:9
else:
  static :
    hint("Declaration of " & "Avprofilevp93" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain):
  when 1 is static:
    const
      Avprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:158:9
  else:
    let Avprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:158:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain10):
  when 2 is static:
    const
      Avprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:159:9
  else:
    let Avprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:159:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmainstillpicture):
  when 3 is static:
    const
      Avprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:160:9
  else:
    let Avprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:160:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcrext):
  when 4 is static:
    const
      Avprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:161:9
  else:
    let Avprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:161:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcscc):
  when 9 is static:
    const
      Avprofilehevcscc* = 9  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:162:9
  else:
    let Avprofilehevcscc* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:162:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10):
  when 1 is static:
    const
      Avprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:164:9
  else:
    let Avprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:164:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10444):
  when 33 is static:
    const
      Avprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:165:9
  else:
    let Avprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:165:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Avprofileav1main):
  when 0 is static:
    const
      Avprofileav1main* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:167:9
  else:
    let Avprofileav1main* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:167:9
else:
  static :
    hint("Declaration of " & "Avprofileav1main" &
        " already exists, not redeclaring")
when not declared(Avprofileav1high):
  when 1 is static:
    const
      Avprofileav1high* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:168:9
  else:
    let Avprofileav1high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:168:9
else:
  static :
    hint("Declaration of " & "Avprofileav1high" &
        " already exists, not redeclaring")
when not declared(Avprofileav1professional):
  when 2 is static:
    const
      Avprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:169:9
  else:
    let Avprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:169:9
else:
  static :
    hint("Declaration of " & "Avprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:171:9
  else:
    let Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:171:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:172:9
  else:
    let Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:172:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:173:9
  else:
    let Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:173:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:174:9
  else:
    let Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:174:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpegjpegls):
  when 247 is static:
    const
      Avprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:175:9
  else:
    let Avprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:175:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Avprofilesbcmsbc):
  when 1 is static:
    const
      Avprofilesbcmsbc* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:177:9
  else:
    let Avprofilesbcmsbc* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:177:9
else:
  static :
    hint("Declaration of " & "Avprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Avprofileproresproxy):
  when 0 is static:
    const
      Avprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:179:9
  else:
    let Avprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:179:9
else:
  static :
    hint("Declaration of " & "Avprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Avprofileproreslt):
  when 1 is static:
    const
      Avprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:180:9
  else:
    let Avprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:180:9
else:
  static :
    hint("Declaration of " & "Avprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Avprofileproresstandard):
  when 2 is static:
    const
      Avprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:181:9
  else:
    let Avprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:181:9
else:
  static :
    hint("Declaration of " & "Avprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Avprofileproreshq):
  when 3 is static:
    const
      Avprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:182:9
  else:
    let Avprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:182:9
else:
  static :
    hint("Declaration of " & "Avprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Avprofileprores4444):
  when 4 is static:
    const
      Avprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:183:9
  else:
    let Avprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:183:9
else:
  static :
    hint("Declaration of " & "Avprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Avprofileproresxq):
  when 5 is static:
    const
      Avprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:184:9
  else:
    let Avprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:184:9
else:
  static :
    hint("Declaration of " & "Avprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilea):
  when 0 is static:
    const
      Avprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:186:9
  else:
    let Avprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:186:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilec):
  when 1 is static:
    const
      Avprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:187:9
  else:
    let Avprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:187:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Avprofileklvasync):
  when 0 is static:
    const
      Avprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:189:9
  else:
    let Avprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:189:9
else:
  static :
    hint("Declaration of " & "Avprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Avprofileklvaasync):
  when 1 is static:
    const
      Avprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:190:9
  else:
    let Avprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:190:9
else:
  static :
    hint("Declaration of " & "Avprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Avprofileevcbaseline):
  when 0 is static:
    const
      Avprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:192:9
  else:
    let Avprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:192:9
else:
  static :
    hint("Declaration of " & "Avprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Avprofileevcmain):
  when 1 is static:
    const
      Avprofileevcmain* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:193:9
  else:
    let Avprofileevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:193:9
else:
  static :
    hint("Declaration of " & "Avprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Avlevelunknown):
  when -99 is static:
    const
      Avlevelunknown* = -99  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:196:9
  else:
    let Avlevelunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/defs.h:196:9
else:
  static :
    hint("Declaration of " & "Avlevelunknown" &
        " already exists, not redeclaring")
when not declared(Avpktflagkey):
  when 1 is static:
    const
      Avpktflagkey* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:546:9
  else:
    let Avpktflagkey* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:546:9
else:
  static :
    hint("Declaration of " & "Avpktflagkey" & " already exists, not redeclaring")
when not declared(Avpktflagcorrupt):
  when 2 is static:
    const
      Avpktflagcorrupt* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:547:9
  else:
    let Avpktflagcorrupt* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:547:9
else:
  static :
    hint("Declaration of " & "Avpktflagcorrupt" &
        " already exists, not redeclaring")
when not declared(Avpktflagdiscard):
  when 4 is static:
    const
      Avpktflagdiscard* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:553:9
  else:
    let Avpktflagdiscard* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:553:9
else:
  static :
    hint("Declaration of " & "Avpktflagdiscard" &
        " already exists, not redeclaring")
when not declared(Avpktflagtrusted):
  when 8 is static:
    const
      Avpktflagtrusted* = 8  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:560:9
  else:
    let Avpktflagtrusted* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:560:9
else:
  static :
    hint("Declaration of " & "Avpktflagtrusted" &
        " already exists, not redeclaring")
when not declared(Avpktflagdisposable):
  when 16 is static:
    const
      Avpktflagdisposable* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:565:9
  else:
    let Avpktflagdisposable* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/packet.h:565:9
else:
  static :
    hint("Declaration of " & "Avpktflagdisposable" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionminor):
  when 31 is static:
    const
      Libavcodecversionminor* = 31 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version.h:32:9
  else:
    let Libavcodecversionminor* = 31 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionminor" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmicro):
  when 102 is static:
    const
      Libavcodecversionmicro* = 102 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version.h:33:9
  else:
    let Libavcodecversionmicro* = 102 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/version.h:33:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmicro" &
        " already exists, not redeclaring")
when not declared(Avinputbufferminsize):
  when 16384 is static:
    const
      Avinputbufferminsize* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:195:9
  else:
    let Avinputbufferminsize* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:195:9
else:
  static :
    hint("Declaration of " & "Avinputbufferminsize" &
        " already exists, not redeclaring")
when not declared(Ffcompressiondefault):
  when -1 is static:
    const
      Ffcompressiondefault* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:514:9
  else:
    let Ffcompressiondefault* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:514:9
else:
  static :
    hint("Declaration of " & "Ffcompressiondefault" &
        " already exists, not redeclaring")
when not declared(Ffcmpsad):
  when 0 is static:
    const
      Ffcmpsad* = 0          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:848:9
  else:
    let Ffcmpsad* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:848:9
else:
  static :
    hint("Declaration of " & "Ffcmpsad" & " already exists, not redeclaring")
when not declared(Ffcmpsse):
  when 1 is static:
    const
      Ffcmpsse* = 1          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:849:9
  else:
    let Ffcmpsse* = 1        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:849:9
else:
  static :
    hint("Declaration of " & "Ffcmpsse" & " already exists, not redeclaring")
when not declared(Ffcmpsatd):
  when 2 is static:
    const
      Ffcmpsatd* = 2         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:850:9
  else:
    let Ffcmpsatd* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:850:9
else:
  static :
    hint("Declaration of " & "Ffcmpsatd" & " already exists, not redeclaring")
when not declared(Ffcmpdct):
  when 3 is static:
    const
      Ffcmpdct* = 3          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:851:9
  else:
    let Ffcmpdct* = 3        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:851:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct" & " already exists, not redeclaring")
when not declared(Ffcmppsnr):
  when 4 is static:
    const
      Ffcmppsnr* = 4         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:852:9
  else:
    let Ffcmppsnr* = 4       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:852:9
else:
  static :
    hint("Declaration of " & "Ffcmppsnr" & " already exists, not redeclaring")
when not declared(Ffcmpbit):
  when 5 is static:
    const
      Ffcmpbit* = 5          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:853:9
  else:
    let Ffcmpbit* = 5        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:853:9
else:
  static :
    hint("Declaration of " & "Ffcmpbit" & " already exists, not redeclaring")
when not declared(Ffcmprd):
  when 6 is static:
    const
      Ffcmprd* = 6           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:854:9
  else:
    let Ffcmprd* = 6         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:854:9
else:
  static :
    hint("Declaration of " & "Ffcmprd" & " already exists, not redeclaring")
when not declared(Ffcmpzero):
  when 7 is static:
    const
      Ffcmpzero* = 7         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:855:9
  else:
    let Ffcmpzero* = 7       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:855:9
else:
  static :
    hint("Declaration of " & "Ffcmpzero" & " already exists, not redeclaring")
when not declared(Ffcmpvsad):
  when 8 is static:
    const
      Ffcmpvsad* = 8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:856:9
  else:
    let Ffcmpvsad* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:856:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsad" & " already exists, not redeclaring")
when not declared(Ffcmpvsse):
  when 9 is static:
    const
      Ffcmpvsse* = 9         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:857:9
  else:
    let Ffcmpvsse* = 9       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:857:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsse" & " already exists, not redeclaring")
when not declared(Ffcmpnsse):
  when 10 is static:
    const
      Ffcmpnsse* = 10        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:858:9
  else:
    let Ffcmpnsse* = 10      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:858:9
else:
  static :
    hint("Declaration of " & "Ffcmpnsse" & " already exists, not redeclaring")
when not declared(Ffcmpw53):
  when 11 is static:
    const
      Ffcmpw53* = 11         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:859:9
  else:
    let Ffcmpw53* = 11       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:859:9
else:
  static :
    hint("Declaration of " & "Ffcmpw53" & " already exists, not redeclaring")
when not declared(Ffcmpw97):
  when 12 is static:
    const
      Ffcmpw97* = 12         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:860:9
  else:
    let Ffcmpw97* = 12       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:860:9
else:
  static :
    hint("Declaration of " & "Ffcmpw97" & " already exists, not redeclaring")
when not declared(Ffcmpdctmax):
  when 13 is static:
    const
      Ffcmpdctmax* = 13      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:861:9
  else:
    let Ffcmpdctmax* = 13    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:861:9
else:
  static :
    hint("Declaration of " & "Ffcmpdctmax" & " already exists, not redeclaring")
when not declared(Ffcmpdct264):
  when 14 is static:
    const
      Ffcmpdct264* = 14      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:862:9
  else:
    let Ffcmpdct264* = 14    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:862:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct264" & " already exists, not redeclaring")
when not declared(Ffcmpmediansad):
  when 15 is static:
    const
      Ffcmpmediansad* = 15   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:863:9
  else:
    let Ffcmpmediansad* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:863:9
else:
  static :
    hint("Declaration of " & "Ffcmpmediansad" &
        " already exists, not redeclaring")
when not declared(Ffcmpchroma):
  when 256 is static:
    const
      Ffcmpchroma* = 256     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:864:9
  else:
    let Ffcmpchroma* = 256   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:864:9
else:
  static :
    hint("Declaration of " & "Ffcmpchroma" & " already exists, not redeclaring")
when not declared(Sliceflagcodedorder):
  when 1 is static:
    const
      Sliceflagcodedorder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:916:9
  else:
    let Sliceflagcodedorder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:916:9
else:
  static :
    hint("Declaration of " & "Sliceflagcodedorder" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowfield):
  when 2 is static:
    const
      Sliceflagallowfield* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:917:9
  else:
    let Sliceflagallowfield* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:917:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowfield" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowplane):
  when 4 is static:
    const
      Sliceflagallowplane* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:918:9
  else:
    let Sliceflagallowplane* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:918:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowplane" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionsimple):
  when 0 is static:
    const
      Ffmbdecisionsimple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:926:9
  else:
    let Ffmbdecisionsimple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:926:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionsimple" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionbits):
  when 1 is static:
    const
      Ffmbdecisionbits* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:927:9
  else:
    let Ffmbdecisionbits* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:927:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionbits" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionrd):
  when 2 is static:
    const
      Ffmbdecisionrd* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:928:9
  else:
    let Ffmbdecisionrd* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:928:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionrd" &
        " already exists, not redeclaring")
when not declared(Ffbugautodetect):
  when 1 is static:
    const
      Ffbugautodetect* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1342:9
  else:
    let Ffbugautodetect* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1342:9
else:
  static :
    hint("Declaration of " & "Ffbugautodetect" &
        " already exists, not redeclaring")
when not declared(Ffbugxvidilace):
  when 4 is static:
    const
      Ffbugxvidilace* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1343:9
  else:
    let Ffbugxvidilace* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1343:9
else:
  static :
    hint("Declaration of " & "Ffbugxvidilace" &
        " already exists, not redeclaring")
when not declared(Ffbugump4):
  when 8 is static:
    const
      Ffbugump4* = 8         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1344:9
  else:
    let Ffbugump4* = 8       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1344:9
else:
  static :
    hint("Declaration of " & "Ffbugump4" & " already exists, not redeclaring")
when not declared(Ffbugnopadding):
  when 16 is static:
    const
      Ffbugnopadding* = 16   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1345:9
  else:
    let Ffbugnopadding* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1345:9
else:
  static :
    hint("Declaration of " & "Ffbugnopadding" &
        " already exists, not redeclaring")
when not declared(Ffbugamv):
  when 32 is static:
    const
      Ffbugamv* = 32         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1346:9
  else:
    let Ffbugamv* = 32       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1346:9
else:
  static :
    hint("Declaration of " & "Ffbugamv" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma):
  when 64 is static:
    const
      Ffbugqpelchroma* = 64  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1347:9
  else:
    let Ffbugqpelchroma* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1347:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugstdqpel):
  when 128 is static:
    const
      Ffbugstdqpel* = 128    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1348:9
  else:
    let Ffbugstdqpel* = 128  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1348:9
else:
  static :
    hint("Declaration of " & "Ffbugstdqpel" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma2):
  when 256 is static:
    const
      Ffbugqpelchroma2* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1349:9
  else:
    let Ffbugqpelchroma2* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1349:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma2" &
        " already exists, not redeclaring")
when not declared(Ffbugdirectblocksize):
  when 512 is static:
    const
      Ffbugdirectblocksize* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1350:9
  else:
    let Ffbugdirectblocksize* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1350:9
else:
  static :
    hint("Declaration of " & "Ffbugdirectblocksize" &
        " already exists, not redeclaring")
when not declared(Ffbugedge):
  when 1024 is static:
    const
      Ffbugedge* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1351:9
  else:
    let Ffbugedge* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1351:9
else:
  static :
    hint("Declaration of " & "Ffbugedge" & " already exists, not redeclaring")
when not declared(Ffbughpelchroma):
  when 2048 is static:
    const
      Ffbughpelchroma* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1352:9
  else:
    let Ffbughpelchroma* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1352:9
else:
  static :
    hint("Declaration of " & "Ffbughpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugdcclip):
  when 4096 is static:
    const
      Ffbugdcclip* = 4096    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1353:9
  else:
    let Ffbugdcclip* = 4096  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1353:9
else:
  static :
    hint("Declaration of " & "Ffbugdcclip" & " already exists, not redeclaring")
when not declared(Ffbugms):
  when 8192 is static:
    const
      Ffbugms* = 8192        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1354:9
  else:
    let Ffbugms* = 8192      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1354:9
else:
  static :
    hint("Declaration of " & "Ffbugms" & " already exists, not redeclaring")
when not declared(Ffbugtruncated):
  when 16384 is static:
    const
      Ffbugtruncated* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1355:9
  else:
    let Ffbugtruncated* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1355:9
else:
  static :
    hint("Declaration of " & "Ffbugtruncated" &
        " already exists, not redeclaring")
when not declared(Ffbugiedge):
  when 32768 is static:
    const
      Ffbugiedge* = 32768    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1356:9
  else:
    let Ffbugiedge* = 32768  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1356:9
else:
  static :
    hint("Declaration of " & "Ffbugiedge" & " already exists, not redeclaring")
when not declared(Ffecguessmvs):
  when 1 is static:
    const
      Ffecguessmvs* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1379:9
  else:
    let Ffecguessmvs* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1379:9
else:
  static :
    hint("Declaration of " & "Ffecguessmvs" & " already exists, not redeclaring")
when not declared(Ffecdeblock):
  when 2 is static:
    const
      Ffecdeblock* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1380:9
  else:
    let Ffecdeblock* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1380:9
else:
  static :
    hint("Declaration of " & "Ffecdeblock" & " already exists, not redeclaring")
when not declared(Ffecfavorinter):
  when 256 is static:
    const
      Ffecfavorinter* = 256  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1381:9
  else:
    let Ffecfavorinter* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1381:9
else:
  static :
    hint("Declaration of " & "Ffecfavorinter" &
        " already exists, not redeclaring")
when not declared(Ffdebugpictinfo):
  when 1 is static:
    const
      Ffdebugpictinfo* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1389:9
  else:
    let Ffdebugpictinfo* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1389:9
else:
  static :
    hint("Declaration of " & "Ffdebugpictinfo" &
        " already exists, not redeclaring")
when not declared(Ffdebugrc):
  when 2 is static:
    const
      Ffdebugrc* = 2         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1390:9
  else:
    let Ffdebugrc* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1390:9
else:
  static :
    hint("Declaration of " & "Ffdebugrc" & " already exists, not redeclaring")
when not declared(Ffdebugbitstream):
  when 4 is static:
    const
      Ffdebugbitstream* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1391:9
  else:
    let Ffdebugbitstream* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1391:9
else:
  static :
    hint("Declaration of " & "Ffdebugbitstream" &
        " already exists, not redeclaring")
when not declared(Ffdebugmbtype):
  when 8 is static:
    const
      Ffdebugmbtype* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1392:9
  else:
    let Ffdebugmbtype* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1392:9
else:
  static :
    hint("Declaration of " & "Ffdebugmbtype" &
        " already exists, not redeclaring")
when not declared(Ffdebugqp):
  when 16 is static:
    const
      Ffdebugqp* = 16        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1393:9
  else:
    let Ffdebugqp* = 16      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1393:9
else:
  static :
    hint("Declaration of " & "Ffdebugqp" & " already exists, not redeclaring")
when not declared(Ffdebugdctcoeff):
  when 64 is static:
    const
      Ffdebugdctcoeff* = 64  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1394:9
  else:
    let Ffdebugdctcoeff* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1394:9
else:
  static :
    hint("Declaration of " & "Ffdebugdctcoeff" &
        " already exists, not redeclaring")
when not declared(Ffdebugskip):
  when 128 is static:
    const
      Ffdebugskip* = 128     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1395:9
  else:
    let Ffdebugskip* = 128   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1395:9
else:
  static :
    hint("Declaration of " & "Ffdebugskip" & " already exists, not redeclaring")
when not declared(Ffdebugstartcode):
  when 256 is static:
    const
      Ffdebugstartcode* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1396:9
  else:
    let Ffdebugstartcode* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1396:9
else:
  static :
    hint("Declaration of " & "Ffdebugstartcode" &
        " already exists, not redeclaring")
when not declared(Ffdebuger):
  when 1024 is static:
    const
      Ffdebuger* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1397:9
  else:
    let Ffdebuger* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1397:9
else:
  static :
    hint("Declaration of " & "Ffdebuger" & " already exists, not redeclaring")
when not declared(Ffdebugmmco):
  when 2048 is static:
    const
      Ffdebugmmco* = 2048    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1398:9
  else:
    let Ffdebugmmco* = 2048  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1398:9
else:
  static :
    hint("Declaration of " & "Ffdebugmmco" & " already exists, not redeclaring")
when not declared(Ffdebugbugs):
  when 4096 is static:
    const
      Ffdebugbugs* = 4096    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1399:9
  else:
    let Ffdebugbugs* = 4096  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1399:9
else:
  static :
    hint("Declaration of " & "Ffdebugbugs" & " already exists, not redeclaring")
when not declared(Ffdebugbuffers):
  when 32768 is static:
    const
      Ffdebugbuffers* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1400:9
  else:
    let Ffdebugbuffers* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1400:9
else:
  static :
    hint("Declaration of " & "Ffdebugbuffers" &
        " already exists, not redeclaring")
when not declared(Ffdebugthreads):
  when 65536 is static:
    const
      Ffdebugthreads* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1401:9
  else:
    let Ffdebugthreads* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1401:9
else:
  static :
    hint("Declaration of " & "Ffdebugthreads" &
        " already exists, not redeclaring")
when not declared(Ffdebuggreenmd):
  when 8388608 is static:
    const
      Ffdebuggreenmd* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1402:9
  else:
    let Ffdebuggreenmd* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1402:9
else:
  static :
    hint("Declaration of " & "Ffdebuggreenmd" &
        " already exists, not redeclaring")
when not declared(Ffdebugnomc):
  when 16777216 is static:
    const
      Ffdebugnomc* = 16777216 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1403:9
  else:
    let Ffdebugnomc* = 16777216 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1403:9
else:
  static :
    hint("Declaration of " & "Ffdebugnomc" & " already exists, not redeclaring")
when not declared(Ffdctauto):
  when 0 is static:
    const
      Ffdctauto* = 0         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1474:9
  else:
    let Ffdctauto* = 0       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1474:9
else:
  static :
    hint("Declaration of " & "Ffdctauto" & " already exists, not redeclaring")
when not declared(Ffdctfastint):
  when 1 is static:
    const
      Ffdctfastint* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1475:9
  else:
    let Ffdctfastint* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1475:9
else:
  static :
    hint("Declaration of " & "Ffdctfastint" & " already exists, not redeclaring")
when not declared(Ffdctint):
  when 2 is static:
    const
      Ffdctint* = 2          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1476:9
  else:
    let Ffdctint* = 2        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1476:9
else:
  static :
    hint("Declaration of " & "Ffdctint" & " already exists, not redeclaring")
when not declared(Ffdctmmx):
  when 3 is static:
    const
      Ffdctmmx* = 3          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1477:9
  else:
    let Ffdctmmx* = 3        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1477:9
else:
  static :
    hint("Declaration of " & "Ffdctmmx" & " already exists, not redeclaring")
when not declared(Ffdctaltivec):
  when 5 is static:
    const
      Ffdctaltivec* = 5      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1478:9
  else:
    let Ffdctaltivec* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1478:9
else:
  static :
    hint("Declaration of " & "Ffdctaltivec" & " already exists, not redeclaring")
when not declared(Ffdctfaan):
  when 6 is static:
    const
      Ffdctfaan* = 6         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1479:9
  else:
    let Ffdctfaan* = 6       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1479:9
else:
  static :
    hint("Declaration of " & "Ffdctfaan" & " already exists, not redeclaring")
when not declared(Ffidctauto):
  when 0 is static:
    const
      Ffidctauto* = 0        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1487:9
  else:
    let Ffidctauto* = 0      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1487:9
else:
  static :
    hint("Declaration of " & "Ffidctauto" & " already exists, not redeclaring")
when not declared(Ffidctint):
  when 1 is static:
    const
      Ffidctint* = 1         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1488:9
  else:
    let Ffidctint* = 1       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1488:9
else:
  static :
    hint("Declaration of " & "Ffidctint" & " already exists, not redeclaring")
when not declared(Ffidctsimple):
  when 2 is static:
    const
      Ffidctsimple* = 2      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1489:9
  else:
    let Ffidctsimple* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1489:9
else:
  static :
    hint("Declaration of " & "Ffidctsimple" & " already exists, not redeclaring")
when not declared(Ffidctsimplemmx):
  when 3 is static:
    const
      Ffidctsimplemmx* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1490:9
  else:
    let Ffidctsimplemmx* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1490:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplemmx" &
        " already exists, not redeclaring")
when not declared(Ffidctarm):
  when 7 is static:
    const
      Ffidctarm* = 7         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1491:9
  else:
    let Ffidctarm* = 7       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1491:9
else:
  static :
    hint("Declaration of " & "Ffidctarm" & " already exists, not redeclaring")
when not declared(Ffidctaltivec):
  when 8 is static:
    const
      Ffidctaltivec* = 8     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1492:9
  else:
    let Ffidctaltivec* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1492:9
else:
  static :
    hint("Declaration of " & "Ffidctaltivec" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearm):
  when 10 is static:
    const
      Ffidctsimplearm* = 10  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1493:9
  else:
    let Ffidctsimplearm* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1493:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearm" &
        " already exists, not redeclaring")
when not declared(Ffidctxvid):
  when 14 is static:
    const
      Ffidctxvid* = 14       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1494:9
  else:
    let Ffidctxvid* = 14     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1494:9
else:
  static :
    hint("Declaration of " & "Ffidctxvid" & " already exists, not redeclaring")
when not declared(Ffidctsimplearmv5te):
  when 16 is static:
    const
      Ffidctsimplearmv5te* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1495:9
  else:
    let Ffidctsimplearmv5te* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1495:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv5te" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearmv6):
  when 17 is static:
    const
      Ffidctsimplearmv6* = 17 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1496:9
  else:
    let Ffidctsimplearmv6* = 17 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1496:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv6" &
        " already exists, not redeclaring")
when not declared(Ffidctfaan):
  when 20 is static:
    const
      Ffidctfaan* = 20       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1497:9
  else:
    let Ffidctfaan* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1497:9
else:
  static :
    hint("Declaration of " & "Ffidctfaan" & " already exists, not redeclaring")
when not declared(Ffidctsimpleneon):
  when 22 is static:
    const
      Ffidctsimpleneon* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1498:9
  else:
    let Ffidctsimpleneon* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1498:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleneon" &
        " already exists, not redeclaring")
when not declared(Ffidctnone):
  when 24 is static:
    const
      Ffidctnone* = 24       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1501:9
  else:
    let Ffidctnone* = 24     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1501:9
else:
  static :
    hint("Declaration of " & "Ffidctnone" & " already exists, not redeclaring")
when not declared(Ffidctsimpleauto):
  when 128 is static:
    const
      Ffidctsimpleauto* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1503:9
  else:
    let Ffidctsimpleauto* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1503:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleauto" &
        " already exists, not redeclaring")
when not declared(Ffthreadframe):
  when 1 is static:
    const
      Ffthreadframe* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1543:9
  else:
    let Ffthreadframe* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1543:9
else:
  static :
    hint("Declaration of " & "Ffthreadframe" &
        " already exists, not redeclaring")
when not declared(Ffthreadslice):
  when 2 is static:
    const
      Ffthreadslice* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1544:9
  else:
    let Ffthreadslice* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1544:9
else:
  static :
    hint("Declaration of " & "Ffthreadslice" &
        " already exists, not redeclaring")
when not declared(Ffprofileunknown):
  when -99 is static:
    const
      Ffprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1600:9
  else:
    let Ffprofileunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1600:9
else:
  static :
    hint("Declaration of " & "Ffprofileunknown" &
        " already exists, not redeclaring")
when not declared(Ffprofilereserved):
  when -100 is static:
    const
      Ffprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1601:9
  else:
    let Ffprofilereserved* = -100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1601:9
else:
  static :
    hint("Declaration of " & "Ffprofilereserved" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacmain):
  when 0 is static:
    const
      Ffprofileaacmain* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1603:9
  else:
    let Ffprofileaacmain* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1603:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaclow):
  when 1 is static:
    const
      Ffprofileaaclow* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1604:9
  else:
    let Ffprofileaaclow* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1604:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacssr):
  when 2 is static:
    const
      Ffprofileaacssr* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1605:9
  else:
    let Ffprofileaacssr* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1605:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacltp):
  when 3 is static:
    const
      Ffprofileaacltp* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1606:9
  else:
    let Ffprofileaacltp* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1606:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Ffprofileaache):
  when 4 is static:
    const
      Ffprofileaache* = 4    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1607:9
  else:
    let Ffprofileaache* = 4  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1607:9
else:
  static :
    hint("Declaration of " & "Ffprofileaache" &
        " already exists, not redeclaring")
when not declared(Ffprofileaachev2):
  when 28 is static:
    const
      Ffprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1608:9
  else:
    let Ffprofileaachev2* = 28 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1608:9
else:
  static :
    hint("Declaration of " & "Ffprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacld):
  when 22 is static:
    const
      Ffprofileaacld* = 22   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1609:9
  else:
    let Ffprofileaacld* = 22 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1609:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacld" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaceld):
  when 38 is static:
    const
      Ffprofileaaceld* = 38  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1610:9
  else:
    let Ffprofileaaceld* = 38 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1610:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aaclow):
  when 128 is static:
    const
      Ffprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1611:9
  else:
    let Ffprofilempeg2aaclow* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1611:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aache):
  when 131 is static:
    const
      Ffprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1612:9
  else:
    let Ffprofilempeg2aache* = 131 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1612:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhd):
  when 0 is static:
    const
      Ffprofilednxhd* = 0    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1614:9
  else:
    let Ffprofilednxhd* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1614:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrlb):
  when 1 is static:
    const
      Ffprofilednxhrlb* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1615:9
  else:
    let Ffprofilednxhrlb* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1615:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrsq):
  when 2 is static:
    const
      Ffprofilednxhrsq* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1616:9
  else:
    let Ffprofilednxhrsq* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1616:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhq):
  when 3 is static:
    const
      Ffprofilednxhrhq* = 3  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1617:9
  else:
    let Ffprofilednxhrhq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1617:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhqx):
  when 4 is static:
    const
      Ffprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1618:9
  else:
    let Ffprofilednxhrhqx* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1618:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhr444):
  when 5 is static:
    const
      Ffprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1619:9
  else:
    let Ffprofilednxhr444* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1619:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts):
  when 20 is static:
    const
      Ffprofiledts* = 20     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1621:9
  else:
    let Ffprofiledts* = 20   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1621:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts" & " already exists, not redeclaring")
when not declared(Ffprofiledtses):
  when 30 is static:
    const
      Ffprofiledtses* = 30   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1622:9
  else:
    let Ffprofiledtses* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1622:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtses" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts9624):
  when 40 is static:
    const
      Ffprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1623:9
  else:
    let Ffprofiledts9624* = 40 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1623:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdhra):
  when 50 is static:
    const
      Ffprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1624:9
  else:
    let Ffprofiledtshdhra* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1624:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdma):
  when 60 is static:
    const
      Ffprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1625:9
  else:
    let Ffprofiledtshdma* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1625:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtsexpress):
  when 70 is static:
    const
      Ffprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1626:9
  else:
    let Ffprofiledtsexpress* = 70 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1626:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmax):
  when 61 is static:
    const
      Ffprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1627:9
  else:
    let Ffprofiledtshdmax* = 61 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1627:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmaximax):
  when 62 is static:
    const
      Ffprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1628:9
  else:
    let Ffprofiledtshdmaximax* = 62 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1628:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Ffprofileeac3ddpatmos):
  when 30 is static:
    const
      Ffprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1631:9
  else:
    let Ffprofileeac3ddpatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1631:9
else:
  static :
    hint("Declaration of " & "Ffprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofiletruehdatmos):
  when 30 is static:
    const
      Ffprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1633:9
  else:
    let Ffprofiletruehdatmos* = 30 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1633:9
else:
  static :
    hint("Declaration of " & "Ffprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2422):
  when 0 is static:
    const
      Ffprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1635:9
  else:
    let Ffprofilempeg2422* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1635:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2high):
  when 1 is static:
    const
      Ffprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1636:9
  else:
    let Ffprofilempeg2high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1636:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2ss):
  when 2 is static:
    const
      Ffprofilempeg2ss* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1637:9
  else:
    let Ffprofilempeg2ss* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1637:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2snrscalable):
  when 3 is static:
    const
      Ffprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1638:9
  else:
    let Ffprofilempeg2snrscalable* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1638:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2main):
  when 4 is static:
    const
      Ffprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1639:9
  else:
    let Ffprofilempeg2main* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1639:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2simple):
  when 5 is static:
    const
      Ffprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1640:9
  else:
    let Ffprofilempeg2simple* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1640:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264baseline):
  when 66 is static:
    const
      Ffprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1645:9
  else:
    let Ffprofileh264baseline* = 66 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1645:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264main):
  when 77 is static:
    const
      Ffprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1647:9
  else:
    let Ffprofileh264main* = 77 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1647:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264main" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264extended):
  when 88 is static:
    const
      Ffprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1648:9
  else:
    let Ffprofileh264extended* = 88 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1648:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high):
  when 100 is static:
    const
      Ffprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1649:9
  else:
    let Ffprofileh264high* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1649:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high10):
  when 110 is static:
    const
      Ffprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1650:9
  else:
    let Ffprofileh264high10* = 110 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1650:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264multiviewhigh):
  when 118 is static:
    const
      Ffprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1652:9
  else:
    let Ffprofileh264multiviewhigh* = 118 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1652:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high422):
  when 122 is static:
    const
      Ffprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1653:9
  else:
    let Ffprofileh264high422* = 122 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1653:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264stereohigh):
  when 128 is static:
    const
      Ffprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1655:9
  else:
    let Ffprofileh264stereohigh* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1655:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444):
  when 144 is static:
    const
      Ffprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1656:9
  else:
    let Ffprofileh264high444* = 144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1656:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444predictive):
  when 244 is static:
    const
      Ffprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1657:9
  else:
    let Ffprofileh264high444predictive* = 244 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1657:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264cavlc444):
  when 44 is static:
    const
      Ffprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1659:9
  else:
    let Ffprofileh264cavlc444* = 44 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1659:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1simple):
  when 0 is static:
    const
      Ffprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1661:9
  else:
    let Ffprofilevc1simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1661:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1main):
  when 1 is static:
    const
      Ffprofilevc1main* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1662:9
  else:
    let Ffprofilevc1main* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1662:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1complex):
  when 2 is static:
    const
      Ffprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1663:9
  else:
    let Ffprofilevc1complex* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1663:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1advanced):
  when 3 is static:
    const
      Ffprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1664:9
  else:
    let Ffprofilevc1advanced* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1664:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simple):
  when 0 is static:
    const
      Ffprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1666:9
  else:
    let Ffprofilempeg4simple* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1666:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplescalable):
  when 1 is static:
    const
      Ffprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1667:9
  else:
    let Ffprofilempeg4simplescalable* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1667:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4core):
  when 2 is static:
    const
      Ffprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1668:9
  else:
    let Ffprofilempeg4core* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1668:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4main):
  when 3 is static:
    const
      Ffprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1669:9
  else:
    let Ffprofilempeg4main* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1669:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4nbit):
  when 4 is static:
    const
      Ffprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1670:9
  else:
    let Ffprofilempeg4nbit* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1670:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4scalabletexture):
  when 5 is static:
    const
      Ffprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1671:9
  else:
    let Ffprofilempeg4scalabletexture* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1671:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1672:9
  else:
    let Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1672:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1673:9
  else:
    let Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1673:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4hybrid):
  when 8 is static:
    const
      Ffprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1674:9
  else:
    let Ffprofilempeg4hybrid* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1674:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1675:9
  else:
    let Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1675:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4corescalable):
  when 10 is static:
    const
      Ffprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1676:9
  else:
    let Ffprofilempeg4corescalable* = 10 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1676:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcoding):
  when 11 is static:
    const
      Ffprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1677:9
  else:
    let Ffprofilempeg4advancedcoding* = 11 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1677:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcore):
  when 12 is static:
    const
      Ffprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1678:9
  else:
    let Ffprofilempeg4advancedcore* = 12 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1678:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1679:9
  else:
    let Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1679:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplestudio):
  when 14 is static:
    const
      Ffprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1680:9
  else:
    let Ffprofilempeg4simplestudio* = 14 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1680:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedsimple):
  when 15 is static:
    const
      Ffprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1681:9
  else:
    let Ffprofilempeg4advancedsimple* = 15 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1681:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1683:9
  else:
    let Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1683:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1684:9
  else:
    let Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1684:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1685:9
  else:
    let Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1685:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1686:9
  else:
    let Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1686:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1687:9
  else:
    let Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1687:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp90):
  when 0 is static:
    const
      Ffprofilevp90* = 0     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1689:9
  else:
    let Ffprofilevp90* = 0   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1689:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp90" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp91):
  when 1 is static:
    const
      Ffprofilevp91* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1690:9
  else:
    let Ffprofilevp91* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1690:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp91" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp92):
  when 2 is static:
    const
      Ffprofilevp92* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1691:9
  else:
    let Ffprofilevp92* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1691:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp92" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp93):
  when 3 is static:
    const
      Ffprofilevp93* = 3     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1692:9
  else:
    let Ffprofilevp93* = 3   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1692:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp93" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain):
  when 1 is static:
    const
      Ffprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1694:9
  else:
    let Ffprofilehevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1694:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain10):
  when 2 is static:
    const
      Ffprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1695:9
  else:
    let Ffprofilehevcmain10* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1695:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmainstillpicture):
  when 3 is static:
    const
      Ffprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1696:9
  else:
    let Ffprofilehevcmainstillpicture* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1696:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcrext):
  when 4 is static:
    const
      Ffprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1697:9
  else:
    let Ffprofilehevcrext* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1697:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcscc):
  when 9 is static:
    const
      Ffprofilehevcscc* = 9  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1698:9
  else:
    let Ffprofilehevcscc* = 9 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1698:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10):
  when 1 is static:
    const
      Ffprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1700:9
  else:
    let Ffprofilevvcmain10* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1700:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10444):
  when 33 is static:
    const
      Ffprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1701:9
  else:
    let Ffprofilevvcmain10444* = 33 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1701:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1main):
  when 0 is static:
    const
      Ffprofileav1main* = 0  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1703:9
  else:
    let Ffprofileav1main* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1703:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1main" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1high):
  when 1 is static:
    const
      Ffprofileav1high* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1704:9
  else:
    let Ffprofileav1high* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1704:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1high" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1professional):
  when 2 is static:
    const
      Ffprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1705:9
  else:
    let Ffprofileav1professional* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1705:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1707:9
  else:
    let Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1707:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1708:9
  else:
    let Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1708:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1709:9
  else:
    let Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1709:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1710:9
  else:
    let Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1710:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpegjpegls):
  when 247 is static:
    const
      Ffprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1711:9
  else:
    let Ffprofilemjpegjpegls* = 247 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1711:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Ffprofilesbcmsbc):
  when 1 is static:
    const
      Ffprofilesbcmsbc* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1713:9
  else:
    let Ffprofilesbcmsbc* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1713:9
else:
  static :
    hint("Declaration of " & "Ffprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresproxy):
  when 0 is static:
    const
      Ffprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1715:9
  else:
    let Ffprofileproresproxy* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1715:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreslt):
  when 1 is static:
    const
      Ffprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1716:9
  else:
    let Ffprofileproreslt* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1716:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresstandard):
  when 2 is static:
    const
      Ffprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1717:9
  else:
    let Ffprofileproresstandard* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1717:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreshq):
  when 3 is static:
    const
      Ffprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1718:9
  else:
    let Ffprofileproreshq* = 3 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1718:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Ffprofileprores4444):
  when 4 is static:
    const
      Ffprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1719:9
  else:
    let Ffprofileprores4444* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1719:9
else:
  static :
    hint("Declaration of " & "Ffprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresxq):
  when 5 is static:
    const
      Ffprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1720:9
  else:
    let Ffprofileproresxq* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1720:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilea):
  when 0 is static:
    const
      Ffprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1722:9
  else:
    let Ffprofilearibprofilea* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1722:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilec):
  when 1 is static:
    const
      Ffprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1723:9
  else:
    let Ffprofilearibprofilec* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1723:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvasync):
  when 0 is static:
    const
      Ffprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1725:9
  else:
    let Ffprofileklvasync* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1725:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvaasync):
  when 1 is static:
    const
      Ffprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1726:9
  else:
    let Ffprofileklvaasync* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1726:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcbaseline):
  when 0 is static:
    const
      Ffprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1728:9
  else:
    let Ffprofileevcbaseline* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1728:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcmain):
  when 1 is static:
    const
      Ffprofileevcmain* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1729:9
  else:
    let Ffprofileevcmain* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1729:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Fflevelunknown):
  when -99 is static:
    const
      Fflevelunknown* = -99  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1744:9
  else:
    let Fflevelunknown* = -99 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1744:9
else:
  static :
    hint("Declaration of " & "Fflevelunknown" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodedonothing):
  when -1 is static:
    const
      Ffsubcharencmodedonothing* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1850:9
  else:
    let Ffsubcharencmodedonothing* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1850:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodedonothing" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeautomatic):
  when 0 is static:
    const
      Ffsubcharencmodeautomatic* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1851:9
  else:
    let Ffsubcharencmodeautomatic* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1851:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeautomatic" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodepredecoder):
  when 1 is static:
    const
      Ffsubcharencmodepredecoder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1852:9
  else:
    let Ffsubcharencmodepredecoder* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1852:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodepredecoder" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeignore):
  when 2 is static:
    const
      Ffsubcharencmodeignore* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1853:9
  else:
    let Ffsubcharencmodeignore* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1853:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeignore" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertylossless):
  when 1 is static:
    const
      Ffcodecpropertylossless* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1905:9
  else:
    let Ffcodecpropertylossless* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1905:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertylossless" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyclosedcaptions):
  when 2 is static:
    const
      Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1906:9
  else:
    let Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1906:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyclosedcaptions" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyfilmgrain):
  when 4 is static:
    const
      Ffcodecpropertyfilmgrain* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1907:9
  else:
    let Ffcodecpropertyfilmgrain* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:1907:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyfilmgrain" &
        " already exists, not redeclaring")
when not declared(Avhwaccelcodeccapexperimental):
  when 512 is static:
    const
      Avhwaccelcodeccapexperimental* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2169:9
  else:
    let Avhwaccelcodeccapexperimental* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2169:9
else:
  static :
    hint("Declaration of " & "Avhwaccelcodeccapexperimental" &
        " already exists, not redeclaring")
when not declared(Avsubtitleflagforced):
  when 1 is static:
    const
      Avsubtitleflagforced* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2239:9
  else:
    let Avsubtitleflagforced* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2239:9
else:
  static :
    hint("Declaration of " & "Avsubtitleflagforced" &
        " already exists, not redeclaring")
when not declared(Avparserptsnb):
  when 4 is static:
    const
      Avparserptsnb* = 4     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2801:9
  else:
    let Avparserptsnb* = 4   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2801:9
else:
  static :
    hint("Declaration of " & "Avparserptsnb" &
        " already exists, not redeclaring")
when not declared(Parserflagcompleteframes):
  when 1 is static:
    const
      Parserflagcompleteframes* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2808:9
  else:
    let Parserflagcompleteframes* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2808:9
else:
  static :
    hint("Declaration of " & "Parserflagcompleteframes" &
        " already exists, not redeclaring")
when not declared(Parserflagonce):
  when 2 is static:
    const
      Parserflagonce* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2809:9
  else:
    let Parserflagonce* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2809:9
else:
  static :
    hint("Declaration of " & "Parserflagonce" &
        " already exists, not redeclaring")
when not declared(Parserflagfetchedoffset):
  when 4 is static:
    const
      Parserflagfetchedoffset* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2811:9
  else:
    let Parserflagfetchedoffset* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2811:9
else:
  static :
    hint("Declaration of " & "Parserflagfetchedoffset" &
        " already exists, not redeclaring")
when not declared(Parserflagusecodects):
  when 4096 is static:
    const
      Parserflagusecodects* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2812:9
  else:
    let Parserflagusecodects* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavcodec/avcodec.h:2812:9
else:
  static :
    hint("Declaration of " & "Parserflagusecodects" &
        " already exists, not redeclaring")
when not declared(Libavformatversionmajor):
  when 60 is static:
    const
      Libavformatversionmajor* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version_major.h:32:9
  else:
    let Libavformatversionmajor* = 60 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version_major.h:32:9
else:
  static :
    hint("Declaration of " & "Libavformatversionmajor" &
        " already exists, not redeclaring")
when not declared(Ffapirframerate):
  when 1 is static:
    const
      Ffapirframerate* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version_major.h:54:9
  else:
    let Ffapirframerate* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version_major.h:54:9
else:
  static :
    hint("Declaration of " & "Ffapirframerate" &
        " already exists, not redeclaring")
when not declared(Avseeksize):
  when 65536 is static:
    const
      Avseeksize* = 65536    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:487:9
  else:
    let Avseeksize* = 65536  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:487:9
else:
  static :
    hint("Declaration of " & "Avseeksize" & " already exists, not redeclaring")
when not declared(Avseekforce):
  when 131072 is static:
    const
      Avseekforce* = 131072  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:495:9
  else:
    let Avseekforce* = 131072 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:495:9
else:
  static :
    hint("Declaration of " & "Avseekforce" & " already exists, not redeclaring")
when not declared(Avioflagread):
  when 1 is static:
    const
      Avioflagread* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:636:9
  else:
    let Avioflagread* = 1    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:636:9
else:
  static :
    hint("Declaration of " & "Avioflagread" & " already exists, not redeclaring")
when not declared(Avioflagwrite):
  when 2 is static:
    const
      Avioflagwrite* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:637:9
  else:
    let Avioflagwrite* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:637:9
else:
  static :
    hint("Declaration of " & "Avioflagwrite" &
        " already exists, not redeclaring")
when not declared(Avioflagnonblock):
  when 8 is static:
    const
      Avioflagnonblock* = 8  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:655:9
  else:
    let Avioflagnonblock* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:655:9
else:
  static :
    hint("Declaration of " & "Avioflagnonblock" &
        " already exists, not redeclaring")
when not declared(Avioflagdirect):
  when 32768 is static:
    const
      Avioflagdirect* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:663:9
  else:
    let Avioflagdirect* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avio.h:663:9
else:
  static :
    hint("Declaration of " & "Avioflagdirect" &
        " already exists, not redeclaring")
when not declared(Libavformatversionminor):
  when 16 is static:
    const
      Libavformatversionminor* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version.h:34:9
  else:
    let Libavformatversionminor* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version.h:34:9
else:
  static :
    hint("Declaration of " & "Libavformatversionminor" &
        " already exists, not redeclaring")
when not declared(Libavformatversionmicro):
  when 100 is static:
    const
      Libavformatversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version.h:35:9
  else:
    let Libavformatversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/version.h:35:9
else:
  static :
    hint("Declaration of " & "Libavformatversionmicro" &
        " already exists, not redeclaring")
when not declared(Avprobescoreextension):
  when 50 is static:
    const
      Avprobescoreextension* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:462:9
  else:
    let Avprobescoreextension* = 50 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:462:9
else:
  static :
    hint("Declaration of " & "Avprobescoreextension" &
        " already exists, not redeclaring")
when not declared(Avprobescoremime):
  when 75 is static:
    const
      Avprobescoremime* = 75 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:463:9
  else:
    let Avprobescoremime* = 75 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:463:9
else:
  static :
    hint("Declaration of " & "Avprobescoremime" &
        " already exists, not redeclaring")
when not declared(Avprobescoremax):
  when 100 is static:
    const
      Avprobescoremax* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:464:9
  else:
    let Avprobescoremax* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:464:9
else:
  static :
    hint("Declaration of " & "Avprobescoremax" &
        " already exists, not redeclaring")
when not declared(Avprobepaddingsize):
  when 32 is static:
    const
      Avprobepaddingsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:466:9
  else:
    let Avprobepaddingsize* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:466:9
else:
  static :
    hint("Declaration of " & "Avprobepaddingsize" &
        " already exists, not redeclaring")
when not declared(Avfmtnofile):
  when 1 is static:
    const
      Avfmtnofile* = 1       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:469:9
  else:
    let Avfmtnofile* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:469:9
else:
  static :
    hint("Declaration of " & "Avfmtnofile" & " already exists, not redeclaring")
when not declared(Avfmtneednumber):
  when 2 is static:
    const
      Avfmtneednumber* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:470:9
  else:
    let Avfmtneednumber* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:470:9
else:
  static :
    hint("Declaration of " & "Avfmtneednumber" &
        " already exists, not redeclaring")
when not declared(Avfmtexperimental):
  when 4 is static:
    const
      Avfmtexperimental* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:477:9
  else:
    let Avfmtexperimental* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:477:9
else:
  static :
    hint("Declaration of " & "Avfmtexperimental" &
        " already exists, not redeclaring")
when not declared(Avfmtshowids):
  when 8 is static:
    const
      Avfmtshowids* = 8      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:478:9
  else:
    let Avfmtshowids* = 8    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:478:9
else:
  static :
    hint("Declaration of " & "Avfmtshowids" & " already exists, not redeclaring")
when not declared(Avfmtglobalheader):
  when 64 is static:
    const
      Avfmtglobalheader* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:479:9
  else:
    let Avfmtglobalheader* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:479:9
else:
  static :
    hint("Declaration of " & "Avfmtglobalheader" &
        " already exists, not redeclaring")
when not declared(Avfmtnotimestamps):
  when 128 is static:
    const
      Avfmtnotimestamps* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:480:9
  else:
    let Avfmtnotimestamps* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:480:9
else:
  static :
    hint("Declaration of " & "Avfmtnotimestamps" &
        " already exists, not redeclaring")
when not declared(Avfmtgenericindex):
  when 256 is static:
    const
      Avfmtgenericindex* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:481:9
  else:
    let Avfmtgenericindex* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:481:9
else:
  static :
    hint("Declaration of " & "Avfmtgenericindex" &
        " already exists, not redeclaring")
when not declared(Avfmttsdiscont):
  when 512 is static:
    const
      Avfmttsdiscont* = 512  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:482:9
  else:
    let Avfmttsdiscont* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:482:9
else:
  static :
    hint("Declaration of " & "Avfmttsdiscont" &
        " already exists, not redeclaring")
when not declared(Avfmtvariablefps):
  when 1024 is static:
    const
      Avfmtvariablefps* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:483:9
  else:
    let Avfmtvariablefps* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:483:9
else:
  static :
    hint("Declaration of " & "Avfmtvariablefps" &
        " already exists, not redeclaring")
when not declared(Avfmtnodimensions):
  when 2048 is static:
    const
      Avfmtnodimensions* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:484:9
  else:
    let Avfmtnodimensions* = 2048 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:484:9
else:
  static :
    hint("Declaration of " & "Avfmtnodimensions" &
        " already exists, not redeclaring")
when not declared(Avfmtnostreams):
  when 4096 is static:
    const
      Avfmtnostreams* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:485:9
  else:
    let Avfmtnostreams* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:485:9
else:
  static :
    hint("Declaration of " & "Avfmtnostreams" &
        " already exists, not redeclaring")
when not declared(Avfmtnobinsearch):
  when 8192 is static:
    const
      Avfmtnobinsearch* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:486:9
  else:
    let Avfmtnobinsearch* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:486:9
else:
  static :
    hint("Declaration of " & "Avfmtnobinsearch" &
        " already exists, not redeclaring")
when not declared(Avfmtnogensearch):
  when 16384 is static:
    const
      Avfmtnogensearch* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:487:9
  else:
    let Avfmtnogensearch* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:487:9
else:
  static :
    hint("Declaration of " & "Avfmtnogensearch" &
        " already exists, not redeclaring")
when not declared(Avfmtnobyteseek):
  when 32768 is static:
    const
      Avfmtnobyteseek* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:488:9
  else:
    let Avfmtnobyteseek* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:488:9
else:
  static :
    hint("Declaration of " & "Avfmtnobyteseek" &
        " already exists, not redeclaring")
when not declared(Avfmtallowflush):
  when 65536 is static:
    const
      Avfmtallowflush* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:490:9
  else:
    let Avfmtallowflush* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:490:9
else:
  static :
    hint("Declaration of " & "Avfmtallowflush" &
        " already exists, not redeclaring")
when not declared(Avfmttsnonstrict):
  when 131072 is static:
    const
      Avfmttsnonstrict* = 131072 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:492:9
  else:
    let Avfmttsnonstrict* = 131072 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:492:9
else:
  static :
    hint("Declaration of " & "Avfmttsnonstrict" &
        " already exists, not redeclaring")
when not declared(Avfmttsnegative):
  when 262144 is static:
    const
      Avfmttsnegative* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:495:9
  else:
    let Avfmttsnegative* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:495:9
else:
  static :
    hint("Declaration of " & "Avfmttsnegative" &
        " already exists, not redeclaring")
when not declared(Avfmtseektopts):
  when 67108864 is static:
    const
      Avfmtseektopts* = 67108864 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:504:9
  else:
    let Avfmtseektopts* = 67108864 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:504:9
else:
  static :
    hint("Declaration of " & "Avfmtseektopts" &
        " already exists, not redeclaring")
when not declared(Avindexkeyframe):
  when 1 is static:
    const
      Avindexkeyframe* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:708:9
  else:
    let Avindexkeyframe* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:708:9
else:
  static :
    hint("Declaration of " & "Avindexkeyframe" &
        " already exists, not redeclaring")
when not declared(Avindexdiscardframe):
  when 2 is static:
    const
      Avindexdiscardframe* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:709:9
  else:
    let Avindexdiscardframe* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:709:9
else:
  static :
    hint("Declaration of " & "Avindexdiscardframe" &
        " already exists, not redeclaring")
when not declared(Avptswrapignore):
  when 0 is static:
    const
      Avptswrapignore* = 0   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:832:9
  else:
    let Avptswrapignore* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:832:9
else:
  static :
    hint("Declaration of " & "Avptswrapignore" &
        " already exists, not redeclaring")
when not declared(Avptswrapaddoffset):
  when 1 is static:
    const
      Avptswrapaddoffset* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:833:9
  else:
    let Avptswrapaddoffset* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:833:9
else:
  static :
    hint("Declaration of " & "Avptswrapaddoffset" &
        " already exists, not redeclaring")
when not declared(Avptswrapsuboffset):
  when -1 is static:
    const
      Avptswrapsuboffset* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:834:9
  else:
    let Avptswrapsuboffset* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:834:9
else:
  static :
    hint("Declaration of " & "Avptswrapsuboffset" &
        " already exists, not redeclaring")
when not declared(Avstreameventflagmetadataupdated):
  when 1 is static:
    const
      Avstreameventflagmetadataupdated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:993:9
  else:
    let Avstreameventflagmetadataupdated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:993:9
else:
  static :
    hint("Declaration of " & "Avstreameventflagmetadataupdated" &
        " already exists, not redeclaring")
when not declared(Avprogramrunning):
  when 1 is static:
    const
      Avprogramrunning* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1033:9
  else:
    let Avprogramrunning* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1033:9
else:
  static :
    hint("Declaration of " & "Avprogramrunning" &
        " already exists, not redeclaring")
when not declared(Avfmtctxnoheader):
  when 1 is static:
    const
      Avfmtctxnoheader* = 1  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1068:9
  else:
    let Avfmtctxnoheader* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1068:9
else:
  static :
    hint("Declaration of " & "Avfmtctxnoheader" &
        " already exists, not redeclaring")
when not declared(Avfmtctxunseekable):
  when 2 is static:
    const
      Avfmtctxunseekable* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1070:9
  else:
    let Avfmtctxunseekable* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1070:9
else:
  static :
    hint("Declaration of " & "Avfmtctxunseekable" &
        " already exists, not redeclaring")
when not declared(Avfmtflaggenpts):
  when 1 is static:
    const
      Avfmtflaggenpts* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1236:9
  else:
    let Avfmtflaggenpts* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1236:9
else:
  static :
    hint("Declaration of " & "Avfmtflaggenpts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagignidx):
  when 2 is static:
    const
      Avfmtflagignidx* = 2   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1237:9
  else:
    let Avfmtflagignidx* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1237:9
else:
  static :
    hint("Declaration of " & "Avfmtflagignidx" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnonblock):
  when 4 is static:
    const
      Avfmtflagnonblock* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1238:9
  else:
    let Avfmtflagnonblock* = 4 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1238:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnonblock" &
        " already exists, not redeclaring")
when not declared(Avfmtflagigndts):
  when 8 is static:
    const
      Avfmtflagigndts* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1239:9
  else:
    let Avfmtflagigndts* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1239:9
else:
  static :
    hint("Declaration of " & "Avfmtflagigndts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnofillin):
  when 16 is static:
    const
      Avfmtflagnofillin* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1240:9
  else:
    let Avfmtflagnofillin* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1240:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnofillin" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnoparse):
  when 32 is static:
    const
      Avfmtflagnoparse* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1241:9
  else:
    let Avfmtflagnoparse* = 32 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1241:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnoparse" &
        " already exists, not redeclaring")
when not declared(Avfmtflagnobuffer):
  when 64 is static:
    const
      Avfmtflagnobuffer* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1242:9
  else:
    let Avfmtflagnobuffer* = 64 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1242:9
else:
  static :
    hint("Declaration of " & "Avfmtflagnobuffer" &
        " already exists, not redeclaring")
when not declared(Avfmtflagcustomio):
  when 128 is static:
    const
      Avfmtflagcustomio* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1243:9
  else:
    let Avfmtflagcustomio* = 128 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1243:9
else:
  static :
    hint("Declaration of " & "Avfmtflagcustomio" &
        " already exists, not redeclaring")
when not declared(Avfmtflagdiscardcorrupt):
  when 256 is static:
    const
      Avfmtflagdiscardcorrupt* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1244:9
  else:
    let Avfmtflagdiscardcorrupt* = 256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1244:9
else:
  static :
    hint("Declaration of " & "Avfmtflagdiscardcorrupt" &
        " already exists, not redeclaring")
when not declared(Avfmtflagflushpackets):
  when 512 is static:
    const
      Avfmtflagflushpackets* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1245:9
  else:
    let Avfmtflagflushpackets* = 512 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1245:9
else:
  static :
    hint("Declaration of " & "Avfmtflagflushpackets" &
        " already exists, not redeclaring")
when not declared(Avfmtflagbitexact):
  when 1024 is static:
    const
      Avfmtflagbitexact* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1252:9
  else:
    let Avfmtflagbitexact* = 1024 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1252:9
else:
  static :
    hint("Declaration of " & "Avfmtflagbitexact" &
        " already exists, not redeclaring")
when not declared(Avfmtflagsortdts):
  when 65536 is static:
    const
      Avfmtflagsortdts* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1253:9
  else:
    let Avfmtflagsortdts* = 65536 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1253:9
else:
  static :
    hint("Declaration of " & "Avfmtflagsortdts" &
        " already exists, not redeclaring")
when not declared(Avfmtflagfastseek):
  when 524288 is static:
    const
      Avfmtflagfastseek* = 524288 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1254:9
  else:
    let Avfmtflagfastseek* = 524288 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1254:9
else:
  static :
    hint("Declaration of " & "Avfmtflagfastseek" &
        " already exists, not redeclaring")
when not declared(Avfmtflagshortest):
  when 1048576 is static:
    const
      Avfmtflagshortest* = 1048576 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1256:9
  else:
    let Avfmtflagshortest* = 1048576 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1256:9
else:
  static :
    hint("Declaration of " & "Avfmtflagshortest" &
        " already exists, not redeclaring")
when not declared(Avfmtflagautobsf):
  when 2097152 is static:
    const
      Avfmtflagautobsf* = 2097152 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1258:9
  else:
    let Avfmtflagautobsf* = 2097152 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1258:9
else:
  static :
    hint("Declaration of " & "Avfmtflagautobsf" &
        " already exists, not redeclaring")
when not declared(Fffdebugts):
  when 1 is static:
    const
      Fffdebugts* = 1        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1389:9
  else:
    let Fffdebugts* = 1      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1389:9
else:
  static :
    hint("Declaration of " & "Fffdebugts" & " already exists, not redeclaring")
when not declared(Avfmteventflagmetadataupdated):
  when 1 is static:
    const
      Avfmteventflagmetadataupdated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1433:9
  else:
    let Avfmteventflagmetadataupdated* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1433:9
else:
  static :
    hint("Declaration of " & "Avfmteventflagmetadataupdated" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsauto):
  when -1 is static:
    const
      Avfmtavoidnegtsauto* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1449:9
  else:
    let Avfmtavoidnegtsauto* = -1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1449:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsauto" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsdisabled):
  when 0 is static:
    const
      Avfmtavoidnegtsdisabled* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1450:9
  else:
    let Avfmtavoidnegtsdisabled* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1450:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsdisabled" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsmakenonnegative):
  when 1 is static:
    const
      Avfmtavoidnegtsmakenonnegative* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1451:9
  else:
    let Avfmtavoidnegtsmakenonnegative* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1451:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsmakenonnegative" &
        " already exists, not redeclaring")
when not declared(Avfmtavoidnegtsmakezero):
  when 2 is static:
    const
      Avfmtavoidnegtsmakezero* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1452:9
  else:
    let Avfmtavoidnegtsmakezero* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:1452:9
else:
  static :
    hint("Declaration of " & "Avfmtavoidnegtsmakezero" &
        " already exists, not redeclaring")
when not declared(Avseekflagbackward):
  when 1 is static:
    const
      Avseekflagbackward* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2226:9
  else:
    let Avseekflagbackward* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2226:9
else:
  static :
    hint("Declaration of " & "Avseekflagbackward" &
        " already exists, not redeclaring")
when not declared(Avseekflagbyte):
  when 2 is static:
    const
      Avseekflagbyte* = 2    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2227:9
  else:
    let Avseekflagbyte* = 2  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2227:9
else:
  static :
    hint("Declaration of " & "Avseekflagbyte" &
        " already exists, not redeclaring")
when not declared(Avseekflagany):
  when 4 is static:
    const
      Avseekflagany* = 4     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2228:9
  else:
    let Avseekflagany* = 4   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2228:9
else:
  static :
    hint("Declaration of " & "Avseekflagany" &
        " already exists, not redeclaring")
when not declared(Avseekflagframe):
  when 8 is static:
    const
      Avseekflagframe* = 8   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2229:9
  else:
    let Avseekflagframe* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2229:9
else:
  static :
    hint("Declaration of " & "Avseekflagframe" &
        " already exists, not redeclaring")
when not declared(Avstreaminitinwriteheader):
  when 0 is static:
    const
      Avstreaminitinwriteheader* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2236:9
  else:
    let Avstreaminitinwriteheader* = 0 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2236:9
else:
  static :
    hint("Declaration of " & "Avstreaminitinwriteheader" &
        " already exists, not redeclaring")
when not declared(Avstreaminitininitoutput):
  when 1 is static:
    const
      Avstreaminitininitoutput* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2237:9
  else:
    let Avstreaminitininitoutput* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2237:9
else:
  static :
    hint("Declaration of " & "Avstreaminitininitoutput" &
        " already exists, not redeclaring")
when not declared(Avframefilenameflagsmultiple):
  when 1 is static:
    const
      Avframefilenameflagsmultiple* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2672:9
  else:
    let Avframefilenameflagsmultiple* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libavformat/avformat.h:2672:9
else:
  static :
    hint("Declaration of " & "Avframefilenameflagsmultiple" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionmajor):
  when 7 is static:
    const
      Libswscaleversionmajor* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version_major.h:27:9
  else:
    let Libswscaleversionmajor* = 7 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version_major.h:27:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmajor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionminor):
  when 5 is static:
    const
      Libswscaleversionminor* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version.h:31:9
  else:
    let Libswscaleversionminor* = 5 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version.h:31:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionminor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionmicro):
  when 100 is static:
    const
      Libswscaleversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version.h:32:9
  else:
    let Libswscaleversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmicro" &
        " already exists, not redeclaring")
when not declared(Swsfastbilinear):
  when 1 is static:
    const
      Swsfastbilinear* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:65:9
  else:
    let Swsfastbilinear* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:65:9
else:
  static :
    hint("Declaration of " & "Swsfastbilinear" &
        " already exists, not redeclaring")
when not declared(Swsbilinear):
  when 2 is static:
    const
      Swsbilinear* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:66:9
  else:
    let Swsbilinear* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:66:9
else:
  static :
    hint("Declaration of " & "Swsbilinear" & " already exists, not redeclaring")
when not declared(Swsbicubic):
  when 4 is static:
    const
      Swsbicubic* = 4        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:67:9
  else:
    let Swsbicubic* = 4      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:67:9
else:
  static :
    hint("Declaration of " & "Swsbicubic" & " already exists, not redeclaring")
when not declared(Swsx):
  when 8 is static:
    const
      Swsx* = 8              ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:68:9
  else:
    let Swsx* = 8            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:68:9
else:
  static :
    hint("Declaration of " & "Swsx" & " already exists, not redeclaring")
when not declared(Swspoint):
  when 16 is static:
    const
      Swspoint* = 16         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:69:9
  else:
    let Swspoint* = 16       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:69:9
else:
  static :
    hint("Declaration of " & "Swspoint" & " already exists, not redeclaring")
when not declared(Swsarea):
  when 32 is static:
    const
      Swsarea* = 32          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:70:9
  else:
    let Swsarea* = 32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:70:9
else:
  static :
    hint("Declaration of " & "Swsarea" & " already exists, not redeclaring")
when not declared(Swsbicublin):
  when 64 is static:
    const
      Swsbicublin* = 64      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:71:9
  else:
    let Swsbicublin* = 64    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:71:9
else:
  static :
    hint("Declaration of " & "Swsbicublin" & " already exists, not redeclaring")
when not declared(Swsgauss):
  when 128 is static:
    const
      Swsgauss* = 128        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:72:9
  else:
    let Swsgauss* = 128      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:72:9
else:
  static :
    hint("Declaration of " & "Swsgauss" & " already exists, not redeclaring")
when not declared(Swssinc):
  when 256 is static:
    const
      Swssinc* = 256         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:73:9
  else:
    let Swssinc* = 256       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:73:9
else:
  static :
    hint("Declaration of " & "Swssinc" & " already exists, not redeclaring")
when not declared(Swslanczos):
  when 512 is static:
    const
      Swslanczos* = 512      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:74:9
  else:
    let Swslanczos* = 512    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:74:9
else:
  static :
    hint("Declaration of " & "Swslanczos" & " already exists, not redeclaring")
when not declared(Swsspline):
  when 1024 is static:
    const
      Swsspline* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:75:9
  else:
    let Swsspline* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:75:9
else:
  static :
    hint("Declaration of " & "Swsspline" & " already exists, not redeclaring")
when not declared(Swssrcvchrdropmask):
  when 196608 is static:
    const
      Swssrcvchrdropmask* = 196608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:77:9
  else:
    let Swssrcvchrdropmask* = 196608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:77:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropmask" &
        " already exists, not redeclaring")
when not declared(Swssrcvchrdropshift):
  when 16 is static:
    const
      Swssrcvchrdropshift* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:78:9
  else:
    let Swssrcvchrdropshift* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:78:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropshift" &
        " already exists, not redeclaring")
when not declared(Swsparamdefault):
  when 123456 is static:
    const
      Swsparamdefault* = 123456 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:80:9
  else:
    let Swsparamdefault* = 123456 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:80:9
else:
  static :
    hint("Declaration of " & "Swsparamdefault" &
        " already exists, not redeclaring")
when not declared(Swsprintinfo):
  when 4096 is static:
    const
      Swsprintinfo* = 4096   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:82:9
  else:
    let Swsprintinfo* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:82:9
else:
  static :
    hint("Declaration of " & "Swsprintinfo" & " already exists, not redeclaring")
when not declared(Swsfullchrhint):
  when 8192 is static:
    const
      Swsfullchrhint* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:86:9
  else:
    let Swsfullchrhint* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:86:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhint" &
        " already exists, not redeclaring")
when not declared(Swsfullchrhinp):
  when 16384 is static:
    const
      Swsfullchrhinp* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:88:9
  else:
    let Swsfullchrhinp* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:88:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhinp" &
        " already exists, not redeclaring")
when not declared(Swsdirectbgr):
  when 32768 is static:
    const
      Swsdirectbgr* = 32768  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:89:9
  else:
    let Swsdirectbgr* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:89:9
else:
  static :
    hint("Declaration of " & "Swsdirectbgr" & " already exists, not redeclaring")
when not declared(Swsaccuraternd):
  when 262144 is static:
    const
      Swsaccuraternd* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:90:9
  else:
    let Swsaccuraternd* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:90:9
else:
  static :
    hint("Declaration of " & "Swsaccuraternd" &
        " already exists, not redeclaring")
when not declared(Swsbitexact):
  when 524288 is static:
    const
      Swsbitexact* = 524288  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:91:9
  else:
    let Swsbitexact* = 524288 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:91:9
else:
  static :
    hint("Declaration of " & "Swsbitexact" & " already exists, not redeclaring")
when not declared(Swserrordiffusion):
  when 8388608 is static:
    const
      Swserrordiffusion* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:92:9
  else:
    let Swserrordiffusion* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:92:9
else:
  static :
    hint("Declaration of " & "Swserrordiffusion" &
        " already exists, not redeclaring")
when not declared(Swsmaxreducecutoff):
  when 0.002 is static:
    const
      Swsmaxreducecutoff* = 0.002 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:94:9
  else:
    let Swsmaxreducecutoff* = 0.002 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:94:9
else:
  static :
    hint("Declaration of " & "Swsmaxreducecutoff" &
        " already exists, not redeclaring")
when not declared(Swscsitu709):
  when 1 is static:
    const
      Swscsitu709* = 1       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:96:9
  else:
    let Swscsitu709* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:96:9
else:
  static :
    hint("Declaration of " & "Swscsitu709" & " already exists, not redeclaring")
when not declared(Swscsfcc):
  when 4 is static:
    const
      Swscsfcc* = 4          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:97:9
  else:
    let Swscsfcc* = 4        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:97:9
else:
  static :
    hint("Declaration of " & "Swscsfcc" & " already exists, not redeclaring")
when not declared(Swscsitu601):
  when 5 is static:
    const
      Swscsitu601* = 5       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:98:9
  else:
    let Swscsitu601* = 5     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:98:9
else:
  static :
    hint("Declaration of " & "Swscsitu601" & " already exists, not redeclaring")
when not declared(Swscsitu624):
  when 5 is static:
    const
      Swscsitu624* = 5       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:99:9
  else:
    let Swscsitu624* = 5     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:99:9
else:
  static :
    hint("Declaration of " & "Swscsitu624" & " already exists, not redeclaring")
when not declared(Swscssmpte170m):
  when 5 is static:
    const
      Swscssmpte170m* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:100:9
  else:
    let Swscssmpte170m* = 5  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:100:9
else:
  static :
    hint("Declaration of " & "Swscssmpte170m" &
        " already exists, not redeclaring")
when not declared(Swscssmpte240m):
  when 7 is static:
    const
      Swscssmpte240m* = 7    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:101:9
  else:
    let Swscssmpte240m* = 7  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:101:9
else:
  static :
    hint("Declaration of " & "Swscssmpte240m" &
        " already exists, not redeclaring")
when not declared(Swscsdefault):
  when 5 is static:
    const
      Swscsdefault* = 5      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:102:9
  else:
    let Swscsdefault* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:102:9
else:
  static :
    hint("Declaration of " & "Swscsdefault" & " already exists, not redeclaring")
when not declared(Swscsbt2020):
  when 9 is static:
    const
      Swscsbt2020* = 9       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:103:9
  else:
    let Swscsbt2020* = 9     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/FFmpeg-release-6.1/libswscale/swscale.h:103:9
else:
  static :
    hint("Declaration of " & "Swscsbt2020" & " already exists, not redeclaring")
when not declared(avstrerror):
  proc avstrerror*(errnum: cint; errbuf: cstring; errbufsize: csize_t): cint {.
      cdecl, importc: "av_strerror".}
else:
  static :
    hint("Declaration of " & "avstrerror" & " already exists, not redeclaring")
when not declared(avgetchannellayout):
  proc avgetchannellayout*(name: cstring): uint64 {.cdecl,
      importc: "av_get_channel_layout".}
else:
  static :
    hint("Declaration of " & "avgetchannellayout" &
        " already exists, not redeclaring")
when not declared(avgetextendedchannellayout):
  proc avgetextendedchannellayout*(name: cstring; channellayout: ptr uint64;
                                   nbchannels: ptr cint): cint {.cdecl,
      importc: "av_get_extended_channel_layout".}
else:
  static :
    hint("Declaration of " & "avgetextendedchannellayout" &
        " already exists, not redeclaring")
when not declared(avgetchannellayoutstring):
  proc avgetchannellayoutstring*(buf: cstring; bufsize: cint; nbchannels: cint;
                                 channellayout: uint64): void {.cdecl,
      importc: "av_get_channel_layout_string".}
else:
  static :
    hint("Declaration of " & "avgetchannellayoutstring" &
        " already exists, not redeclaring")
when not declared(avbprintchannellayout):
  proc avbprintchannellayout*(bp: ptr structavbprint; nbchannels: cint;
                              channellayout: uint64): void {.cdecl,
      importc: "av_bprint_channel_layout".}
else:
  static :
    hint("Declaration of " & "avbprintchannellayout" &
        " already exists, not redeclaring")
when not declared(avgetchannellayoutnbchannels):
  proc avgetchannellayoutnbchannels*(channellayout: uint64): cint {.cdecl,
      importc: "av_get_channel_layout_nb_channels".}
else:
  static :
    hint("Declaration of " & "avgetchannellayoutnbchannels" &
        " already exists, not redeclaring")
when not declared(avgetdefaultchannellayout):
  proc avgetdefaultchannellayout*(nbchannels: cint): int64 {.cdecl,
      importc: "av_get_default_channel_layout".}
else:
  static :
    hint("Declaration of " & "avgetdefaultchannellayout" &
        " already exists, not redeclaring")
when not declared(avgetchannellayoutchannelindex):
  proc avgetchannellayoutchannelindex*(channellayout: uint64; channel: uint64): cint {.
      cdecl, importc: "av_get_channel_layout_channel_index".}
else:
  static :
    hint("Declaration of " & "avgetchannellayoutchannelindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutextractchannel):
  proc avchannellayoutextractchannel*(channellayout: uint64; index: cint): uint64 {.
      cdecl, importc: "av_channel_layout_extract_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutextractchannel" &
        " already exists, not redeclaring")
when not declared(avgetchannelname):
  proc avgetchannelname*(channel: uint64): cstring {.cdecl,
      importc: "av_get_channel_name".}
else:
  static :
    hint("Declaration of " & "avgetchannelname" &
        " already exists, not redeclaring")
when not declared(avgetchanneldescription):
  proc avgetchanneldescription*(channel: uint64): cstring {.cdecl,
      importc: "av_get_channel_description".}
else:
  static :
    hint("Declaration of " & "avgetchanneldescription" &
        " already exists, not redeclaring")
when not declared(avgetstandardchannellayout):
  proc avgetstandardchannellayout*(index: cuint; layout: ptr uint64;
                                   name: ptr cstring): cint {.cdecl,
      importc: "av_get_standard_channel_layout".}
else:
  static :
    hint("Declaration of " & "avgetstandardchannellayout" &
        " already exists, not redeclaring")
when not declared(avchannelname):
  proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel_520094079): cint {.
      cdecl, importc: "av_channel_name".}
else:
  static :
    hint("Declaration of " & "avchannelname" &
        " already exists, not redeclaring")
when not declared(avchannelnamebprint):
  proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel_520094079): void {.
      cdecl, importc: "av_channel_name_bprint".}
else:
  static :
    hint("Declaration of " & "avchannelnamebprint" &
        " already exists, not redeclaring")
when not declared(avchanneldescription):
  proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                             channel: enumavchannel_520094079): cint {.cdecl,
      importc: "av_channel_description".}
else:
  static :
    hint("Declaration of " & "avchanneldescription" &
        " already exists, not redeclaring")
when not declared(avchanneldescriptionbprint):
  proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                   channelid: enumavchannel_520094079): void {.
      cdecl, importc: "av_channel_description_bprint".}
else:
  static :
    hint("Declaration of " & "avchanneldescriptionbprint" &
        " already exists, not redeclaring")
when not declared(avchannelfromstring):
  proc avchannelfromstring*(name: cstring): enumavchannel_520094079 {.cdecl,
      importc: "av_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfrommask):
  proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout_520094091;
                                mask: uint64): cint {.cdecl,
      importc: "av_channel_layout_from_mask".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfrommask" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfromstring):
  proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout_520094091;
                                  str: cstring): cint {.cdecl,
      importc: "av_channel_layout_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdefault):
  proc avchannellayoutdefault*(chlayout: ptr Avchannellayout_520094091;
                               nbchannels: cint): void {.cdecl,
      importc: "av_channel_layout_default".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdefault" &
        " already exists, not redeclaring")
when not declared(avchannellayoutstandard):
  proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout_520094091 {.
      cdecl, importc: "av_channel_layout_standard".}
else:
  static :
    hint("Declaration of " & "avchannellayoutstandard" &
        " already exists, not redeclaring")
when not declared(avchannellayoutuninit):
  proc avchannellayoutuninit*(channellayout: ptr Avchannellayout_520094091): void {.
      cdecl, importc: "av_channel_layout_uninit".}
else:
  static :
    hint("Declaration of " & "avchannellayoutuninit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcopy):
  proc avchannellayoutcopy*(dst: ptr Avchannellayout_520094091;
                            src: ptr Avchannellayout_520094091): cint {.cdecl,
      importc: "av_channel_layout_copy".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcopy" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribe):
  proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout_520094091;
                                buf: cstring; bufsize: csize_t): cint {.cdecl,
      importc: "av_channel_layout_describe".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribe" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribebprint):
  proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout_520094091;
                                      bp: ptr structavbprint): cint {.cdecl,
      importc: "av_channel_layout_describe_bprint".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribebprint" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromindex):
  proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout_520094091;
                                        idx: cuint): enumavchannel_520094079 {.
      cdecl, importc: "av_channel_layout_channel_from_index".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromchannel):
  proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout_520094091;
                                        channel: enumavchannel_520094079): cint {.
      cdecl, importc: "av_channel_layout_index_from_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromchannel" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromstring):
  proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout_520094091;
                                       name: cstring): cint {.cdecl,
      importc: "av_channel_layout_index_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromstring):
  proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout_520094091;
      name: cstring): enumavchannel_520094079 {.cdecl,
      importc: "av_channel_layout_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutsubset):
  proc avchannellayoutsubset*(channellayout: ptr Avchannellayout_520094091;
                              mask: uint64): uint64 {.cdecl,
      importc: "av_channel_layout_subset".}
else:
  static :
    hint("Declaration of " & "avchannellayoutsubset" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcheck):
  proc avchannellayoutcheck*(channellayout: ptr Avchannellayout_520094091): cint {.
      cdecl, importc: "av_channel_layout_check".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcheck" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcompare):
  proc avchannellayoutcompare*(chl: ptr Avchannellayout_520094091;
                               chl1: ptr Avchannellayout_520094091): cint {.
      cdecl, importc: "av_channel_layout_compare".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcompare" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtname):
  proc avgetsamplefmtname*(samplefmt: enumavsampleformat_520094093): cstring {.
      cdecl, importc: "av_get_sample_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtname" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmt):
  proc avgetsamplefmt*(name: cstring): enumavsampleformat_520094093 {.cdecl,
      importc: "av_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetaltsamplefmt):
  proc avgetaltsamplefmt*(samplefmt: enumavsampleformat_520094093; planar: cint): enumavsampleformat_520094093 {.
      cdecl, importc: "av_get_alt_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetaltsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetpackedsamplefmt):
  proc avgetpackedsamplefmt*(samplefmt: enumavsampleformat_520094093): enumavsampleformat_520094093 {.
      cdecl, importc: "av_get_packed_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpackedsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetplanarsamplefmt):
  proc avgetplanarsamplefmt*(samplefmt: enumavsampleformat_520094093): enumavsampleformat_520094093 {.
      cdecl, importc: "av_get_planar_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetplanarsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtstring):
  proc avgetsamplefmtstring*(buf: cstring; bufsize: cint;
                             samplefmt: enumavsampleformat_520094093): cstring {.
      cdecl, importc: "av_get_sample_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtstring" &
        " already exists, not redeclaring")
when not declared(avgetbytespersample):
  proc avgetbytespersample*(samplefmt: enumavsampleformat_520094093): cint {.
      cdecl, importc: "av_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbytespersample" &
        " already exists, not redeclaring")
when not declared(avsamplefmtisplanar):
  proc avsamplefmtisplanar*(samplefmt: enumavsampleformat_520094093): cint {.
      cdecl, importc: "av_sample_fmt_is_planar".}
else:
  static :
    hint("Declaration of " & "avsamplefmtisplanar" &
        " already exists, not redeclaring")
when not declared(avsamplesgetbuffersize):
  proc avsamplesgetbuffersize*(linesize: ptr cint; nbchannels: cint;
                               nbsamples: cint; samplefmt: enumavsampleformat_520094093;
                               align: cint): cint {.cdecl,
      importc: "av_samples_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avsamplesgetbuffersize" &
        " already exists, not redeclaring")
when not declared(avsamplesfillarrays):
  proc avsamplesfillarrays*(audiodata: ptr ptr uint8; linesize: ptr cint;
                            buf: ptr uint8; nbchannels: cint; nbsamples: cint;
                            samplefmt: enumavsampleformat_520094093; align: cint): cint {.
      cdecl, importc: "av_samples_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avsamplesfillarrays" &
        " already exists, not redeclaring")
when not declared(avsamplesalloc):
  proc avsamplesalloc*(audiodata: ptr ptr uint8; linesize: ptr cint;
                       nbchannels: cint; nbsamples: cint;
                       samplefmt: enumavsampleformat_520094093; align: cint): cint {.
      cdecl, importc: "av_samples_alloc".}
else:
  static :
    hint("Declaration of " & "avsamplesalloc" &
        " already exists, not redeclaring")
when not declared(avsamplesallocarrayandsamples):
  proc avsamplesallocarrayandsamples*(audiodata: ptr ptr ptr uint8;
                                      linesize: ptr cint; nbchannels: cint;
                                      nbsamples: cint;
                                      samplefmt: enumavsampleformat_520094093;
                                      align: cint): cint {.cdecl,
      importc: "av_samples_alloc_array_and_samples".}
else:
  static :
    hint("Declaration of " & "avsamplesallocarrayandsamples" &
        " already exists, not redeclaring")
when not declared(avsamplescopy):
  proc avsamplescopy*(dst: ptr ptr uint8; src: ptr ptr uint8; dstoffset: cint;
                      srcoffset: cint; nbsamples: cint; nbchannels: cint;
                      samplefmt: enumavsampleformat_520094093): cint {.cdecl,
      importc: "av_samples_copy".}
else:
  static :
    hint("Declaration of " & "avsamplescopy" &
        " already exists, not redeclaring")
when not declared(avsamplessetsilence):
  proc avsamplessetsilence*(audiodata: ptr ptr uint8; offset: cint;
                            nbsamples: cint; nbchannels: cint;
                            samplefmt: enumavsampleformat_520094093): cint {.
      cdecl, importc: "av_samples_set_silence".}
else:
  static :
    hint("Declaration of " & "avsamplessetsilence" &
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
  proc avdefaultgetcategory*(ptrarg: pointer): Avclasscategory_520094097 {.
      cdecl, importc: "av_default_get_category".}
else:
  static :
    hint("Declaration of " & "avdefaultgetcategory" &
        " already exists, not redeclaring")
when not declared(avlogformatline):
  proc avlogformatline*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094107;
                        line: cstring; linesize: cint; printprefix: ptr cint): void {.
      cdecl, importc: "av_log_format_line".}
else:
  static :
    hint("Declaration of " & "avlogformatline" &
        " already exists, not redeclaring")
when not declared(avlogformatline2):
  proc avlogformatline2*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094107;
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
when not declared(avdictget):
  proc avdictget*(m: ptr Avdictionary_520094113; key: cstring;
                  prev: ptr Avdictionaryentry_520094111; flags: cint): ptr Avdictionaryentry_520094111 {.
      cdecl, importc: "av_dict_get".}
else:
  static :
    hint("Declaration of " & "avdictget" & " already exists, not redeclaring")
when not declared(avdictiterate):
  proc avdictiterate*(m: ptr Avdictionary_520094113; prev: ptr Avdictionaryentry_520094111): ptr Avdictionaryentry_520094111 {.
      cdecl, importc: "av_dict_iterate".}
else:
  static :
    hint("Declaration of " & "avdictiterate" &
        " already exists, not redeclaring")
when not declared(avdictcount):
  proc avdictcount*(m: ptr Avdictionary_520094113): cint {.cdecl,
      importc: "av_dict_count".}
else:
  static :
    hint("Declaration of " & "avdictcount" & " already exists, not redeclaring")
when not declared(avdictset):
  proc avdictset*(pm: ptr ptr Avdictionary_520094113; key: cstring;
                  value: cstring; flags: cint): cint {.cdecl,
      importc: "av_dict_set".}
else:
  static :
    hint("Declaration of " & "avdictset" & " already exists, not redeclaring")
when not declared(avdictsetint):
  proc avdictsetint*(pm: ptr ptr Avdictionary_520094113; key: cstring;
                     value: int64; flags: cint): cint {.cdecl,
      importc: "av_dict_set_int".}
else:
  static :
    hint("Declaration of " & "avdictsetint" & " already exists, not redeclaring")
when not declared(avdictparsestring):
  proc avdictparsestring*(pm: ptr ptr Avdictionary_520094113; str: cstring;
                          keyvalsep: cstring; pairssep: cstring; flags: cint): cint {.
      cdecl, importc: "av_dict_parse_string".}
else:
  static :
    hint("Declaration of " & "avdictparsestring" &
        " already exists, not redeclaring")
when not declared(avdictcopy):
  proc avdictcopy*(dst: ptr ptr Avdictionary_520094113; src: ptr Avdictionary_520094113;
                   flags: cint): cint {.cdecl, importc: "av_dict_copy".}
else:
  static :
    hint("Declaration of " & "avdictcopy" & " already exists, not redeclaring")
when not declared(avdictfree):
  proc avdictfree*(m: ptr ptr Avdictionary_520094113): void {.cdecl,
      importc: "av_dict_free".}
else:
  static :
    hint("Declaration of " & "avdictfree" & " already exists, not redeclaring")
when not declared(avdictgetstring):
  proc avdictgetstring*(m: ptr Avdictionary_520094113; buffer: ptr cstring;
                        keyvalsep: cschar; pairssep: cschar): cint {.cdecl,
      importc: "av_dict_get_string".}
else:
  static :
    hint("Declaration of " & "avdictgetstring" &
        " already exists, not redeclaring")
when not declared(avreduce):
  proc avreduce*(dstnum: ptr cint; dstden: ptr cint; num: int64; den: int64;
                 max: int64): cint {.cdecl, importc: "av_reduce".}
else:
  static :
    hint("Declaration of " & "avreduce" & " already exists, not redeclaring")
when not declared(avmulq):
  proc avmulq*(b: Avrational_520094117; c: Avrational_520094117): Avrational_520094117 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094117; c: Avrational_520094117): Avrational_520094117 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094117; c: Avrational_520094117): Avrational_520094117 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094117; c: Avrational_520094117): Avrational_520094117 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094117 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094117; q1: Avrational_520094117;
                  q2: Avrational_520094117): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094117; qlist: ptr Avrational_520094117): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094117): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094117; b: Avrational_520094117; maxden: cint;
               def: Avrational_520094117): Avrational_520094117 {.cdecl,
      importc: "av_gcd_q".}
else:
  static :
    hint("Declaration of " & "avgcdq" & " already exists, not redeclaring")
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
  proc avgetmediatypestring*(mediatype: enumavmediatype_520094119): cstring {.
      cdecl, importc: "av_get_media_type_string".}
else:
  static :
    hint("Declaration of " & "avgetmediatypestring" &
        " already exists, not redeclaring")
when not declared(avgetpicturetypechar):
  proc avgetpicturetypechar*(picttype: enumavpicturetype_520094121): cschar {.
      cdecl, importc: "av_get_picture_type_char".}
else:
  static :
    hint("Declaration of " & "avgetpicturetypechar" &
        " already exists, not redeclaring")
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
  proc avrescalernd*(a: int64; b: int64; c: int64; rnd: enumavrounding_520094127): int64 {.
      cdecl, importc: "av_rescale_rnd".}
else:
  static :
    hint("Declaration of " & "avrescalernd" & " already exists, not redeclaring")
when not declared(avrescaleq):
  proc avrescaleq*(a: int64; bq: Avrational_520094117; cq: Avrational_520094117): int64 {.
      cdecl, importc: "av_rescale_q".}
else:
  static :
    hint("Declaration of " & "avrescaleq" & " already exists, not redeclaring")
when not declared(avrescaleqrnd):
  proc avrescaleqrnd*(a: int64; bq: Avrational_520094117; cq: Avrational_520094117;
                      rnd: enumavrounding_520094127): int64 {.cdecl,
      importc: "av_rescale_q_rnd".}
else:
  static :
    hint("Declaration of " & "avrescaleqrnd" &
        " already exists, not redeclaring")
when not declared(avcomparets):
  proc avcomparets*(tsa: int64; tba: Avrational_520094117; tsb: int64;
                    tbb: Avrational_520094117): cint {.cdecl,
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
  proc avrescaledelta*(intb: Avrational_520094117; ints: int64;
                       fstb: Avrational_520094117; duration: cint;
                       last: ptr int64; outtb: Avrational_520094117): int64 {.
      cdecl, importc: "av_rescale_delta".}
else:
  static :
    hint("Declaration of " & "avrescaledelta" &
        " already exists, not redeclaring")
when not declared(avaddstable):
  proc avaddstable*(tstb: Avrational_520094117; ts: int64; inctb: Avrational_520094117;
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
when not declared(avfopenutf8):
  proc avfopenutf8*(path: cstring; mode: cstring): ptr File_520094148 {.cdecl,
      importc: "av_fopen_utf8".}
else:
  static :
    hint("Declaration of " & "avfopenutf8" & " already exists, not redeclaring")
when not declared(avgettimebaseq):
  proc avgettimebaseq*(): Avrational_520094117 {.cdecl,
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
when not declared(avoptshow2):
  proc avoptshow2*(obj: pointer; avlogobj: pointer; reqflags: cint;
                   rejflags: cint): cint {.cdecl, importc: "av_opt_show2".}
else:
  static :
    hint("Declaration of " & "avoptshow2" & " already exists, not redeclaring")
when not declared(avoptsetdefaults):
  proc avoptsetdefaults*(s: pointer): void {.cdecl,
      importc: "av_opt_set_defaults".}
else:
  static :
    hint("Declaration of " & "avoptsetdefaults" &
        " already exists, not redeclaring")
when not declared(avoptsetdefaults2):
  proc avoptsetdefaults2*(s: pointer; mask: cint; flags: cint): void {.cdecl,
      importc: "av_opt_set_defaults2".}
else:
  static :
    hint("Declaration of " & "avoptsetdefaults2" &
        " already exists, not redeclaring")
when not declared(avsetoptionsstring):
  proc avsetoptionsstring*(ctx: pointer; opts: cstring; keyvalsep: cstring;
                           pairssep: cstring): cint {.cdecl,
      importc: "av_set_options_string".}
else:
  static :
    hint("Declaration of " & "avsetoptionsstring" &
        " already exists, not redeclaring")
when not declared(avoptsetfromstring):
  proc avoptsetfromstring*(ctx: pointer; opts: cstring; shorthand: ptr cstring;
                           keyvalsep: cstring; pairssep: cstring): cint {.cdecl,
      importc: "av_opt_set_from_string".}
else:
  static :
    hint("Declaration of " & "avoptsetfromstring" &
        " already exists, not redeclaring")
when not declared(avoptfree):
  proc avoptfree*(obj: pointer): void {.cdecl, importc: "av_opt_free".}
else:
  static :
    hint("Declaration of " & "avoptfree" & " already exists, not redeclaring")
when not declared(avoptflagisset):
  proc avoptflagisset*(obj: pointer; fieldname: cstring; flagname: cstring): cint {.
      cdecl, importc: "av_opt_flag_is_set".}
else:
  static :
    hint("Declaration of " & "avoptflagisset" &
        " already exists, not redeclaring")
when not declared(avoptsetdict):
  proc avoptsetdict*(obj: pointer; options: ptr ptr structavdictionary): cint {.
      cdecl, importc: "av_opt_set_dict".}
else:
  static :
    hint("Declaration of " & "avoptsetdict" & " already exists, not redeclaring")
when not declared(avoptsetdict2):
  proc avoptsetdict2*(obj: pointer; options: ptr ptr structavdictionary;
                      searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_dict2".}
else:
  static :
    hint("Declaration of " & "avoptsetdict2" &
        " already exists, not redeclaring")
when not declared(avoptgetkeyvalue):
  proc avoptgetkeyvalue*(ropts: ptr cstring; keyvalsep: cstring;
                         pairssep: cstring; flags: cuint; rkey: ptr cstring;
                         rval: ptr cstring): cint {.cdecl,
      importc: "av_opt_get_key_value".}
else:
  static :
    hint("Declaration of " & "avoptgetkeyvalue" &
        " already exists, not redeclaring")
when not declared(avoptevalflags):
  proc avoptevalflags*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                       flagsout: ptr cint): cint {.cdecl,
      importc: "av_opt_eval_flags".}
else:
  static :
    hint("Declaration of " & "avoptevalflags" &
        " already exists, not redeclaring")
when not declared(avoptevalint):
  proc avoptevalint*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                     intout: ptr cint): cint {.cdecl, importc: "av_opt_eval_int".}
else:
  static :
    hint("Declaration of " & "avoptevalint" & " already exists, not redeclaring")
when not declared(avoptevalint64):
  proc avoptevalint64*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                       int64out: ptr int64): cint {.cdecl,
      importc: "av_opt_eval_int64".}
else:
  static :
    hint("Declaration of " & "avoptevalint64" &
        " already exists, not redeclaring")
when not declared(avoptevalfloat):
  proc avoptevalfloat*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                       floatout: ptr cfloat): cint {.cdecl,
      importc: "av_opt_eval_float".}
else:
  static :
    hint("Declaration of " & "avoptevalfloat" &
        " already exists, not redeclaring")
when not declared(avoptevaldouble):
  proc avoptevaldouble*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                        doubleout: ptr cdouble): cint {.cdecl,
      importc: "av_opt_eval_double".}
else:
  static :
    hint("Declaration of " & "avoptevaldouble" &
        " already exists, not redeclaring")
when not declared(avoptevalq):
  proc avoptevalq*(obj: pointer; o: ptr Avoption_520094152; val: cstring;
                   qout: ptr Avrational_520094117): cint {.cdecl,
      importc: "av_opt_eval_q".}
else:
  static :
    hint("Declaration of " & "avoptevalq" & " already exists, not redeclaring")
when not declared(avoptfind):
  proc avoptfind*(obj: pointer; name: cstring; unit: cstring; optflags: cint;
                  searchflags: cint): ptr Avoption_520094152 {.cdecl,
      importc: "av_opt_find".}
else:
  static :
    hint("Declaration of " & "avoptfind" & " already exists, not redeclaring")
when not declared(avoptfind2):
  proc avoptfind2*(obj: pointer; name: cstring; unit: cstring; optflags: cint;
                   searchflags: cint; targetobj: ptr pointer): ptr Avoption_520094152 {.
      cdecl, importc: "av_opt_find2".}
else:
  static :
    hint("Declaration of " & "avoptfind2" & " already exists, not redeclaring")
when not declared(avoptnext):
  proc avoptnext*(obj: pointer; prev: ptr Avoption_520094152): ptr Avoption_520094152 {.
      cdecl, importc: "av_opt_next".}
else:
  static :
    hint("Declaration of " & "avoptnext" & " already exists, not redeclaring")
when not declared(avoptchildnext):
  proc avoptchildnext*(obj: pointer; prev: pointer): pointer {.cdecl,
      importc: "av_opt_child_next".}
else:
  static :
    hint("Declaration of " & "avoptchildnext" &
        " already exists, not redeclaring")
when not declared(avoptchildclassiterate):
  proc avoptchildclassiterate*(parent: ptr Avclass_520094105; iter: ptr pointer): ptr Avclass_520094105 {.
      cdecl, importc: "av_opt_child_class_iterate".}
else:
  static :
    hint("Declaration of " & "avoptchildclassiterate" &
        " already exists, not redeclaring")
when not declared(avoptset):
  proc avoptset*(obj: pointer; name: cstring; val: cstring; searchflags: cint): cint {.
      cdecl, importc: "av_opt_set".}
else:
  static :
    hint("Declaration of " & "avoptset" & " already exists, not redeclaring")
when not declared(avoptsetint):
  proc avoptsetint*(obj: pointer; name: cstring; val: int64; searchflags: cint): cint {.
      cdecl, importc: "av_opt_set_int".}
else:
  static :
    hint("Declaration of " & "avoptsetint" & " already exists, not redeclaring")
when not declared(avoptsetdouble):
  proc avoptsetdouble*(obj: pointer; name: cstring; val: cdouble;
                       searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_double".}
else:
  static :
    hint("Declaration of " & "avoptsetdouble" &
        " already exists, not redeclaring")
when not declared(avoptsetq):
  proc avoptsetq*(obj: pointer; name: cstring; val: Avrational_520094117;
                  searchflags: cint): cint {.cdecl, importc: "av_opt_set_q".}
else:
  static :
    hint("Declaration of " & "avoptsetq" & " already exists, not redeclaring")
when not declared(avoptsetbin):
  proc avoptsetbin*(obj: pointer; name: cstring; val: ptr uint8; size: cint;
                    searchflags: cint): cint {.cdecl, importc: "av_opt_set_bin".}
else:
  static :
    hint("Declaration of " & "avoptsetbin" & " already exists, not redeclaring")
when not declared(avoptsetimagesize):
  proc avoptsetimagesize*(obj: pointer; name: cstring; w: cint; h: cint;
                          searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_image_size".}
else:
  static :
    hint("Declaration of " & "avoptsetimagesize" &
        " already exists, not redeclaring")
when not declared(avoptsetpixelfmt):
  proc avoptsetpixelfmt*(obj: pointer; name: cstring; fmt: enumavpixelformat_520094129;
                         searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_pixel_fmt".}
else:
  static :
    hint("Declaration of " & "avoptsetpixelfmt" &
        " already exists, not redeclaring")
when not declared(avoptsetsamplefmt):
  proc avoptsetsamplefmt*(obj: pointer; name: cstring; fmt: enumavsampleformat_520094093;
                          searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avoptsetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avoptsetvideorate):
  proc avoptsetvideorate*(obj: pointer; name: cstring; val: Avrational_520094117;
                          searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_video_rate".}
else:
  static :
    hint("Declaration of " & "avoptsetvideorate" &
        " already exists, not redeclaring")
when not declared(avoptsetchannellayout):
  proc avoptsetchannellayout*(obj: pointer; name: cstring; chlayout: int64;
                              searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_channel_layout".}
else:
  static :
    hint("Declaration of " & "avoptsetchannellayout" &
        " already exists, not redeclaring")
when not declared(avoptsetchlayout):
  proc avoptsetchlayout*(obj: pointer; name: cstring;
                         layout: ptr Avchannellayout_520094091;
                         searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_chlayout".}
else:
  static :
    hint("Declaration of " & "avoptsetchlayout" &
        " already exists, not redeclaring")
when not declared(avoptsetdictval):
  proc avoptsetdictval*(obj: pointer; name: cstring; val: ptr Avdictionary_520094113;
                        searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_dict_val".}
else:
  static :
    hint("Declaration of " & "avoptsetdictval" &
        " already exists, not redeclaring")
when not declared(avoptget):
  proc avoptget*(obj: pointer; name: cstring; searchflags: cint;
                 outval: ptr ptr uint8): cint {.cdecl, importc: "av_opt_get".}
else:
  static :
    hint("Declaration of " & "avoptget" & " already exists, not redeclaring")
when not declared(avoptgetint):
  proc avoptgetint*(obj: pointer; name: cstring; searchflags: cint;
                    outval: ptr int64): cint {.cdecl, importc: "av_opt_get_int".}
else:
  static :
    hint("Declaration of " & "avoptgetint" & " already exists, not redeclaring")
when not declared(avoptgetdouble):
  proc avoptgetdouble*(obj: pointer; name: cstring; searchflags: cint;
                       outval: ptr cdouble): cint {.cdecl,
      importc: "av_opt_get_double".}
else:
  static :
    hint("Declaration of " & "avoptgetdouble" &
        " already exists, not redeclaring")
when not declared(avoptgetq):
  proc avoptgetq*(obj: pointer; name: cstring; searchflags: cint;
                  outval: ptr Avrational_520094117): cint {.cdecl,
      importc: "av_opt_get_q".}
else:
  static :
    hint("Declaration of " & "avoptgetq" & " already exists, not redeclaring")
when not declared(avoptgetimagesize):
  proc avoptgetimagesize*(obj: pointer; name: cstring; searchflags: cint;
                          wout: ptr cint; hout: ptr cint): cint {.cdecl,
      importc: "av_opt_get_image_size".}
else:
  static :
    hint("Declaration of " & "avoptgetimagesize" &
        " already exists, not redeclaring")
when not declared(avoptgetpixelfmt):
  proc avoptgetpixelfmt*(obj: pointer; name: cstring; searchflags: cint;
                         outfmt: ptr enumavpixelformat_520094129): cint {.cdecl,
      importc: "av_opt_get_pixel_fmt".}
else:
  static :
    hint("Declaration of " & "avoptgetpixelfmt" &
        " already exists, not redeclaring")
when not declared(avoptgetsamplefmt):
  proc avoptgetsamplefmt*(obj: pointer; name: cstring; searchflags: cint;
                          outfmt: ptr enumavsampleformat_520094093): cint {.
      cdecl, importc: "av_opt_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avoptgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avoptgetvideorate):
  proc avoptgetvideorate*(obj: pointer; name: cstring; searchflags: cint;
                          outval: ptr Avrational_520094117): cint {.cdecl,
      importc: "av_opt_get_video_rate".}
else:
  static :
    hint("Declaration of " & "avoptgetvideorate" &
        " already exists, not redeclaring")
when not declared(avoptgetchannellayout):
  proc avoptgetchannellayout*(obj: pointer; name: cstring; searchflags: cint;
                              chlayout: ptr int64): cint {.cdecl,
      importc: "av_opt_get_channel_layout".}
else:
  static :
    hint("Declaration of " & "avoptgetchannellayout" &
        " already exists, not redeclaring")
when not declared(avoptgetchlayout):
  proc avoptgetchlayout*(obj: pointer; name: cstring; searchflags: cint;
                         layout: ptr Avchannellayout_520094091): cint {.cdecl,
      importc: "av_opt_get_chlayout".}
else:
  static :
    hint("Declaration of " & "avoptgetchlayout" &
        " already exists, not redeclaring")
when not declared(avoptgetdictval):
  proc avoptgetdictval*(obj: pointer; name: cstring; searchflags: cint;
                        outval: ptr ptr Avdictionary_520094113): cint {.cdecl,
      importc: "av_opt_get_dict_val".}
else:
  static :
    hint("Declaration of " & "avoptgetdictval" &
        " already exists, not redeclaring")
when not declared(avoptptr):
  proc avoptptr*(avclass: ptr Avclass_520094105; obj: pointer; name: cstring): pointer {.
      cdecl, importc: "av_opt_ptr".}
else:
  static :
    hint("Declaration of " & "avoptptr" & " already exists, not redeclaring")
when not declared(avoptfreepranges):
  proc avoptfreepranges*(ranges: ptr ptr Avoptionranges_520094158): void {.
      cdecl, importc: "av_opt_freep_ranges".}
else:
  static :
    hint("Declaration of " & "avoptfreepranges" &
        " already exists, not redeclaring")
when not declared(avoptqueryranges):
  proc avoptqueryranges*(a0: ptr ptr Avoptionranges_520094158; obj: pointer;
                         key: cstring; flags: cint): cint {.cdecl,
      importc: "av_opt_query_ranges".}
else:
  static :
    hint("Declaration of " & "avoptqueryranges" &
        " already exists, not redeclaring")
when not declared(avoptcopy):
  proc avoptcopy*(dest: pointer; src: pointer): cint {.cdecl,
      importc: "av_opt_copy".}
else:
  static :
    hint("Declaration of " & "avoptcopy" & " already exists, not redeclaring")
when not declared(avoptqueryrangesdefault):
  proc avoptqueryrangesdefault*(a0: ptr ptr Avoptionranges_520094158;
                                obj: pointer; key: cstring; flags: cint): cint {.
      cdecl, importc: "av_opt_query_ranges_default".}
else:
  static :
    hint("Declaration of " & "avoptqueryrangesdefault" &
        " already exists, not redeclaring")
when not declared(avoptissettodefault):
  proc avoptissettodefault*(obj: pointer; o: ptr Avoption_520094152): cint {.
      cdecl, importc: "av_opt_is_set_to_default".}
else:
  static :
    hint("Declaration of " & "avoptissettodefault" &
        " already exists, not redeclaring")
when not declared(avoptissettodefaultbyname):
  proc avoptissettodefaultbyname*(obj: pointer; name: cstring; searchflags: cint): cint {.
      cdecl, importc: "av_opt_is_set_to_default_by_name".}
else:
  static :
    hint("Declaration of " & "avoptissettodefaultbyname" &
        " already exists, not redeclaring")
when not declared(avoptserialize):
  proc avoptserialize*(obj: pointer; optflags: cint; flags: cint;
                       buffer: ptr cstring; keyvalsep: cschar; pairssep: cschar): cint {.
      cdecl, importc: "av_opt_serialize".}
else:
  static :
    hint("Declaration of " & "avoptserialize" &
        " already exists, not redeclaring")
when not declared(avgetbitsperpixel):
  proc avgetbitsperpixel*(pixdesc: ptr Avpixfmtdescriptor_520094166): cint {.
      cdecl, importc: "av_get_bits_per_pixel".}
else:
  static :
    hint("Declaration of " & "avgetbitsperpixel" &
        " already exists, not redeclaring")
when not declared(avgetpaddedbitsperpixel):
  proc avgetpaddedbitsperpixel*(pixdesc: ptr Avpixfmtdescriptor_520094166): cint {.
      cdecl, importc: "av_get_padded_bits_per_pixel".}
else:
  static :
    hint("Declaration of " & "avgetpaddedbitsperpixel" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescget):
  proc avpixfmtdescget*(pixfmt: enumavpixelformat_520094129): ptr Avpixfmtdescriptor_520094166 {.
      cdecl, importc: "av_pix_fmt_desc_get".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescget" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescnext):
  proc avpixfmtdescnext*(prev: ptr Avpixfmtdescriptor_520094166): ptr Avpixfmtdescriptor_520094166 {.
      cdecl, importc: "av_pix_fmt_desc_next".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescnext" &
        " already exists, not redeclaring")
when not declared(avpixfmtdescgetid):
  proc avpixfmtdescgetid*(desc: ptr Avpixfmtdescriptor_520094166): enumavpixelformat_520094129 {.
      cdecl, importc: "av_pix_fmt_desc_get_id".}
else:
  static :
    hint("Declaration of " & "avpixfmtdescgetid" &
        " already exists, not redeclaring")
when not declared(avpixfmtgetchromasubsample):
  proc avpixfmtgetchromasubsample*(pixfmt: enumavpixelformat_520094129;
                                   hshift: ptr cint; vshift: ptr cint): cint {.
      cdecl, importc: "av_pix_fmt_get_chroma_sub_sample".}
else:
  static :
    hint("Declaration of " & "avpixfmtgetchromasubsample" &
        " already exists, not redeclaring")
when not declared(avpixfmtcountplanes):
  proc avpixfmtcountplanes*(pixfmt: enumavpixelformat_520094129): cint {.cdecl,
      importc: "av_pix_fmt_count_planes".}
else:
  static :
    hint("Declaration of " & "avpixfmtcountplanes" &
        " already exists, not redeclaring")
when not declared(avcolorrangename):
  proc avcolorrangename*(range: enumavcolorrange_520094144): cstring {.cdecl,
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
  proc avcolorprimariesname*(primaries: enumavcolorprimaries_520094131): cstring {.
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
  proc avcolortransfername*(transfer: enumavcolortransfercharacteristic_520094133): cstring {.
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
  proc avcolorspacename*(space: enumavcolorspace_520094142): cstring {.cdecl,
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
  proc avchromalocationname*(location: enumavchromalocation_520094146): cstring {.
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
                                  pos: enumavchromalocation_520094146): cint {.
      cdecl, importc: "av_chroma_location_enum_to_pos".}
else:
  static :
    hint("Declaration of " & "avchromalocationenumtopos" &
        " already exists, not redeclaring")
when not declared(avchromalocationpostoenum):
  proc avchromalocationpostoenum*(xpos: cint; ypos: cint): enumavchromalocation_520094146 {.
      cdecl, importc: "av_chroma_location_pos_to_enum".}
else:
  static :
    hint("Declaration of " & "avchromalocationpostoenum" &
        " already exists, not redeclaring")
when not declared(avgetpixfmt):
  proc avgetpixfmt*(name: cstring): enumavpixelformat_520094129 {.cdecl,
      importc: "av_get_pix_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpixfmt" & " already exists, not redeclaring")
when not declared(avgetpixfmtname):
  proc avgetpixfmtname*(pixfmt: enumavpixelformat_520094129): cstring {.cdecl,
      importc: "av_get_pix_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtname" &
        " already exists, not redeclaring")
when not declared(avgetpixfmtstring):
  proc avgetpixfmtstring*(buf: cstring; bufsize: cint; pixfmt: enumavpixelformat_520094129): cstring {.
      cdecl, importc: "av_get_pix_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtstring" &
        " already exists, not redeclaring")
when not declared(avreadimageline2):
  proc avreadimageline2*(dst: pointer; data: array[4'i64, ptr uint8];
                         linesize: array[4'i64, cint];
                         desc: ptr Avpixfmtdescriptor_520094166; x: cint;
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
                        desc: ptr Avpixfmtdescriptor_520094166; x: cint;
                        y: cint; c: cint; w: cint; readpalcomponent: cint): void {.
      cdecl, importc: "av_read_image_line".}
else:
  static :
    hint("Declaration of " & "avreadimageline" &
        " already exists, not redeclaring")
when not declared(avwriteimageline2):
  proc avwriteimageline2*(src: pointer; data: array[4'i64, ptr uint8];
                          linesize: array[4'i64, cint];
                          desc: ptr Avpixfmtdescriptor_520094166; x: cint;
                          y: cint; c: cint; w: cint; srcelementsize: cint): void {.
      cdecl, importc: "av_write_image_line2".}
else:
  static :
    hint("Declaration of " & "avwriteimageline2" &
        " already exists, not redeclaring")
when not declared(avwriteimageline):
  proc avwriteimageline*(src: ptr uint16; data: array[4'i64, ptr uint8];
                         linesize: array[4'i64, cint];
                         desc: ptr Avpixfmtdescriptor_520094166; x: cint;
                         y: cint; c: cint; w: cint): void {.cdecl,
      importc: "av_write_image_line".}
else:
  static :
    hint("Declaration of " & "avwriteimageline" &
        " already exists, not redeclaring")
when not declared(avpixfmtswapendianness):
  proc avpixfmtswapendianness*(pixfmt: enumavpixelformat_520094129): enumavpixelformat_520094129 {.
      cdecl, importc: "av_pix_fmt_swap_endianness".}
else:
  static :
    hint("Declaration of " & "avpixfmtswapendianness" &
        " already exists, not redeclaring")
when not declared(avgetpixfmtloss):
  proc avgetpixfmtloss*(dstpixfmt: enumavpixelformat_520094129;
                        srcpixfmt: enumavpixelformat_520094129; hasalpha: cint): cint {.
      cdecl, importc: "av_get_pix_fmt_loss".}
else:
  static :
    hint("Declaration of " & "avgetpixfmtloss" &
        " already exists, not redeclaring")
when not declared(avfindbestpixfmtof2):
  proc avfindbestpixfmtof2*(dstpixfmt1: enumavpixelformat_520094129;
                            dstpixfmt2: enumavpixelformat_520094129;
                            srcpixfmt: enumavpixelformat_520094129;
                            hasalpha: cint; lossptr: ptr cint): enumavpixelformat_520094129 {.
      cdecl, importc: "av_find_best_pix_fmt_of_2".}
else:
  static :
    hint("Declaration of " & "avfindbestpixfmtof2" &
        " already exists, not redeclaring")
when not declared(avimagefillmaxpixsteps):
  proc avimagefillmaxpixsteps*(maxpixsteps: array[4'i64, cint];
                               maxpixstepcomps: array[4'i64, cint];
                               pixdesc: ptr Avpixfmtdescriptor_520094166): void {.
      cdecl, importc: "av_image_fill_max_pixsteps".}
else:
  static :
    hint("Declaration of " & "avimagefillmaxpixsteps" &
        " already exists, not redeclaring")
when not declared(avimagegetlinesize):
  proc avimagegetlinesize*(pixfmt: enumavpixelformat_520094129; width: cint;
                           plane: cint): cint {.cdecl,
      importc: "av_image_get_linesize".}
else:
  static :
    hint("Declaration of " & "avimagegetlinesize" &
        " already exists, not redeclaring")
when not declared(avimagefilllinesizes):
  proc avimagefilllinesizes*(linesizes: array[4'i64, cint];
                             pixfmt: enumavpixelformat_520094129; width: cint): cint {.
      cdecl, importc: "av_image_fill_linesizes".}
else:
  static :
    hint("Declaration of " & "avimagefilllinesizes" &
        " already exists, not redeclaring")
when not declared(avimagefillplanesizes):
  proc avimagefillplanesizes*(size: array[4'i64, csize_t];
                              pixfmt: enumavpixelformat_520094129; height: cint;
                              linesizes: array[4'i64, ptrdifft_520094168]): cint {.
      cdecl, importc: "av_image_fill_plane_sizes".}
else:
  static :
    hint("Declaration of " & "avimagefillplanesizes" &
        " already exists, not redeclaring")
when not declared(avimagefillpointers):
  proc avimagefillpointers*(data: array[4'i64, ptr uint8];
                            pixfmt: enumavpixelformat_520094129; height: cint;
                            ptrarg: ptr uint8; linesizes: array[4'i64, cint]): cint {.
      cdecl, importc: "av_image_fill_pointers".}
else:
  static :
    hint("Declaration of " & "avimagefillpointers" &
        " already exists, not redeclaring")
when not declared(avimagealloc):
  proc avimagealloc*(pointers: array[4'i64, ptr uint8];
                     linesizes: array[4'i64, cint]; w: cint; h: cint;
                     pixfmt: enumavpixelformat_520094129; align: cint): cint {.
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
  proc avimagecopyplaneucfrom*(dst: ptr uint8; dstlinesize: ptrdifft_520094168;
                               src: ptr uint8; srclinesize: ptrdifft_520094168;
                               bytewidth: ptrdifft_520094168; height: cint): void {.
      cdecl, importc: "av_image_copy_plane_uc_from".}
else:
  static :
    hint("Declaration of " & "avimagecopyplaneucfrom" &
        " already exists, not redeclaring")
when not declared(avimagecopy):
  proc avimagecopy*(dstdata: array[4'i64, ptr uint8];
                    dstlinesizes: array[4'i64, cint];
                    srcdata: array[4'i64, ptr uint8];
                    srclinesizes: array[4'i64, cint]; pixfmt: enumavpixelformat_520094129;
                    width: cint; height: cint): void {.cdecl,
      importc: "av_image_copy".}
else:
  static :
    hint("Declaration of " & "avimagecopy" & " already exists, not redeclaring")
when not declared(avimagecopyucfrom):
  proc avimagecopyucfrom*(dstdata: array[4'i64, ptr uint8];
                          dstlinesizes: array[4'i64, ptrdifft_520094168];
                          srcdata: array[4'i64, ptr uint8];
                          srclinesizes: array[4'i64, ptrdifft_520094168];
                          pixfmt: enumavpixelformat_520094129; width: cint;
                          height: cint): void {.cdecl,
      importc: "av_image_copy_uc_from".}
else:
  static :
    hint("Declaration of " & "avimagecopyucfrom" &
        " already exists, not redeclaring")
when not declared(avimagefillarrays):
  proc avimagefillarrays*(dstdata: array[4'i64, ptr uint8];
                          dstlinesize: array[4'i64, cint]; src: ptr uint8;
                          pixfmt: enumavpixelformat_520094129; width: cint;
                          height: cint; align: cint): cint {.cdecl,
      importc: "av_image_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avimagefillarrays" &
        " already exists, not redeclaring")
when not declared(avimagegetbuffersize):
  proc avimagegetbuffersize*(pixfmt: enumavpixelformat_520094129; width: cint;
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
                            pixfmt: enumavpixelformat_520094129; width: cint;
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
                          pixfmt: enumavpixelformat_520094129; logoffset: cint;
                          logctx: pointer): cint {.cdecl,
      importc: "av_image_check_size2".}
else:
  static :
    hint("Declaration of " & "avimagechecksize2" &
        " already exists, not redeclaring")
when not declared(avimagechecksar):
  proc avimagechecksar*(w: cuint; h: cuint; sar: Avrational_520094117): cint {.
      cdecl, importc: "av_image_check_sar".}
else:
  static :
    hint("Declaration of " & "avimagechecksar" &
        " already exists, not redeclaring")
when not declared(avimagefillblack):
  proc avimagefillblack*(dstdata: array[4'i64, ptr uint8];
                         dstlinesize: array[4'i64, ptrdifft_520094168];
                         pixfmt: enumavpixelformat_520094129;
                         range: enumavcolorrange_520094144; width: cint;
                         height: cint): cint {.cdecl,
      importc: "av_image_fill_black".}
else:
  static :
    hint("Declaration of " & "avimagefillblack" &
        " already exists, not redeclaring")
when not declared(avbufferalloc):
  proc avbufferalloc*(size: csize_t): ptr Avbufferref_520094174 {.cdecl,
      importc: "av_buffer_alloc".}
else:
  static :
    hint("Declaration of " & "avbufferalloc" &
        " already exists, not redeclaring")
when not declared(avbufferallocz):
  proc avbufferallocz*(size: csize_t): ptr Avbufferref_520094174 {.cdecl,
      importc: "av_buffer_allocz".}
else:
  static :
    hint("Declaration of " & "avbufferallocz" &
        " already exists, not redeclaring")
when not declared(avbuffercreate):
  proc avbuffercreate*(data: ptr uint8; size: csize_t;
                       free: proc (a0: pointer; a1: ptr uint8): void {.cdecl.};
                       opaque: pointer; flags: cint): ptr Avbufferref_520094174 {.
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
  proc avbufferref*(buf: ptr Avbufferref_520094174): ptr Avbufferref_520094174 {.
      cdecl, importc: "av_buffer_ref".}
else:
  static :
    hint("Declaration of " & "avbufferref" & " already exists, not redeclaring")
when not declared(avbufferunref):
  proc avbufferunref*(buf: ptr ptr Avbufferref_520094174): void {.cdecl,
      importc: "av_buffer_unref".}
else:
  static :
    hint("Declaration of " & "avbufferunref" &
        " already exists, not redeclaring")
when not declared(avbufferiswritable):
  proc avbufferiswritable*(buf: ptr Avbufferref_520094174): cint {.cdecl,
      importc: "av_buffer_is_writable".}
else:
  static :
    hint("Declaration of " & "avbufferiswritable" &
        " already exists, not redeclaring")
when not declared(avbuffergetopaque):
  proc avbuffergetopaque*(buf: ptr Avbufferref_520094174): pointer {.cdecl,
      importc: "av_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avbuffergetrefcount):
  proc avbuffergetrefcount*(buf: ptr Avbufferref_520094174): cint {.cdecl,
      importc: "av_buffer_get_ref_count".}
else:
  static :
    hint("Declaration of " & "avbuffergetrefcount" &
        " already exists, not redeclaring")
when not declared(avbuffermakewritable):
  proc avbuffermakewritable*(buf: ptr ptr Avbufferref_520094174): cint {.cdecl,
      importc: "av_buffer_make_writable".}
else:
  static :
    hint("Declaration of " & "avbuffermakewritable" &
        " already exists, not redeclaring")
when not declared(avbufferrealloc):
  proc avbufferrealloc*(buf: ptr ptr Avbufferref_520094174; size: csize_t): cint {.
      cdecl, importc: "av_buffer_realloc".}
else:
  static :
    hint("Declaration of " & "avbufferrealloc" &
        " already exists, not redeclaring")
when not declared(avbufferreplace):
  proc avbufferreplace*(dst: ptr ptr Avbufferref_520094174; src: ptr Avbufferref_520094174): cint {.
      cdecl, importc: "av_buffer_replace".}
else:
  static :
    hint("Declaration of " & "avbufferreplace" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit):
  proc avbufferpoolinit*(size: csize_t;
                         alloc: proc (a0: csize_t): ptr Avbufferref_520094174 {.
      cdecl.}): ptr Avbufferpool_520094176 {.cdecl,
      importc: "av_buffer_pool_init".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit2):
  proc avbufferpoolinit2*(size: csize_t; opaque: pointer; alloc: proc (
      a0: pointer; a1: csize_t): ptr Avbufferref_520094174 {.cdecl.};
                          poolfree: proc (a0: pointer): void {.cdecl.}): ptr Avbufferpool_520094176 {.
      cdecl, importc: "av_buffer_pool_init2".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit2" &
        " already exists, not redeclaring")
when not declared(avbufferpooluninit):
  proc avbufferpooluninit*(pool: ptr ptr Avbufferpool_520094176): void {.cdecl,
      importc: "av_buffer_pool_uninit".}
else:
  static :
    hint("Declaration of " & "avbufferpooluninit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolget):
  proc avbufferpoolget*(pool: ptr Avbufferpool_520094176): ptr Avbufferref_520094174 {.
      cdecl, importc: "av_buffer_pool_get".}
else:
  static :
    hint("Declaration of " & "avbufferpoolget" &
        " already exists, not redeclaring")
when not declared(avbufferpoolbuffergetopaque):
  proc avbufferpoolbuffergetopaque*(refarg: ptr Avbufferref_520094174): pointer {.
      cdecl, importc: "av_buffer_pool_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbufferpoolbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avframealloc):
  proc avframealloc*(): ptr Avframe_520094192 {.cdecl, importc: "av_frame_alloc".}
else:
  static :
    hint("Declaration of " & "avframealloc" & " already exists, not redeclaring")
when not declared(avframefree):
  proc avframefree*(frame: ptr ptr Avframe_520094192): void {.cdecl,
      importc: "av_frame_free".}
else:
  static :
    hint("Declaration of " & "avframefree" & " already exists, not redeclaring")
when not declared(avframeref):
  proc avframeref*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192): cint {.
      cdecl, importc: "av_frame_ref".}
else:
  static :
    hint("Declaration of " & "avframeref" & " already exists, not redeclaring")
when not declared(avframereplace):
  proc avframereplace*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192): cint {.
      cdecl, importc: "av_frame_replace".}
else:
  static :
    hint("Declaration of " & "avframereplace" &
        " already exists, not redeclaring")
when not declared(avframeclone):
  proc avframeclone*(src: ptr Avframe_520094192): ptr Avframe_520094192 {.cdecl,
      importc: "av_frame_clone".}
else:
  static :
    hint("Declaration of " & "avframeclone" & " already exists, not redeclaring")
when not declared(avframeunref):
  proc avframeunref*(frame: ptr Avframe_520094192): void {.cdecl,
      importc: "av_frame_unref".}
else:
  static :
    hint("Declaration of " & "avframeunref" & " already exists, not redeclaring")
when not declared(avframemoveref):
  proc avframemoveref*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192): void {.
      cdecl, importc: "av_frame_move_ref".}
else:
  static :
    hint("Declaration of " & "avframemoveref" &
        " already exists, not redeclaring")
when not declared(avframegetbuffer):
  proc avframegetbuffer*(frame: ptr Avframe_520094192; align: cint): cint {.
      cdecl, importc: "av_frame_get_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avframeiswritable):
  proc avframeiswritable*(frame: ptr Avframe_520094192): cint {.cdecl,
      importc: "av_frame_is_writable".}
else:
  static :
    hint("Declaration of " & "avframeiswritable" &
        " already exists, not redeclaring")
when not declared(avframemakewritable):
  proc avframemakewritable*(frame: ptr Avframe_520094192): cint {.cdecl,
      importc: "av_frame_make_writable".}
else:
  static :
    hint("Declaration of " & "avframemakewritable" &
        " already exists, not redeclaring")
when not declared(avframecopy):
  proc avframecopy*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192): cint {.
      cdecl, importc: "av_frame_copy".}
else:
  static :
    hint("Declaration of " & "avframecopy" & " already exists, not redeclaring")
when not declared(avframecopyprops):
  proc avframecopyprops*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192): cint {.
      cdecl, importc: "av_frame_copy_props".}
else:
  static :
    hint("Declaration of " & "avframecopyprops" &
        " already exists, not redeclaring")
when not declared(avframegetplanebuffer):
  proc avframegetplanebuffer*(frame: ptr Avframe_520094192; plane: cint): ptr Avbufferref_520094174 {.
      cdecl, importc: "av_frame_get_plane_buffer".}
else:
  static :
    hint("Declaration of " & "avframegetplanebuffer" &
        " already exists, not redeclaring")
when not declared(avframenewsidedata):
  proc avframenewsidedata*(frame: ptr Avframe_520094192;
                           typearg: enumavframesidedatatype_520094178;
                           size: csize_t): ptr Avframesidedata_520094184 {.
      cdecl, importc: "av_frame_new_side_data".}
else:
  static :
    hint("Declaration of " & "avframenewsidedata" &
        " already exists, not redeclaring")
when not declared(avframenewsidedatafrombuf):
  proc avframenewsidedatafrombuf*(frame: ptr Avframe_520094192;
                                  typearg: enumavframesidedatatype_520094178;
                                  buf: ptr Avbufferref_520094174): ptr Avframesidedata_520094184 {.
      cdecl, importc: "av_frame_new_side_data_from_buf".}
else:
  static :
    hint("Declaration of " & "avframenewsidedatafrombuf" &
        " already exists, not redeclaring")
when not declared(avframegetsidedata):
  proc avframegetsidedata*(frame: ptr Avframe_520094192;
                           typearg: enumavframesidedatatype_520094178): ptr Avframesidedata_520094184 {.
      cdecl, importc: "av_frame_get_side_data".}
else:
  static :
    hint("Declaration of " & "avframegetsidedata" &
        " already exists, not redeclaring")
when not declared(avframeremovesidedata):
  proc avframeremovesidedata*(frame: ptr Avframe_520094192;
                              typearg: enumavframesidedatatype_520094178): void {.
      cdecl, importc: "av_frame_remove_side_data".}
else:
  static :
    hint("Declaration of " & "avframeremovesidedata" &
        " already exists, not redeclaring")
when not declared(avframeapplycropping):
  proc avframeapplycropping*(frame: ptr Avframe_520094192; flags: cint): cint {.
      cdecl, importc: "av_frame_apply_cropping".}
else:
  static :
    hint("Declaration of " & "avframeapplycropping" &
        " already exists, not redeclaring")
when not declared(avframesidedataname):
  proc avframesidedataname*(typearg: enumavframesidedatatype_520094178): cstring {.
      cdecl, importc: "av_frame_side_data_name".}
else:
  static :
    hint("Declaration of " & "avframesidedataname" &
        " already exists, not redeclaring")
when not declared(avhwdevicefindtypebyname):
  proc avhwdevicefindtypebyname*(name: cstring): enumavhwdevicetype_520094194 {.
      cdecl, importc: "av_hwdevice_find_type_by_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicefindtypebyname" &
        " already exists, not redeclaring")
when not declared(avhwdevicegettypename):
  proc avhwdevicegettypename*(typearg: enumavhwdevicetype_520094194): cstring {.
      cdecl, importc: "av_hwdevice_get_type_name".}
else:
  static :
    hint("Declaration of " & "avhwdevicegettypename" &
        " already exists, not redeclaring")
when not declared(avhwdeviceiteratetypes):
  proc avhwdeviceiteratetypes*(prev: enumavhwdevicetype_520094194): enumavhwdevicetype_520094194 {.
      cdecl, importc: "av_hwdevice_iterate_types".}
else:
  static :
    hint("Declaration of " & "avhwdeviceiteratetypes" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxalloc):
  proc avhwdevicectxalloc*(typearg: enumavhwdevicetype_520094194): ptr Avbufferref_520094174 {.
      cdecl, importc: "av_hwdevice_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxinit):
  proc avhwdevicectxinit*(refarg: ptr Avbufferref_520094174): cint {.cdecl,
      importc: "av_hwdevice_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxinit" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreate):
  proc avhwdevicectxcreate*(devicectx: ptr ptr Avbufferref_520094174;
                            typearg: enumavhwdevicetype_520094194;
                            device: cstring; opts: ptr Avdictionary_520094113;
                            flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreate" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederived):
  proc avhwdevicectxcreatederived*(dstctx: ptr ptr Avbufferref_520094174;
                                   typearg: enumavhwdevicetype_520094194;
                                   srcctx: ptr Avbufferref_520094174;
                                   flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avhwdevicectxcreatederivedopts):
  proc avhwdevicectxcreatederivedopts*(dstctx: ptr ptr Avbufferref_520094174;
                                       typearg: enumavhwdevicetype_520094194;
                                       srcctx: ptr Avbufferref_520094174;
                                       options: ptr Avdictionary_520094113;
                                       flags: cint): cint {.cdecl,
      importc: "av_hwdevice_ctx_create_derived_opts".}
else:
  static :
    hint("Declaration of " & "avhwdevicectxcreatederivedopts" &
        " already exists, not redeclaring")
when not declared(avhwframectxalloc):
  proc avhwframectxalloc*(devicectx: ptr Avbufferref_520094174): ptr Avbufferref_520094174 {.
      cdecl, importc: "av_hwframe_ctx_alloc".}
else:
  static :
    hint("Declaration of " & "avhwframectxalloc" &
        " already exists, not redeclaring")
when not declared(avhwframectxinit):
  proc avhwframectxinit*(refarg: ptr Avbufferref_520094174): cint {.cdecl,
      importc: "av_hwframe_ctx_init".}
else:
  static :
    hint("Declaration of " & "avhwframectxinit" &
        " already exists, not redeclaring")
when not declared(avhwframegetbuffer):
  proc avhwframegetbuffer*(hwframectx: ptr Avbufferref_520094174;
                           frame: ptr Avframe_520094192; flags: cint): cint {.
      cdecl, importc: "av_hwframe_get_buffer".}
else:
  static :
    hint("Declaration of " & "avhwframegetbuffer" &
        " already exists, not redeclaring")
when not declared(avhwframetransferdata):
  proc avhwframetransferdata*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192;
                              flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_data".}
else:
  static :
    hint("Declaration of " & "avhwframetransferdata" &
        " already exists, not redeclaring")
when not declared(avhwframetransfergetformats):
  proc avhwframetransfergetformats*(hwframectx: ptr Avbufferref_520094174;
                                    dir: enumavhwframetransferdirection_520094208;
                                    formats: ptr ptr enumavpixelformat_520094129;
                                    flags: cint): cint {.cdecl,
      importc: "av_hwframe_transfer_get_formats".}
else:
  static :
    hint("Declaration of " & "avhwframetransfergetformats" &
        " already exists, not redeclaring")
when not declared(avhwdevicehwconfigalloc):
  proc avhwdevicehwconfigalloc*(devicectx: ptr Avbufferref_520094174): pointer {.
      cdecl, importc: "av_hwdevice_hwconfig_alloc".}
else:
  static :
    hint("Declaration of " & "avhwdevicehwconfigalloc" &
        " already exists, not redeclaring")
when not declared(avhwdevicegethwframeconstraints):
  proc avhwdevicegethwframeconstraints*(refarg: ptr Avbufferref_520094174;
                                        hwconfig: pointer): ptr Avhwframesconstraints_520094212 {.
      cdecl, importc: "av_hwdevice_get_hwframe_constraints".}
else:
  static :
    hint("Declaration of " & "avhwdevicegethwframeconstraints" &
        " already exists, not redeclaring")
when not declared(avhwframeconstraintsfree):
  proc avhwframeconstraintsfree*(constraints: ptr ptr Avhwframesconstraints_520094212): void {.
      cdecl, importc: "av_hwframe_constraints_free".}
else:
  static :
    hint("Declaration of " & "avhwframeconstraintsfree" &
        " already exists, not redeclaring")
when not declared(avhwframemap):
  proc avhwframemap*(dst: ptr Avframe_520094192; src: ptr Avframe_520094192;
                     flags: cint): cint {.cdecl, importc: "av_hwframe_map".}
else:
  static :
    hint("Declaration of " & "avhwframemap" & " already exists, not redeclaring")
when not declared(avhwframectxcreatederived):
  proc avhwframectxcreatederived*(derivedframectx: ptr ptr Avbufferref_520094174;
                                  format: enumavpixelformat_520094129;
                                  deriveddevicectx: ptr Avbufferref_520094174;
                                  sourceframectx: ptr Avbufferref_520094174;
                                  flags: cint): cint {.cdecl,
      importc: "av_hwframe_ctx_create_derived".}
else:
  static :
    hint("Declaration of " & "avhwframectxcreatederived" &
        " already exists, not redeclaring")
when not declared(avcodecgettype):
  proc avcodecgettype*(codecid: enumavcodecid_520094214): enumavmediatype_520094119 {.
      cdecl, importc: "avcodec_get_type".}
else:
  static :
    hint("Declaration of " & "avcodecgettype" &
        " already exists, not redeclaring")
when not declared(avcodecgetname):
  proc avcodecgetname*(id: enumavcodecid_520094214): cstring {.cdecl,
      importc: "avcodec_get_name".}
else:
  static :
    hint("Declaration of " & "avcodecgetname" &
        " already exists, not redeclaring")
when not declared(avgetbitspersample):
  proc avgetbitspersample*(codecid: enumavcodecid_520094214): cint {.cdecl,
      importc: "av_get_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbitspersample" &
        " already exists, not redeclaring")
when not declared(avgetexactbitspersample):
  proc avgetexactbitspersample*(codecid: enumavcodecid_520094214): cint {.cdecl,
      importc: "av_get_exact_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetexactbitspersample" &
        " already exists, not redeclaring")
when not declared(avcodecprofilename):
  proc avcodecprofilename*(codecid: enumavcodecid_520094214; profile: cint): cstring {.
      cdecl, importc: "avcodec_profile_name".}
else:
  static :
    hint("Declaration of " & "avcodecprofilename" &
        " already exists, not redeclaring")
when not declared(avgetpcmcodec):
  proc avgetpcmcodec*(fmt: enumavsampleformat_520094093; be: cint): enumavcodecid_520094214 {.
      cdecl, importc: "av_get_pcm_codec".}
else:
  static :
    hint("Declaration of " & "avgetpcmcodec" &
        " already exists, not redeclaring")
when not declared(avcodeciterate):
  proc avcodeciterate*(opaque: ptr pointer): ptr Avcodec_520094222 {.cdecl,
      importc: "av_codec_iterate".}
else:
  static :
    hint("Declaration of " & "avcodeciterate" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoder):
  proc avcodecfinddecoder*(id: enumavcodecid_520094214): ptr Avcodec_520094222 {.
      cdecl, importc: "avcodec_find_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoder" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoderbyname):
  proc avcodecfinddecoderbyname*(name: cstring): ptr Avcodec_520094222 {.cdecl,
      importc: "avcodec_find_decoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoder):
  proc avcodecfindencoder*(id: enumavcodecid_520094214): ptr Avcodec_520094222 {.
      cdecl, importc: "avcodec_find_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoder" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoderbyname):
  proc avcodecfindencoderbyname*(name: cstring): ptr Avcodec_520094222 {.cdecl,
      importc: "avcodec_find_encoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecisencoder):
  proc avcodecisencoder*(codec: ptr Avcodec_520094222): cint {.cdecl,
      importc: "av_codec_is_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecisencoder" &
        " already exists, not redeclaring")
when not declared(avcodecisdecoder):
  proc avcodecisdecoder*(codec: ptr Avcodec_520094222): cint {.cdecl,
      importc: "av_codec_is_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecisdecoder" &
        " already exists, not redeclaring")
when not declared(avgetprofilename):
  proc avgetprofilename*(codec: ptr Avcodec_520094222; profile: cint): cstring {.
      cdecl, importc: "av_get_profile_name".}
else:
  static :
    hint("Declaration of " & "avgetprofilename" &
        " already exists, not redeclaring")
when not declared(avcodecgethwconfig):
  proc avcodecgethwconfig*(codec: ptr Avcodec_520094222; index: cint): ptr Avcodechwconfig_520094226 {.
      cdecl, importc: "avcodec_get_hw_config".}
else:
  static :
    hint("Declaration of " & "avcodecgethwconfig" &
        " already exists, not redeclaring")
when not declared(avcpbpropertiesalloc):
  proc avcpbpropertiesalloc*(size: ptr csize_t): ptr Avcpbproperties_520094240 {.
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
  proc avpacketsidedatanew*(psd: ptr ptr Avpacketsidedata_520094250;
                            pnbsd: ptr cint; typearg: enumavpacketsidedatatype_520094246;
                            size: csize_t; flags: cint): ptr Avpacketsidedata_520094250 {.
      cdecl, importc: "av_packet_side_data_new".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatanew" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataadd):
  proc avpacketsidedataadd*(sd: ptr ptr Avpacketsidedata_520094250;
                            nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094246;
                            data: pointer; size: csize_t; flags: cint): ptr Avpacketsidedata_520094250 {.
      cdecl, importc: "av_packet_side_data_add".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataadd" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataget):
  proc avpacketsidedataget*(sd: ptr Avpacketsidedata_520094250; nbsd: cint;
                            typearg: enumavpacketsidedatatype_520094246): ptr Avpacketsidedata_520094250 {.
      cdecl, importc: "av_packet_side_data_get".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataget" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataremove):
  proc avpacketsidedataremove*(sd: ptr Avpacketsidedata_520094250;
                               nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094246): void {.
      cdecl, importc: "av_packet_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataremove" &
        " already exists, not redeclaring")
when not declared(avpacketsidedatafree):
  proc avpacketsidedatafree*(sd: ptr ptr Avpacketsidedata_520094250;
                             nbsd: ptr cint): void {.cdecl,
      importc: "av_packet_side_data_free".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatafree" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataname):
  proc avpacketsidedataname*(typearg: enumavpacketsidedatatype_520094246): cstring {.
      cdecl, importc: "av_packet_side_data_name".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataname" &
        " already exists, not redeclaring")
when not declared(avpacketalloc):
  proc avpacketalloc*(): ptr Avpacket_520094254 {.cdecl,
      importc: "av_packet_alloc".}
else:
  static :
    hint("Declaration of " & "avpacketalloc" &
        " already exists, not redeclaring")
when not declared(avpacketclone):
  proc avpacketclone*(src: ptr Avpacket_520094254): ptr Avpacket_520094254 {.
      cdecl, importc: "av_packet_clone".}
else:
  static :
    hint("Declaration of " & "avpacketclone" &
        " already exists, not redeclaring")
when not declared(avpacketfree):
  proc avpacketfree*(pkt: ptr ptr Avpacket_520094254): void {.cdecl,
      importc: "av_packet_free".}
else:
  static :
    hint("Declaration of " & "avpacketfree" & " already exists, not redeclaring")
when not declared(avinitpacket):
  proc avinitpacket*(pkt: ptr Avpacket_520094254): void {.cdecl,
      importc: "av_init_packet".}
else:
  static :
    hint("Declaration of " & "avinitpacket" & " already exists, not redeclaring")
when not declared(avnewpacket):
  proc avnewpacket*(pkt: ptr Avpacket_520094254; size: cint): cint {.cdecl,
      importc: "av_new_packet".}
else:
  static :
    hint("Declaration of " & "avnewpacket" & " already exists, not redeclaring")
when not declared(avshrinkpacket):
  proc avshrinkpacket*(pkt: ptr Avpacket_520094254; size: cint): void {.cdecl,
      importc: "av_shrink_packet".}
else:
  static :
    hint("Declaration of " & "avshrinkpacket" &
        " already exists, not redeclaring")
when not declared(avgrowpacket):
  proc avgrowpacket*(pkt: ptr Avpacket_520094254; growby: cint): cint {.cdecl,
      importc: "av_grow_packet".}
else:
  static :
    hint("Declaration of " & "avgrowpacket" & " already exists, not redeclaring")
when not declared(avpacketfromdata):
  proc avpacketfromdata*(pkt: ptr Avpacket_520094254; data: ptr uint8;
                         size: cint): cint {.cdecl,
      importc: "av_packet_from_data".}
else:
  static :
    hint("Declaration of " & "avpacketfromdata" &
        " already exists, not redeclaring")
when not declared(avpacketnewsidedata):
  proc avpacketnewsidedata*(pkt: ptr Avpacket_520094254;
                            typearg: enumavpacketsidedatatype_520094246;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_new_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketnewsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketaddsidedata):
  proc avpacketaddsidedata*(pkt: ptr Avpacket_520094254;
                            typearg: enumavpacketsidedatatype_520094246;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_packet_add_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketaddsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketshrinksidedata):
  proc avpacketshrinksidedata*(pkt: ptr Avpacket_520094254;
                               typearg: enumavpacketsidedatatype_520094246;
                               size: csize_t): cint {.cdecl,
      importc: "av_packet_shrink_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketshrinksidedata" &
        " already exists, not redeclaring")
when not declared(avpacketgetsidedata):
  proc avpacketgetsidedata*(pkt: ptr Avpacket_520094254;
                            typearg: enumavpacketsidedatatype_520094246;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_get_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketgetsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketpackdictionary):
  proc avpacketpackdictionary*(dict: ptr Avdictionary_520094113;
                               size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_pack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketunpackdictionary):
  proc avpacketunpackdictionary*(data: ptr uint8; size: csize_t;
                                 dict: ptr ptr Avdictionary_520094113): cint {.
      cdecl, importc: "av_packet_unpack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketunpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketfreesidedata):
  proc avpacketfreesidedata*(pkt: ptr Avpacket_520094254): void {.cdecl,
      importc: "av_packet_free_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketfreesidedata" &
        " already exists, not redeclaring")
when not declared(avpacketref):
  proc avpacketref*(dst: ptr Avpacket_520094254; src: ptr Avpacket_520094254): cint {.
      cdecl, importc: "av_packet_ref".}
else:
  static :
    hint("Declaration of " & "avpacketref" & " already exists, not redeclaring")
when not declared(avpacketunref):
  proc avpacketunref*(pkt: ptr Avpacket_520094254): void {.cdecl,
      importc: "av_packet_unref".}
else:
  static :
    hint("Declaration of " & "avpacketunref" &
        " already exists, not redeclaring")
when not declared(avpacketmoveref):
  proc avpacketmoveref*(dst: ptr Avpacket_520094254; src: ptr Avpacket_520094254): void {.
      cdecl, importc: "av_packet_move_ref".}
else:
  static :
    hint("Declaration of " & "avpacketmoveref" &
        " already exists, not redeclaring")
when not declared(avpacketcopyprops):
  proc avpacketcopyprops*(dst: ptr Avpacket_520094254; src: ptr Avpacket_520094254): cint {.
      cdecl, importc: "av_packet_copy_props".}
else:
  static :
    hint("Declaration of " & "avpacketcopyprops" &
        " already exists, not redeclaring")
when not declared(avpacketmakerefcounted):
  proc avpacketmakerefcounted*(pkt: ptr Avpacket_520094254): cint {.cdecl,
      importc: "av_packet_make_refcounted".}
else:
  static :
    hint("Declaration of " & "avpacketmakerefcounted" &
        " already exists, not redeclaring")
when not declared(avpacketmakewritable):
  proc avpacketmakewritable*(pkt: ptr Avpacket_520094254): cint {.cdecl,
      importc: "av_packet_make_writable".}
else:
  static :
    hint("Declaration of " & "avpacketmakewritable" &
        " already exists, not redeclaring")
when not declared(avpacketrescalets):
  proc avpacketrescalets*(pkt: ptr Avpacket_520094254; tbsrc: Avrational_520094117;
                          tbdst: Avrational_520094117): void {.cdecl,
      importc: "av_packet_rescale_ts".}
else:
  static :
    hint("Declaration of " & "avpacketrescalets" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorget):
  proc avcodecdescriptorget*(id: enumavcodecid_520094214): ptr Avcodecdescriptor_520094264 {.
      cdecl, importc: "avcodec_descriptor_get".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorget" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptornext):
  proc avcodecdescriptornext*(prev: ptr Avcodecdescriptor_520094264): ptr Avcodecdescriptor_520094264 {.
      cdecl, importc: "avcodec_descriptor_next".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptornext" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorgetbyname):
  proc avcodecdescriptorgetbyname*(name: cstring): ptr Avcodecdescriptor_520094264 {.
      cdecl, importc: "avcodec_descriptor_get_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorgetbyname" &
        " already exists, not redeclaring")
when not declared(avcodecparametersalloc):
  proc avcodecparametersalloc*(): ptr Avcodecparameters_520094268 {.cdecl,
      importc: "avcodec_parameters_alloc".}
else:
  static :
    hint("Declaration of " & "avcodecparametersalloc" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfree):
  proc avcodecparametersfree*(par: ptr ptr Avcodecparameters_520094268): void {.
      cdecl, importc: "avcodec_parameters_free".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfree" &
        " already exists, not redeclaring")
when not declared(avcodecparameterscopy):
  proc avcodecparameterscopy*(dst: ptr Avcodecparameters_520094268;
                              src: ptr Avcodecparameters_520094268): cint {.
      cdecl, importc: "avcodec_parameters_copy".}
else:
  static :
    hint("Declaration of " & "avcodecparameterscopy" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration2):
  proc avgetaudioframeduration2*(par: ptr Avcodecparameters_520094268;
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
  proc avcodecalloccontext3*(codec: ptr Avcodec_520094222): ptr Avcodeccontext_520094278 {.
      cdecl, importc: "avcodec_alloc_context3".}
else:
  static :
    hint("Declaration of " & "avcodecalloccontext3" &
        " already exists, not redeclaring")
when not declared(avcodecfreecontext):
  proc avcodecfreecontext*(avctx: ptr ptr Avcodeccontext_520094278): void {.
      cdecl, importc: "avcodec_free_context".}
else:
  static :
    hint("Declaration of " & "avcodecfreecontext" &
        " already exists, not redeclaring")
when not declared(avcodecgetclass):
  proc avcodecgetclass*(): ptr Avclass_520094105 {.cdecl,
      importc: "avcodec_get_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetclass" &
        " already exists, not redeclaring")
when not declared(avcodecgetsubtitlerectclass):
  proc avcodecgetsubtitlerectclass*(): ptr Avclass_520094105 {.cdecl,
      importc: "avcodec_get_subtitle_rect_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetsubtitlerectclass" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfromcontext):
  proc avcodecparametersfromcontext*(par: ptr structavcodecparameters_520094266;
                                     codec: ptr Avcodeccontext_520094278): cint {.
      cdecl, importc: "avcodec_parameters_from_context".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfromcontext" &
        " already exists, not redeclaring")
when not declared(avcodecparameterstocontext):
  proc avcodecparameterstocontext*(codec: ptr Avcodeccontext_520094278;
                                   par: ptr structavcodecparameters_520094266): cint {.
      cdecl, importc: "avcodec_parameters_to_context".}
else:
  static :
    hint("Declaration of " & "avcodecparameterstocontext" &
        " already exists, not redeclaring")
when not declared(avcodecopen2):
  proc avcodecopen2*(avctx: ptr Avcodeccontext_520094278; codec: ptr Avcodec_520094222;
                     options: ptr ptr Avdictionary_520094113): cint {.cdecl,
      importc: "avcodec_open2".}
else:
  static :
    hint("Declaration of " & "avcodecopen2" & " already exists, not redeclaring")
when not declared(avcodecclose):
  proc avcodecclose*(avctx: ptr Avcodeccontext_520094278): cint {.cdecl,
      importc: "avcodec_close".}
else:
  static :
    hint("Declaration of " & "avcodecclose" & " already exists, not redeclaring")
when not declared(avsubtitlefree):
  proc avsubtitlefree*(sub: ptr Avsubtitle_520094290): void {.cdecl,
      importc: "avsubtitle_free".}
else:
  static :
    hint("Declaration of " & "avsubtitlefree" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetbuffer2):
  proc avcodecdefaultgetbuffer2*(s: ptr Avcodeccontext_520094278;
                                 frame: ptr Avframe_520094192; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_buffer2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetbuffer2" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetencodebuffer):
  proc avcodecdefaultgetencodebuffer*(s: ptr Avcodeccontext_520094278;
                                      pkt: ptr Avpacket_520094254; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_encode_buffer".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetencodebuffer" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions):
  proc avcodecaligndimensions*(s: ptr Avcodeccontext_520094278; width: ptr cint;
                               height: ptr cint): void {.cdecl,
      importc: "avcodec_align_dimensions".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions2):
  proc avcodecaligndimensions2*(s: ptr Avcodeccontext_520094278;
                                width: ptr cint; height: ptr cint;
                                linesizealign: array[8'i64, cint]): void {.
      cdecl, importc: "avcodec_align_dimensions2".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions2" &
        " already exists, not redeclaring")
when not declared(avcodecenumtochromapos):
  proc avcodecenumtochromapos*(xpos: ptr cint; ypos: ptr cint;
                               pos: enumavchromalocation_520094146): cint {.
      cdecl, importc: "avcodec_enum_to_chroma_pos".}
else:
  static :
    hint("Declaration of " & "avcodecenumtochromapos" &
        " already exists, not redeclaring")
when not declared(avcodecchromapostoenum):
  proc avcodecchromapostoenum*(xpos: cint; ypos: cint): enumavchromalocation_520094146 {.
      cdecl, importc: "avcodec_chroma_pos_to_enum".}
else:
  static :
    hint("Declaration of " & "avcodecchromapostoenum" &
        " already exists, not redeclaring")
when not declared(avcodecdecodesubtitle2):
  proc avcodecdecodesubtitle2*(avctx: ptr Avcodeccontext_520094278;
                               sub: ptr Avsubtitle_520094290;
                               gotsubptr: ptr cint; avpkt: ptr Avpacket_520094254): cint {.
      cdecl, importc: "avcodec_decode_subtitle2".}
else:
  static :
    hint("Declaration of " & "avcodecdecodesubtitle2" &
        " already exists, not redeclaring")
when not declared(avcodecsendpacket):
  proc avcodecsendpacket*(avctx: ptr Avcodeccontext_520094278;
                          avpkt: ptr Avpacket_520094254): cint {.cdecl,
      importc: "avcodec_send_packet".}
else:
  static :
    hint("Declaration of " & "avcodecsendpacket" &
        " already exists, not redeclaring")
when not declared(avcodecreceiveframe):
  proc avcodecreceiveframe*(avctx: ptr Avcodeccontext_520094278;
                            frame: ptr Avframe_520094192): cint {.cdecl,
      importc: "avcodec_receive_frame".}
else:
  static :
    hint("Declaration of " & "avcodecreceiveframe" &
        " already exists, not redeclaring")
when not declared(avcodecsendframe):
  proc avcodecsendframe*(avctx: ptr Avcodeccontext_520094278; frame: ptr Avframe_520094192): cint {.
      cdecl, importc: "avcodec_send_frame".}
else:
  static :
    hint("Declaration of " & "avcodecsendframe" &
        " already exists, not redeclaring")
when not declared(avcodecreceivepacket):
  proc avcodecreceivepacket*(avctx: ptr Avcodeccontext_520094278;
                             avpkt: ptr Avpacket_520094254): cint {.cdecl,
      importc: "avcodec_receive_packet".}
else:
  static :
    hint("Declaration of " & "avcodecreceivepacket" &
        " already exists, not redeclaring")
when not declared(avcodecgethwframesparameters):
  proc avcodecgethwframesparameters*(avctx: ptr Avcodeccontext_520094278;
                                     deviceref: ptr Avbufferref_520094174;
                                     hwpixfmt: enumavpixelformat_520094129;
                                     outframesref: ptr ptr Avbufferref_520094174): cint {.
      cdecl, importc: "avcodec_get_hw_frames_parameters".}
else:
  static :
    hint("Declaration of " & "avcodecgethwframesparameters" &
        " already exists, not redeclaring")
when not declared(avparseriterate):
  proc avparseriterate*(opaque: ptr pointer): ptr Avcodecparser_520094300 {.
      cdecl, importc: "av_parser_iterate".}
else:
  static :
    hint("Declaration of " & "avparseriterate" &
        " already exists, not redeclaring")
when not declared(avparserinit):
  proc avparserinit*(codecid: cint): ptr Avcodecparsercontext_520094298 {.cdecl,
      importc: "av_parser_init".}
else:
  static :
    hint("Declaration of " & "avparserinit" & " already exists, not redeclaring")
when not declared(avparserparse2):
  proc avparserparse2*(s: ptr Avcodecparsercontext_520094298;
                       avctx: ptr Avcodeccontext_520094278;
                       poutbuf: ptr ptr uint8; poutbufsize: ptr cint;
                       buf: ptr uint8; bufsize: cint; pts: int64; dts: int64;
                       pos: int64): cint {.cdecl, importc: "av_parser_parse2".}
else:
  static :
    hint("Declaration of " & "avparserparse2" &
        " already exists, not redeclaring")
when not declared(avparserclose):
  proc avparserclose*(s: ptr Avcodecparsercontext_520094298): void {.cdecl,
      importc: "av_parser_close".}
else:
  static :
    hint("Declaration of " & "avparserclose" &
        " already exists, not redeclaring")
when not declared(avcodecencodesubtitle):
  proc avcodecencodesubtitle*(avctx: ptr Avcodeccontext_520094278;
                              buf: ptr uint8; bufsize: cint; sub: ptr Avsubtitle_520094290): cint {.
      cdecl, importc: "avcodec_encode_subtitle".}
else:
  static :
    hint("Declaration of " & "avcodecencodesubtitle" &
        " already exists, not redeclaring")
when not declared(avcodecpixfmttocodectag):
  proc avcodecpixfmttocodectag*(pixfmt: enumavpixelformat_520094129): cuint {.
      cdecl, importc: "avcodec_pix_fmt_to_codec_tag".}
else:
  static :
    hint("Declaration of " & "avcodecpixfmttocodectag" &
        " already exists, not redeclaring")
when not declared(avcodecfindbestpixfmtoflist):
  proc avcodecfindbestpixfmtoflist*(pixfmtlist: ptr enumavpixelformat_520094129;
                                    srcpixfmt: enumavpixelformat_520094129;
                                    hasalpha: cint; lossptr: ptr cint): enumavpixelformat_520094129 {.
      cdecl, importc: "avcodec_find_best_pix_fmt_of_list".}
else:
  static :
    hint("Declaration of " & "avcodecfindbestpixfmtoflist" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetformat):
  proc avcodecdefaultgetformat*(s: ptr structavcodeccontext_520094274;
                                fmt: ptr enumavpixelformat_520094129): enumavpixelformat_520094129 {.
      cdecl, importc: "avcodec_default_get_format".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetformat" &
        " already exists, not redeclaring")
when not declared(avcodecstring):
  proc avcodecstring*(buf: cstring; bufsize: cint; enc: ptr Avcodeccontext_520094278;
                      encode: cint): void {.cdecl, importc: "avcodec_string".}
else:
  static :
    hint("Declaration of " & "avcodecstring" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute):
  proc avcodecdefaultexecute*(c: ptr Avcodeccontext_520094278; funcarg: proc (
      a0: ptr Avcodeccontext_520094278; a1: pointer): cint {.cdecl.};
                              arg: pointer; ret: ptr cint; count: cint;
                              size: cint): cint {.cdecl,
      importc: "avcodec_default_execute".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute2):
  proc avcodecdefaultexecute2*(c: ptr Avcodeccontext_520094278; funcarg: proc (
      a0: ptr Avcodeccontext_520094278; a1: pointer; a2: cint; a3: cint): cint {.
      cdecl.}; arg: pointer; ret: ptr cint; count: cint): cint {.cdecl,
      importc: "avcodec_default_execute2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute2" &
        " already exists, not redeclaring")
when not declared(avcodecfillaudioframe):
  proc avcodecfillaudioframe*(frame: ptr Avframe_520094192; nbchannels: cint;
                              samplefmt: enumavsampleformat_520094093;
                              buf: ptr uint8; bufsize: cint; align: cint): cint {.
      cdecl, importc: "avcodec_fill_audio_frame".}
else:
  static :
    hint("Declaration of " & "avcodecfillaudioframe" &
        " already exists, not redeclaring")
when not declared(avcodecflushbuffers):
  proc avcodecflushbuffers*(avctx: ptr Avcodeccontext_520094278): void {.cdecl,
      importc: "avcodec_flush_buffers".}
else:
  static :
    hint("Declaration of " & "avcodecflushbuffers" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration):
  proc avgetaudioframeduration*(avctx: ptr Avcodeccontext_520094278;
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
  proc avcodecisopen*(s: ptr Avcodeccontext_520094278): cint {.cdecl,
      importc: "avcodec_is_open".}
else:
  static :
    hint("Declaration of " & "avcodecisopen" &
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
  proc avioopendir*(s: ptr ptr Aviodircontext_520094314; url: cstring;
                    options: ptr ptr Avdictionary_520094113): cint {.cdecl,
      importc: "avio_open_dir".}
else:
  static :
    hint("Declaration of " & "avioopendir" & " already exists, not redeclaring")
when not declared(avioreaddir):
  proc avioreaddir*(s: ptr Aviodircontext_520094314; next: ptr ptr Aviodirentry_520094310): cint {.
      cdecl, importc: "avio_read_dir".}
else:
  static :
    hint("Declaration of " & "avioreaddir" & " already exists, not redeclaring")
when not declared(avioclosedir):
  proc avioclosedir*(s: ptr ptr Aviodircontext_520094314): cint {.cdecl,
      importc: "avio_close_dir".}
else:
  static :
    hint("Declaration of " & "avioclosedir" & " already exists, not redeclaring")
when not declared(aviofreedirectoryentry):
  proc aviofreedirectoryentry*(entry: ptr ptr Aviodirentry_520094310): void {.
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
      a1: int64; a2: cint): int64 {.cdecl.}): ptr Aviocontext_520094320 {.cdecl,
      importc: "avio_alloc_context".}
else:
  static :
    hint("Declaration of " & "avioalloccontext" &
        " already exists, not redeclaring")
when not declared(aviocontextfree):
  proc aviocontextfree*(s: ptr ptr Aviocontext_520094320): void {.cdecl,
      importc: "avio_context_free".}
else:
  static :
    hint("Declaration of " & "aviocontextfree" &
        " already exists, not redeclaring")
when not declared(aviow8):
  proc aviow8*(s: ptr Aviocontext_520094320; b: cint): void {.cdecl,
      importc: "avio_w8".}
else:
  static :
    hint("Declaration of " & "aviow8" & " already exists, not redeclaring")
when not declared(aviowrite):
  proc aviowrite*(s: ptr Aviocontext_520094320; buf: ptr uint8; size: cint): void {.
      cdecl, importc: "avio_write".}
else:
  static :
    hint("Declaration of " & "aviowrite" & " already exists, not redeclaring")
when not declared(aviowl64):
  proc aviowl64*(s: ptr Aviocontext_520094320; val: uint64): void {.cdecl,
      importc: "avio_wl64".}
else:
  static :
    hint("Declaration of " & "aviowl64" & " already exists, not redeclaring")
when not declared(aviowb64):
  proc aviowb64*(s: ptr Aviocontext_520094320; val: uint64): void {.cdecl,
      importc: "avio_wb64".}
else:
  static :
    hint("Declaration of " & "aviowb64" & " already exists, not redeclaring")
when not declared(aviowl32):
  proc aviowl32*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wl32".}
else:
  static :
    hint("Declaration of " & "aviowl32" & " already exists, not redeclaring")
when not declared(aviowb32):
  proc aviowb32*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wb32".}
else:
  static :
    hint("Declaration of " & "aviowb32" & " already exists, not redeclaring")
when not declared(aviowl24):
  proc aviowl24*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wl24".}
else:
  static :
    hint("Declaration of " & "aviowl24" & " already exists, not redeclaring")
when not declared(aviowb24):
  proc aviowb24*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wb24".}
else:
  static :
    hint("Declaration of " & "aviowb24" & " already exists, not redeclaring")
when not declared(aviowl16):
  proc aviowl16*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wl16".}
else:
  static :
    hint("Declaration of " & "aviowl16" & " already exists, not redeclaring")
when not declared(aviowb16):
  proc aviowb16*(s: ptr Aviocontext_520094320; val: cuint): void {.cdecl,
      importc: "avio_wb16".}
else:
  static :
    hint("Declaration of " & "aviowb16" & " already exists, not redeclaring")
when not declared(avioputstr):
  proc avioputstr*(s: ptr Aviocontext_520094320; str: cstring): cint {.cdecl,
      importc: "avio_put_str".}
else:
  static :
    hint("Declaration of " & "avioputstr" & " already exists, not redeclaring")
when not declared(avioputstr16le):
  proc avioputstr16le*(s: ptr Aviocontext_520094320; str: cstring): cint {.
      cdecl, importc: "avio_put_str16le".}
else:
  static :
    hint("Declaration of " & "avioputstr16le" &
        " already exists, not redeclaring")
when not declared(avioputstr16be):
  proc avioputstr16be*(s: ptr Aviocontext_520094320; str: cstring): cint {.
      cdecl, importc: "avio_put_str16be".}
else:
  static :
    hint("Declaration of " & "avioputstr16be" &
        " already exists, not redeclaring")
when not declared(aviowritemarker):
  proc aviowritemarker*(s: ptr Aviocontext_520094320; time: int64;
                        typearg: enumaviodatamarkertype_520094316): void {.
      cdecl, importc: "avio_write_marker".}
else:
  static :
    hint("Declaration of " & "aviowritemarker" &
        " already exists, not redeclaring")
when not declared(avioseek):
  proc avioseek*(s: ptr Aviocontext_520094320; offset: int64; whence: cint): int64 {.
      cdecl, importc: "avio_seek".}
else:
  static :
    hint("Declaration of " & "avioseek" & " already exists, not redeclaring")
when not declared(avioskip):
  proc avioskip*(s: ptr Aviocontext_520094320; offset: int64): int64 {.cdecl,
      importc: "avio_skip".}
else:
  static :
    hint("Declaration of " & "avioskip" & " already exists, not redeclaring")
when not declared(aviosize):
  proc aviosize*(s: ptr Aviocontext_520094320): int64 {.cdecl,
      importc: "avio_size".}
else:
  static :
    hint("Declaration of " & "aviosize" & " already exists, not redeclaring")
when not declared(aviofeof):
  proc aviofeof*(s: ptr Aviocontext_520094320): cint {.cdecl,
      importc: "avio_feof".}
else:
  static :
    hint("Declaration of " & "aviofeof" & " already exists, not redeclaring")
when not declared(aviovprintf):
  proc aviovprintf*(s: ptr Aviocontext_520094320; fmt: cstring): cint {.cdecl,
      varargs, importc: "avio_vprintf".}
else:
  static :
    hint("Declaration of " & "aviovprintf" & " already exists, not redeclaring")
when not declared(avioprintstringarray):
  proc avioprintstringarray*(s: ptr Aviocontext_520094320;
                             strings: ptr UncheckedArray[cstring]): void {.
      cdecl, importc: "avio_print_string_array".}
else:
  static :
    hint("Declaration of " & "avioprintstringarray" &
        " already exists, not redeclaring")
when not declared(avioflush):
  proc avioflush*(s: ptr Aviocontext_520094320): void {.cdecl,
      importc: "avio_flush".}
else:
  static :
    hint("Declaration of " & "avioflush" & " already exists, not redeclaring")
when not declared(avioread):
  proc avioread*(s: ptr Aviocontext_520094320; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "avio_read".}
else:
  static :
    hint("Declaration of " & "avioread" & " already exists, not redeclaring")
when not declared(avioreadpartial):
  proc avioreadpartial*(s: ptr Aviocontext_520094320; buf: ptr uint8; size: cint): cint {.
      cdecl, importc: "avio_read_partial".}
else:
  static :
    hint("Declaration of " & "avioreadpartial" &
        " already exists, not redeclaring")
when not declared(avior8):
  proc avior8*(s: ptr Aviocontext_520094320): cint {.cdecl, importc: "avio_r8".}
else:
  static :
    hint("Declaration of " & "avior8" & " already exists, not redeclaring")
when not declared(aviorl16):
  proc aviorl16*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rl16".}
else:
  static :
    hint("Declaration of " & "aviorl16" & " already exists, not redeclaring")
when not declared(aviorl24):
  proc aviorl24*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rl24".}
else:
  static :
    hint("Declaration of " & "aviorl24" & " already exists, not redeclaring")
when not declared(aviorl32):
  proc aviorl32*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rl32".}
else:
  static :
    hint("Declaration of " & "aviorl32" & " already exists, not redeclaring")
when not declared(aviorl64):
  proc aviorl64*(s: ptr Aviocontext_520094320): uint64 {.cdecl,
      importc: "avio_rl64".}
else:
  static :
    hint("Declaration of " & "aviorl64" & " already exists, not redeclaring")
when not declared(aviorb16):
  proc aviorb16*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rb16".}
else:
  static :
    hint("Declaration of " & "aviorb16" & " already exists, not redeclaring")
when not declared(aviorb24):
  proc aviorb24*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rb24".}
else:
  static :
    hint("Declaration of " & "aviorb24" & " already exists, not redeclaring")
when not declared(aviorb32):
  proc aviorb32*(s: ptr Aviocontext_520094320): cuint {.cdecl,
      importc: "avio_rb32".}
else:
  static :
    hint("Declaration of " & "aviorb32" & " already exists, not redeclaring")
when not declared(aviorb64):
  proc aviorb64*(s: ptr Aviocontext_520094320): uint64 {.cdecl,
      importc: "avio_rb64".}
else:
  static :
    hint("Declaration of " & "aviorb64" & " already exists, not redeclaring")
when not declared(aviogetstr):
  proc aviogetstr*(pb: ptr Aviocontext_520094320; maxlen: cint; buf: cstring;
                   buflen: cint): cint {.cdecl, importc: "avio_get_str".}
else:
  static :
    hint("Declaration of " & "aviogetstr" & " already exists, not redeclaring")
when not declared(aviogetstr16le):
  proc aviogetstr16le*(pb: ptr Aviocontext_520094320; maxlen: cint;
                       buf: cstring; buflen: cint): cint {.cdecl,
      importc: "avio_get_str16le".}
else:
  static :
    hint("Declaration of " & "aviogetstr16le" &
        " already exists, not redeclaring")
when not declared(aviogetstr16be):
  proc aviogetstr16be*(pb: ptr Aviocontext_520094320; maxlen: cint;
                       buf: cstring; buflen: cint): cint {.cdecl,
      importc: "avio_get_str16be".}
else:
  static :
    hint("Declaration of " & "aviogetstr16be" &
        " already exists, not redeclaring")
when not declared(avioopen):
  proc avioopen*(s: ptr ptr Aviocontext_520094320; url: cstring; flags: cint): cint {.
      cdecl, importc: "avio_open".}
else:
  static :
    hint("Declaration of " & "avioopen" & " already exists, not redeclaring")
when not declared(avioopen2):
  proc avioopen2*(s: ptr ptr Aviocontext_520094320; url: cstring; flags: cint;
                  intcb: ptr Aviointerruptcb_520094304;
                  options: ptr ptr Avdictionary_520094113): cint {.cdecl,
      importc: "avio_open2".}
else:
  static :
    hint("Declaration of " & "avioopen2" & " already exists, not redeclaring")
when not declared(avioclose):
  proc avioclose*(s: ptr Aviocontext_520094320): cint {.cdecl,
      importc: "avio_close".}
else:
  static :
    hint("Declaration of " & "avioclose" & " already exists, not redeclaring")
when not declared(avioclosep):
  proc avioclosep*(s: ptr ptr Aviocontext_520094320): cint {.cdecl,
      importc: "avio_closep".}
else:
  static :
    hint("Declaration of " & "avioclosep" & " already exists, not redeclaring")
when not declared(avioopendynbuf):
  proc avioopendynbuf*(s: ptr ptr Aviocontext_520094320): cint {.cdecl,
      importc: "avio_open_dyn_buf".}
else:
  static :
    hint("Declaration of " & "avioopendynbuf" &
        " already exists, not redeclaring")
when not declared(aviogetdynbuf):
  proc aviogetdynbuf*(s: ptr Aviocontext_520094320; pbuffer: ptr ptr uint8): cint {.
      cdecl, importc: "avio_get_dyn_buf".}
else:
  static :
    hint("Declaration of " & "aviogetdynbuf" &
        " already exists, not redeclaring")
when not declared(avioclosedynbuf):
  proc avioclosedynbuf*(s: ptr Aviocontext_520094320; pbuffer: ptr ptr uint8): cint {.
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
  proc avioprotocolgetclass*(name: cstring): ptr Avclass_520094105 {.cdecl,
      importc: "avio_protocol_get_class".}
else:
  static :
    hint("Declaration of " & "avioprotocolgetclass" &
        " already exists, not redeclaring")
when not declared(aviopause):
  proc aviopause*(h: ptr Aviocontext_520094320; pause: cint): cint {.cdecl,
      importc: "avio_pause".}
else:
  static :
    hint("Declaration of " & "aviopause" & " already exists, not redeclaring")
when not declared(avioseektime):
  proc avioseektime*(h: ptr Aviocontext_520094320; streamindex: cint;
                     timestamp: int64; flags: cint): int64 {.cdecl,
      importc: "avio_seek_time".}
else:
  static :
    hint("Declaration of " & "avioseektime" & " already exists, not redeclaring")
when not declared(avioreadtobprint):
  proc avioreadtobprint*(h: ptr Aviocontext_520094320; pb: ptr structavbprint;
                         maxsize: csize_t): cint {.cdecl,
      importc: "avio_read_to_bprint".}
else:
  static :
    hint("Declaration of " & "avioreadtobprint" &
        " already exists, not redeclaring")
when not declared(avioaccept):
  proc avioaccept*(s: ptr Aviocontext_520094320; c: ptr ptr Aviocontext_520094320): cint {.
      cdecl, importc: "avio_accept".}
else:
  static :
    hint("Declaration of " & "avioaccept" & " already exists, not redeclaring")
when not declared(aviohandshake):
  proc aviohandshake*(c: ptr Aviocontext_520094320): cint {.cdecl,
      importc: "avio_handshake".}
else:
  static :
    hint("Declaration of " & "aviohandshake" &
        " already exists, not redeclaring")
when not declared(avgetpacket):
  proc avgetpacket*(s: ptr Aviocontext_520094320; pkt: ptr Avpacket_520094254;
                    size: cint): cint {.cdecl, importc: "av_get_packet".}
else:
  static :
    hint("Declaration of " & "avgetpacket" & " already exists, not redeclaring")
when not declared(avappendpacket):
  proc avappendpacket*(s: ptr Aviocontext_520094320; pkt: ptr Avpacket_520094254;
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
  proc avstreamgetparser*(s: ptr Avstream_520094344): ptr structavcodecparsercontext_520094294 {.
      cdecl, importc: "av_stream_get_parser".}
else:
  static :
    hint("Declaration of " & "avstreamgetparser" &
        " already exists, not redeclaring")
when not declared(avstreamgetendpts):
  proc avstreamgetendpts*(st: ptr Avstream_520094344): int64 {.cdecl,
      importc: "av_stream_get_end_pts".}
else:
  static :
    hint("Declaration of " & "avstreamgetendpts" &
        " already exists, not redeclaring")
when not declared(avformatinjectglobalsidedata):
  proc avformatinjectglobalsidedata*(s: ptr Avformatcontext_520094360): void {.
      cdecl, importc: "av_format_inject_global_side_data".}
else:
  static :
    hint("Declaration of " & "avformatinjectglobalsidedata" &
        " already exists, not redeclaring")
when not declared(avfmtctxgetdurationestimationmethod):
  proc avfmtctxgetdurationestimationmethod*(ctx: ptr Avformatcontext_520094360): enumavdurationestimationmethod_520094358 {.
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
  proc avmuxeriterate*(opaque: ptr pointer): ptr Avoutputformat_520094328 {.
      cdecl, importc: "av_muxer_iterate".}
else:
  static :
    hint("Declaration of " & "avmuxeriterate" &
        " already exists, not redeclaring")
when not declared(avdemuxeriterate):
  proc avdemuxeriterate*(opaque: ptr pointer): ptr Avinputformat_520094334 {.
      cdecl, importc: "av_demuxer_iterate".}
else:
  static :
    hint("Declaration of " & "avdemuxeriterate" &
        " already exists, not redeclaring")
when not declared(avformatalloccontext):
  proc avformatalloccontext*(): ptr Avformatcontext_520094360 {.cdecl,
      importc: "avformat_alloc_context".}
else:
  static :
    hint("Declaration of " & "avformatalloccontext" &
        " already exists, not redeclaring")
when not declared(avformatfreecontext):
  proc avformatfreecontext*(s: ptr Avformatcontext_520094360): void {.cdecl,
      importc: "avformat_free_context".}
else:
  static :
    hint("Declaration of " & "avformatfreecontext" &
        " already exists, not redeclaring")
when not declared(avformatgetclass):
  proc avformatgetclass*(): ptr Avclass_520094105 {.cdecl,
      importc: "avformat_get_class".}
else:
  static :
    hint("Declaration of " & "avformatgetclass" &
        " already exists, not redeclaring")
when not declared(avstreamgetclass):
  proc avstreamgetclass*(): ptr Avclass_520094105 {.cdecl,
      importc: "av_stream_get_class".}
else:
  static :
    hint("Declaration of " & "avstreamgetclass" &
        " already exists, not redeclaring")
when not declared(avformatnewstream):
  proc avformatnewstream*(s: ptr Avformatcontext_520094360; c: ptr structavcodec_520094220): ptr Avstream_520094344 {.
      cdecl, importc: "avformat_new_stream".}
else:
  static :
    hint("Declaration of " & "avformatnewstream" &
        " already exists, not redeclaring")
when not declared(avstreamaddsidedata):
  proc avstreamaddsidedata*(st: ptr Avstream_520094344;
                            typearg: enumavpacketsidedatatype_520094246;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_stream_add_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamaddsidedata" &
        " already exists, not redeclaring")
when not declared(avstreamnewsidedata):
  proc avstreamnewsidedata*(stream: ptr Avstream_520094344;
                            typearg: enumavpacketsidedatatype_520094246;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_stream_new_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamnewsidedata" &
        " already exists, not redeclaring")
when not declared(avstreamgetsidedata):
  proc avstreamgetsidedata*(stream: ptr Avstream_520094344;
                            typearg: enumavpacketsidedatatype_520094246;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_stream_get_side_data".}
else:
  static :
    hint("Declaration of " & "avstreamgetsidedata" &
        " already exists, not redeclaring")
when not declared(avnewprogram):
  proc avnewprogram*(s: ptr Avformatcontext_520094360; id: cint): ptr Avprogram_520094348 {.
      cdecl, importc: "av_new_program".}
else:
  static :
    hint("Declaration of " & "avnewprogram" & " already exists, not redeclaring")
when not declared(avformatallocoutputcontext2):
  proc avformatallocoutputcontext2*(ctx: ptr ptr Avformatcontext_520094360;
                                    oformat: ptr Avoutputformat_520094328;
                                    formatname: cstring; filename: cstring): cint {.
      cdecl, importc: "avformat_alloc_output_context2".}
else:
  static :
    hint("Declaration of " & "avformatallocoutputcontext2" &
        " already exists, not redeclaring")
when not declared(avfindinputformat):
  proc avfindinputformat*(shortname: cstring): ptr Avinputformat_520094334 {.
      cdecl, importc: "av_find_input_format".}
else:
  static :
    hint("Declaration of " & "avfindinputformat" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat):
  proc avprobeinputformat*(pd: ptr Avprobedata_520094324; isopened: cint): ptr Avinputformat_520094334 {.
      cdecl, importc: "av_probe_input_format".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat2):
  proc avprobeinputformat2*(pd: ptr Avprobedata_520094324; isopened: cint;
                            scoremax: ptr cint): ptr Avinputformat_520094334 {.
      cdecl, importc: "av_probe_input_format2".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat2" &
        " already exists, not redeclaring")
when not declared(avprobeinputformat3):
  proc avprobeinputformat3*(pd: ptr Avprobedata_520094324; isopened: cint;
                            scoreret: ptr cint): ptr Avinputformat_520094334 {.
      cdecl, importc: "av_probe_input_format3".}
else:
  static :
    hint("Declaration of " & "avprobeinputformat3" &
        " already exists, not redeclaring")
when not declared(avprobeinputbuffer2):
  proc avprobeinputbuffer2*(pb: ptr Aviocontext_520094320;
                            fmt: ptr ptr Avinputformat_520094334; url: cstring;
                            logctx: pointer; offset: cuint; maxprobesize: cuint): cint {.
      cdecl, importc: "av_probe_input_buffer2".}
else:
  static :
    hint("Declaration of " & "avprobeinputbuffer2" &
        " already exists, not redeclaring")
when not declared(avprobeinputbuffer):
  proc avprobeinputbuffer*(pb: ptr Aviocontext_520094320;
                           fmt: ptr ptr Avinputformat_520094334; url: cstring;
                           logctx: pointer; offset: cuint; maxprobesize: cuint): cint {.
      cdecl, importc: "av_probe_input_buffer".}
else:
  static :
    hint("Declaration of " & "avprobeinputbuffer" &
        " already exists, not redeclaring")
when not declared(avformatopeninput):
  proc avformatopeninput*(ps: ptr ptr Avformatcontext_520094360; url: cstring;
                          fmt: ptr Avinputformat_520094334;
                          options: ptr ptr Avdictionary_520094113): cint {.
      cdecl, importc: "avformat_open_input".}
else:
  static :
    hint("Declaration of " & "avformatopeninput" &
        " already exists, not redeclaring")
when not declared(avformatfindstreaminfo):
  proc avformatfindstreaminfo*(ic: ptr Avformatcontext_520094360;
                               options: ptr ptr Avdictionary_520094113): cint {.
      cdecl, importc: "avformat_find_stream_info".}
else:
  static :
    hint("Declaration of " & "avformatfindstreaminfo" &
        " already exists, not redeclaring")
when not declared(avfindprogramfromstream):
  proc avfindprogramfromstream*(ic: ptr Avformatcontext_520094360;
                                last: ptr Avprogram_520094348; s: cint): ptr Avprogram_520094348 {.
      cdecl, importc: "av_find_program_from_stream".}
else:
  static :
    hint("Declaration of " & "avfindprogramfromstream" &
        " already exists, not redeclaring")
when not declared(avprogramaddstreamindex):
  proc avprogramaddstreamindex*(ac: ptr Avformatcontext_520094360; progid: cint;
                                idx: cuint): void {.cdecl,
      importc: "av_program_add_stream_index".}
else:
  static :
    hint("Declaration of " & "avprogramaddstreamindex" &
        " already exists, not redeclaring")
when not declared(avfindbeststream):
  proc avfindbeststream*(ic: ptr Avformatcontext_520094360;
                         typearg: enumavmediatype_520094119;
                         wantedstreamnb: cint; relatedstream: cint;
                         decoderret: ptr ptr structavcodec_520094220;
                         flags: cint): cint {.cdecl,
      importc: "av_find_best_stream".}
else:
  static :
    hint("Declaration of " & "avfindbeststream" &
        " already exists, not redeclaring")
when not declared(avreadframe):
  proc avreadframe*(s: ptr Avformatcontext_520094360; pkt: ptr Avpacket_520094254): cint {.
      cdecl, importc: "av_read_frame".}
else:
  static :
    hint("Declaration of " & "avreadframe" & " already exists, not redeclaring")
when not declared(avseekframe):
  proc avseekframe*(s: ptr Avformatcontext_520094360; streamindex: cint;
                    timestamp: int64; flags: cint): cint {.cdecl,
      importc: "av_seek_frame".}
else:
  static :
    hint("Declaration of " & "avseekframe" & " already exists, not redeclaring")
when not declared(avformatseekfile):
  proc avformatseekfile*(s: ptr Avformatcontext_520094360; streamindex: cint;
                         mints: int64; ts: int64; maxts: int64; flags: cint): cint {.
      cdecl, importc: "avformat_seek_file".}
else:
  static :
    hint("Declaration of " & "avformatseekfile" &
        " already exists, not redeclaring")
when not declared(avformatflush):
  proc avformatflush*(s: ptr Avformatcontext_520094360): cint {.cdecl,
      importc: "avformat_flush".}
else:
  static :
    hint("Declaration of " & "avformatflush" &
        " already exists, not redeclaring")
when not declared(avreadplay):
  proc avreadplay*(s: ptr Avformatcontext_520094360): cint {.cdecl,
      importc: "av_read_play".}
else:
  static :
    hint("Declaration of " & "avreadplay" & " already exists, not redeclaring")
when not declared(avreadpause):
  proc avreadpause*(s: ptr Avformatcontext_520094360): cint {.cdecl,
      importc: "av_read_pause".}
else:
  static :
    hint("Declaration of " & "avreadpause" & " already exists, not redeclaring")
when not declared(avformatcloseinput):
  proc avformatcloseinput*(s: ptr ptr Avformatcontext_520094360): void {.cdecl,
      importc: "avformat_close_input".}
else:
  static :
    hint("Declaration of " & "avformatcloseinput" &
        " already exists, not redeclaring")
when not declared(avformatwriteheader):
  proc avformatwriteheader*(s: ptr Avformatcontext_520094360;
                            options: ptr ptr Avdictionary_520094113): cint {.
      cdecl, importc: "avformat_write_header".}
else:
  static :
    hint("Declaration of " & "avformatwriteheader" &
        " already exists, not redeclaring")
when not declared(avformatinitoutput):
  proc avformatinitoutput*(s: ptr Avformatcontext_520094360;
                           options: ptr ptr Avdictionary_520094113): cint {.
      cdecl, importc: "avformat_init_output".}
else:
  static :
    hint("Declaration of " & "avformatinitoutput" &
        " already exists, not redeclaring")
when not declared(avwriteframe):
  proc avwriteframe*(s: ptr Avformatcontext_520094360; pkt: ptr Avpacket_520094254): cint {.
      cdecl, importc: "av_write_frame".}
else:
  static :
    hint("Declaration of " & "avwriteframe" & " already exists, not redeclaring")
when not declared(avinterleavedwriteframe):
  proc avinterleavedwriteframe*(s: ptr Avformatcontext_520094360;
                                pkt: ptr Avpacket_520094254): cint {.cdecl,
      importc: "av_interleaved_write_frame".}
else:
  static :
    hint("Declaration of " & "avinterleavedwriteframe" &
        " already exists, not redeclaring")
when not declared(avwriteuncodedframe):
  proc avwriteuncodedframe*(s: ptr Avformatcontext_520094360; streamindex: cint;
                            frame: ptr structavframe_520094190): cint {.cdecl,
      importc: "av_write_uncoded_frame".}
else:
  static :
    hint("Declaration of " & "avwriteuncodedframe" &
        " already exists, not redeclaring")
when not declared(avinterleavedwriteuncodedframe):
  proc avinterleavedwriteuncodedframe*(s: ptr Avformatcontext_520094360;
                                       streamindex: cint;
                                       frame: ptr structavframe_520094190): cint {.
      cdecl, importc: "av_interleaved_write_uncoded_frame".}
else:
  static :
    hint("Declaration of " & "avinterleavedwriteuncodedframe" &
        " already exists, not redeclaring")
when not declared(avwriteuncodedframequery):
  proc avwriteuncodedframequery*(s: ptr Avformatcontext_520094360;
                                 streamindex: cint): cint {.cdecl,
      importc: "av_write_uncoded_frame_query".}
else:
  static :
    hint("Declaration of " & "avwriteuncodedframequery" &
        " already exists, not redeclaring")
when not declared(avwritetrailer):
  proc avwritetrailer*(s: ptr Avformatcontext_520094360): cint {.cdecl,
      importc: "av_write_trailer".}
else:
  static :
    hint("Declaration of " & "avwritetrailer" &
        " already exists, not redeclaring")
when not declared(avguessformat):
  proc avguessformat*(shortname: cstring; filename: cstring; mimetype: cstring): ptr Avoutputformat_520094328 {.
      cdecl, importc: "av_guess_format".}
else:
  static :
    hint("Declaration of " & "avguessformat" &
        " already exists, not redeclaring")
when not declared(avguesscodec):
  proc avguesscodec*(fmt: ptr Avoutputformat_520094328; shortname: cstring;
                     filename: cstring; mimetype: cstring;
                     typearg: enumavmediatype_520094119): enumavcodecid_520094214 {.
      cdecl, importc: "av_guess_codec".}
else:
  static :
    hint("Declaration of " & "avguesscodec" & " already exists, not redeclaring")
when not declared(avgetoutputtimestamp):
  proc avgetoutputtimestamp*(s: ptr structavformatcontext_520094332;
                             stream: cint; dts: ptr int64; wall: ptr int64): cint {.
      cdecl, importc: "av_get_output_timestamp".}
else:
  static :
    hint("Declaration of " & "avgetoutputtimestamp" &
        " already exists, not redeclaring")
when not declared(avhexdump):
  proc avhexdump*(f: ptr File_520094148; buf: ptr uint8; size: cint): void {.
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
  proc avpktdump2*(f: ptr File_520094148; pkt: ptr Avpacket_520094254;
                   dumppayload: cint; st: ptr Avstream_520094344): void {.cdecl,
      importc: "av_pkt_dump2".}
else:
  static :
    hint("Declaration of " & "avpktdump2" & " already exists, not redeclaring")
when not declared(avpktdumplog2):
  proc avpktdumplog2*(avcl: pointer; level: cint; pkt: ptr Avpacket_520094254;
                      dumppayload: cint; st: ptr Avstream_520094344): void {.
      cdecl, importc: "av_pkt_dump_log2".}
else:
  static :
    hint("Declaration of " & "avpktdumplog2" &
        " already exists, not redeclaring")
when not declared(avcodecgetid):
  proc avcodecgetid*(tags: ptr ptr structavcodectag; tag: cuint): enumavcodecid_520094214 {.
      cdecl, importc: "av_codec_get_id".}
else:
  static :
    hint("Declaration of " & "avcodecgetid" & " already exists, not redeclaring")
when not declared(avcodecgettag):
  proc avcodecgettag*(tags: ptr ptr structavcodectag; id: enumavcodecid_520094214): cuint {.
      cdecl, importc: "av_codec_get_tag".}
else:
  static :
    hint("Declaration of " & "avcodecgettag" &
        " already exists, not redeclaring")
when not declared(avcodecgettag2):
  proc avcodecgettag2*(tags: ptr ptr structavcodectag; id: enumavcodecid_520094214;
                       tag: ptr cuint): cint {.cdecl,
      importc: "av_codec_get_tag2".}
else:
  static :
    hint("Declaration of " & "avcodecgettag2" &
        " already exists, not redeclaring")
when not declared(avfinddefaultstreamindex):
  proc avfinddefaultstreamindex*(s: ptr Avformatcontext_520094360): cint {.
      cdecl, importc: "av_find_default_stream_index".}
else:
  static :
    hint("Declaration of " & "avfinddefaultstreamindex" &
        " already exists, not redeclaring")
when not declared(avindexsearchtimestamp):
  proc avindexsearchtimestamp*(st: ptr Avstream_520094344; timestamp: int64;
                               flags: cint): cint {.cdecl,
      importc: "av_index_search_timestamp".}
else:
  static :
    hint("Declaration of " & "avindexsearchtimestamp" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentriescount):
  proc avformatindexgetentriescount*(st: ptr Avstream_520094344): cint {.cdecl,
      importc: "avformat_index_get_entries_count".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentriescount" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentry):
  proc avformatindexgetentry*(st: ptr Avstream_520094344; idx: cint): ptr Avindexentry_520094340 {.
      cdecl, importc: "avformat_index_get_entry".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentry" &
        " already exists, not redeclaring")
when not declared(avformatindexgetentryfromtimestamp):
  proc avformatindexgetentryfromtimestamp*(st: ptr Avstream_520094344;
      wantedtimestamp: int64; flags: cint): ptr Avindexentry_520094340 {.cdecl,
      importc: "avformat_index_get_entry_from_timestamp".}
else:
  static :
    hint("Declaration of " & "avformatindexgetentryfromtimestamp" &
        " already exists, not redeclaring")
when not declared(avaddindexentry):
  proc avaddindexentry*(st: ptr Avstream_520094344; pos: int64;
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
  proc avdumpformat*(ic: ptr Avformatcontext_520094360; index: cint;
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
  proc avsdpcreate*(ac: ptr UncheckedArray[ptr Avformatcontext_520094360];
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
  proc avformatquerycodec*(ofmt: ptr Avoutputformat_520094328;
                           codecid: enumavcodecid_520094214; stdcompliance: cint): cint {.
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
  proc avguesssampleaspectratio*(format: ptr Avformatcontext_520094360;
                                 stream: ptr Avstream_520094344;
                                 frame: ptr structavframe_520094190): Avrational_520094117 {.
      cdecl, importc: "av_guess_sample_aspect_ratio".}
else:
  static :
    hint("Declaration of " & "avguesssampleaspectratio" &
        " already exists, not redeclaring")
when not declared(avguessframerate):
  proc avguessframerate*(ctx: ptr Avformatcontext_520094360;
                         stream: ptr Avstream_520094344;
                         frame: ptr structavframe_520094190): Avrational_520094117 {.
      cdecl, importc: "av_guess_frame_rate".}
else:
  static :
    hint("Declaration of " & "avguessframerate" &
        " already exists, not redeclaring")
when not declared(avformatmatchstreamspecifier):
  proc avformatmatchstreamspecifier*(s: ptr Avformatcontext_520094360;
                                     st: ptr Avstream_520094344; spec: cstring): cint {.
      cdecl, importc: "avformat_match_stream_specifier".}
else:
  static :
    hint("Declaration of " & "avformatmatchstreamspecifier" &
        " already exists, not redeclaring")
when not declared(avformatqueueattachedpictures):
  proc avformatqueueattachedpictures*(s: ptr Avformatcontext_520094360): cint {.
      cdecl, importc: "avformat_queue_attached_pictures".}
else:
  static :
    hint("Declaration of " & "avformatqueueattachedpictures" &
        " already exists, not redeclaring")
when not declared(avformattransferinternalstreamtiminginfo):
  proc avformattransferinternalstreamtiminginfo*(ofmt: ptr Avoutputformat_520094328;
      ost: ptr Avstream_520094344; ist: ptr Avstream_520094344;
      copytb: enumavtimebasesource_520094362): cint {.cdecl,
      importc: "avformat_transfer_internal_stream_timing_info".}
else:
  static :
    hint("Declaration of " & "avformattransferinternalstreamtiminginfo" &
        " already exists, not redeclaring")
when not declared(avstreamgetcodectimebase):
  proc avstreamgetcodectimebase*(st: ptr Avstream_520094344): Avrational_520094117 {.
      cdecl, importc: "av_stream_get_codec_timebase".}
else:
  static :
    hint("Declaration of " & "avstreamgetcodectimebase" &
        " already exists, not redeclaring")
when not declared(swscaleversion):
  proc swscaleversion*(): cuint {.cdecl, importc: "swscale_version".}
else:
  static :
    hint("Declaration of " & "swscaleversion" &
        " already exists, not redeclaring")
when not declared(swscaleconfiguration):
  proc swscaleconfiguration*(): cstring {.cdecl,
      importc: "swscale_configuration".}
else:
  static :
    hint("Declaration of " & "swscaleconfiguration" &
        " already exists, not redeclaring")
when not declared(swscalelicense):
  proc swscalelicense*(): cstring {.cdecl, importc: "swscale_license".}
else:
  static :
    hint("Declaration of " & "swscalelicense" &
        " already exists, not redeclaring")
when not declared(swsgetcoefficients):
  proc swsgetcoefficients*(colorspace: cint): ptr cint {.cdecl,
      importc: "sws_getCoefficients".}
else:
  static :
    hint("Declaration of " & "swsgetcoefficients" &
        " already exists, not redeclaring")
when not declared(swsissupportedinput):
  proc swsissupportedinput*(pixfmt: enumavpixelformat_520094129): cint {.cdecl,
      importc: "sws_isSupportedInput".}
else:
  static :
    hint("Declaration of " & "swsissupportedinput" &
        " already exists, not redeclaring")
when not declared(swsissupportedoutput):
  proc swsissupportedoutput*(pixfmt: enumavpixelformat_520094129): cint {.cdecl,
      importc: "sws_isSupportedOutput".}
else:
  static :
    hint("Declaration of " & "swsissupportedoutput" &
        " already exists, not redeclaring")
when not declared(swsissupportedendiannessconversion):
  proc swsissupportedendiannessconversion*(pixfmt: enumavpixelformat_520094129): cint {.
      cdecl, importc: "sws_isSupportedEndiannessConversion".}
else:
  static :
    hint("Declaration of " & "swsissupportedendiannessconversion" &
        " already exists, not redeclaring")
when not declared(swsalloccontext):
  proc swsalloccontext*(): ptr structswscontext {.cdecl,
      importc: "sws_alloc_context".}
else:
  static :
    hint("Declaration of " & "swsalloccontext" &
        " already exists, not redeclaring")
when not declared(swsinitcontext):
  proc swsinitcontext*(swscontext: ptr structswscontext;
                       srcfilter: ptr Swsfilter_520094370;
                       dstfilter: ptr Swsfilter_520094370): cint {.cdecl,
      importc: "sws_init_context".}
else:
  static :
    hint("Declaration of " & "swsinitcontext" &
        " already exists, not redeclaring")
when not declared(swsfreecontext):
  proc swsfreecontext*(swscontext: ptr structswscontext): void {.cdecl,
      importc: "sws_freeContext".}
else:
  static :
    hint("Declaration of " & "swsfreecontext" &
        " already exists, not redeclaring")
when not declared(swsgetcontext):
  proc swsgetcontext*(srcw: cint; srch: cint; srcformat: enumavpixelformat_520094129;
                      dstw: cint; dsth: cint; dstformat: enumavpixelformat_520094129;
                      flags: cint; srcfilter: ptr Swsfilter_520094370;
                      dstfilter: ptr Swsfilter_520094370; param: ptr cdouble): ptr structswscontext {.
      cdecl, importc: "sws_getContext".}
else:
  static :
    hint("Declaration of " & "swsgetcontext" &
        " already exists, not redeclaring")
when not declared(swsscale):
  proc swsscale*(c: ptr structswscontext;
                 srcslice: ptr UncheckedArray[ptr uint8];
                 srcstride: ptr UncheckedArray[cint]; srcslicey: cint;
                 srcsliceh: cint; dst: ptr UncheckedArray[ptr uint8];
                 dststride: ptr UncheckedArray[cint]): cint {.cdecl,
      importc: "sws_scale".}
else:
  static :
    hint("Declaration of " & "swsscale" & " already exists, not redeclaring")
when not declared(swsscaleframe):
  proc swsscaleframe*(c: ptr structswscontext; dst: ptr Avframe_520094192;
                      src: ptr Avframe_520094192): cint {.cdecl,
      importc: "sws_scale_frame".}
else:
  static :
    hint("Declaration of " & "swsscaleframe" &
        " already exists, not redeclaring")
when not declared(swsframestart):
  proc swsframestart*(c: ptr structswscontext; dst: ptr Avframe_520094192;
                      src: ptr Avframe_520094192): cint {.cdecl,
      importc: "sws_frame_start".}
else:
  static :
    hint("Declaration of " & "swsframestart" &
        " already exists, not redeclaring")
when not declared(swsframeend):
  proc swsframeend*(c: ptr structswscontext): void {.cdecl,
      importc: "sws_frame_end".}
else:
  static :
    hint("Declaration of " & "swsframeend" & " already exists, not redeclaring")
when not declared(swssendslice):
  proc swssendslice*(c: ptr structswscontext; slicestart: cuint;
                     sliceheight: cuint): cint {.cdecl,
      importc: "sws_send_slice".}
else:
  static :
    hint("Declaration of " & "swssendslice" & " already exists, not redeclaring")
when not declared(swsreceiveslice):
  proc swsreceiveslice*(c: ptr structswscontext; slicestart: cuint;
                        sliceheight: cuint): cint {.cdecl,
      importc: "sws_receive_slice".}
else:
  static :
    hint("Declaration of " & "swsreceiveslice" &
        " already exists, not redeclaring")
when not declared(swsreceiveslicealignment):
  proc swsreceiveslicealignment*(c: ptr structswscontext): cuint {.cdecl,
      importc: "sws_receive_slice_alignment".}
else:
  static :
    hint("Declaration of " & "swsreceiveslicealignment" &
        " already exists, not redeclaring")
when not declared(swssetcolorspacedetails):
  proc swssetcolorspacedetails*(c: ptr structswscontext;
                                invtable: array[4'i64, cint]; srcrange: cint;
                                table: array[4'i64, cint]; dstrange: cint;
                                brightness: cint; contrast: cint;
                                saturation: cint): cint {.cdecl,
      importc: "sws_setColorspaceDetails".}
else:
  static :
    hint("Declaration of " & "swssetcolorspacedetails" &
        " already exists, not redeclaring")
when not declared(swsgetcolorspacedetails):
  proc swsgetcolorspacedetails*(c: ptr structswscontext; invtable: ptr ptr cint;
                                srcrange: ptr cint; table: ptr ptr cint;
                                dstrange: ptr cint; brightness: ptr cint;
                                contrast: ptr cint; saturation: ptr cint): cint {.
      cdecl, importc: "sws_getColorspaceDetails".}
else:
  static :
    hint("Declaration of " & "swsgetcolorspacedetails" &
        " already exists, not redeclaring")
when not declared(swsallocvec):
  proc swsallocvec*(length: cint): ptr Swsvector_520094366 {.cdecl,
      importc: "sws_allocVec".}
else:
  static :
    hint("Declaration of " & "swsallocvec" & " already exists, not redeclaring")
when not declared(swsgetgaussianvec):
  proc swsgetgaussianvec*(variance: cdouble; quality: cdouble): ptr Swsvector_520094366 {.
      cdecl, importc: "sws_getGaussianVec".}
else:
  static :
    hint("Declaration of " & "swsgetgaussianvec" &
        " already exists, not redeclaring")
when not declared(swsscalevec):
  proc swsscalevec*(a: ptr Swsvector_520094366; scalar: cdouble): void {.cdecl,
      importc: "sws_scaleVec".}
else:
  static :
    hint("Declaration of " & "swsscalevec" & " already exists, not redeclaring")
when not declared(swsnormalizevec):
  proc swsnormalizevec*(a: ptr Swsvector_520094366; height: cdouble): void {.
      cdecl, importc: "sws_normalizeVec".}
else:
  static :
    hint("Declaration of " & "swsnormalizevec" &
        " already exists, not redeclaring")
when not declared(swsfreevec):
  proc swsfreevec*(a: ptr Swsvector_520094366): void {.cdecl,
      importc: "sws_freeVec".}
else:
  static :
    hint("Declaration of " & "swsfreevec" & " already exists, not redeclaring")
when not declared(swsgetdefaultfilter):
  proc swsgetdefaultfilter*(lumagblur: cfloat; chromagblur: cfloat;
                            lumasharpen: cfloat; chromasharpen: cfloat;
                            chromahshift: cfloat; chromavshift: cfloat;
                            verbose: cint): ptr Swsfilter_520094370 {.cdecl,
      importc: "sws_getDefaultFilter".}
else:
  static :
    hint("Declaration of " & "swsgetdefaultfilter" &
        " already exists, not redeclaring")
when not declared(swsfreefilter):
  proc swsfreefilter*(filter: ptr Swsfilter_520094370): void {.cdecl,
      importc: "sws_freeFilter".}
else:
  static :
    hint("Declaration of " & "swsfreefilter" &
        " already exists, not redeclaring")
when not declared(swsgetcachedcontext):
  proc swsgetcachedcontext*(context: ptr structswscontext; srcw: cint;
                            srch: cint; srcformat: enumavpixelformat_520094129;
                            dstw: cint; dsth: cint;
                            dstformat: enumavpixelformat_520094129; flags: cint;
                            srcfilter: ptr Swsfilter_520094370;
                            dstfilter: ptr Swsfilter_520094370;
                            param: ptr cdouble): ptr structswscontext {.cdecl,
      importc: "sws_getCachedContext".}
else:
  static :
    hint("Declaration of " & "swsgetcachedcontext" &
        " already exists, not redeclaring")
when not declared(swsconvertpalette8topacked32):
  proc swsconvertpalette8topacked32*(src: ptr uint8; dst: ptr uint8;
                                     numpixels: cint; palette: ptr uint8): void {.
      cdecl, importc: "sws_convertPalette8ToPacked32".}
else:
  static :
    hint("Declaration of " & "swsconvertpalette8topacked32" &
        " already exists, not redeclaring")
when not declared(swsconvertpalette8topacked24):
  proc swsconvertpalette8topacked24*(src: ptr uint8; dst: ptr uint8;
                                     numpixels: cint; palette: ptr uint8): void {.
      cdecl, importc: "sws_convertPalette8ToPacked24".}
else:
  static :
    hint("Declaration of " & "swsconvertpalette8topacked24" &
        " already exists, not redeclaring")
when not declared(swsgetclass):
  proc swsgetclass*(): ptr Avclass_520094105 {.cdecl, importc: "sws_get_class".}
else:
  static :
    hint("Declaration of " & "swsgetclass" & " already exists, not redeclaring")