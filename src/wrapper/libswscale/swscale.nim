#import ../libavformat/avformat
from macros import hint

when not declared(Avframecropunaligned):
  const
    Avframecropunaligned* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avframecropunaligned" &
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
when not declared(structswscontext):
  type
    structswscontext* = distinct object
else:
  static :
    hint("Declaration of " & "structswscontext" &
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
  structavrational_520094082 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094084 = structavrational_520094083 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:61:3
  unionavintfloat32_520094086 {.union, bycopy.} = object
    i*: uint32               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:27:7
    f*: cfloat

  unionavintfloat64_520094088 {.union, bycopy.} = object
    i*: uint64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:32:7
    f*: cdouble

  Avclasscategory_520094094 = enumavclasscategory_520094093 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:47:2
  structavclass_520094096 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094095
    getcategory*: proc (a0: pointer): Avclasscategory_520094095 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094097 {.
        cdecl.}

  Avclass_520094098 = structavclass_520094097 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:147:3
  valist_520094100 = compilerbuiltinvalist ## Generated based on /usr/lib/clang/17/include/stdarg.h:22:27
  Avbuffer_520094114 = structavbuffer ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:74:25
  structavbufferref_520094116 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520094115 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  Avbufferref_520094118 = structavbufferref_520094117 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:95:3
  Avbufferpool_520094120 = structavbufferpool ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/buffer.h:255:29
  structavchannelcustom_520094128 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094123 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:267:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom_520094130 = structavchannelcustom_520094129 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:271:3
  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094131

  structavchannellayout_520094132 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094125 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:303:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout_520094134 = structavchannellayout_520094133 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:361:3
  structavdictionaryentry_520094136 {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:89:16
    value*: cstring

  Avdictionaryentry_520094138 = structavdictionaryentry_520094137 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:92:3
  Avdictionary_520094147 = structavdictionary ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:94:29
  structavframesidedata_520094155 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520094152 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:250:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520094148
    buf*: ptr Avbufferref_520094119

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
    qoffset*: Avrational_520094085

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
    picttype*: enumavpicturetype_520094081
    sampleaspectratio*: Avrational_520094085
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520094085
    quality*: cint
    opaque*: pointer
    repeatpict*: cint
    interlacedframe*: cint
    topfieldfirst*: cint
    palettehaschanged*: cint
    samplerate*: cint
    buf*: array[8'i64, ptr Avbufferref_520094119]
    extendedbuf*: ptr ptr Avbufferref_520094119
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520094158
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520094111
    colorprimaries*: enumavcolorprimaries_520094105
    colortrc*: enumavcolortransfercharacteristic_520094107
    colorspace*: enumavcolorspace_520094109
    chromalocation*: enumavchromalocation_520094113
    bestefforttimestamp*: int64
    pktpos*: int64
    metadata*: ptr Avdictionary_520094148
    decodeerrorflags*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520094119
    opaqueref*: ptr Avbufferref_520094119
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520094119
    chlayout*: Avchannellayout_520094135
    duration*: int64

  Avframe_520094171 = structavframe_520094170 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/frame.h:781:3
  structswsvector_520094173 {.pure, inheritable, bycopy.} = object
    coeff*: ptr cdouble      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:116:16
    length*: cint

  Swsvector_520094175 = structswsvector_520094174 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:119:3
  structswsfilter_520094177 {.pure, inheritable, bycopy.} = object
    lumh*: ptr Swsvector_520094176 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:122:16
    lumv*: ptr Swsvector_520094176
    chrh*: ptr Swsvector_520094176
    chrv*: ptr Swsvector_520094176

  Swsfilter_520094179 = structswsfilter_520094178 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:127:3
  structavregionofinterest_520094166 = (when declared(structavregionofinterest):
    structavregionofinterest
   else:
    structavregionofinterest_520094165)
  structavclass_520094097 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094096)
  enumavchannelorder_520094125 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094124)
  enumavpicturetype_520094081 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094080)
  enumavcolorprimaries_520094105 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094104)
  enumavsidedataprops_520094160 = (when declared(enumavsidedataprops):
    enumavsidedataprops
   else:
    enumavsidedataprops_520094159)
  enumavrounding_520094091 = (when declared(enumavrounding):
    enumavrounding
   else:
    enumavrounding_520094090)
  enumavframesidedatatype_520094152 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520094151)
  structavframesidedata_520094156 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520094155)
  enumavcolorrange_520094111 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094110)
  enumavsampleformat_520094150 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094149)
  structavsidedatadescriptor_520094162 = (when declared(
      structavsidedatadescriptor):
    structavsidedatadescriptor
   else:
    structavsidedatadescriptor_520094161)
  Avclasscategory_520094095 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094094)
  structavchannelcustom_520094129 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094128)
  Avdictionaryentry_520094139 = (when declared(Avdictionaryentry):
    Avdictionaryentry
   else:
    Avdictionaryentry_520094138)
  Swsvector_520094176 = (when declared(Swsvector):
    Swsvector
   else:
    Swsvector_520094175)
  structswsfilter_520094178 = (when declared(structswsfilter):
    structswsfilter
   else:
    structswsfilter_520094177)
  Avclass_520094099 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094098)
  enumavchromalocation_520094113 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094112)
  structswsvector_520094174 = (when declared(structswsvector):
    structswsvector
   else:
    structswsvector_520094173)
  Avbufferref_520094119 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520094118)
  structavdictionaryentry_520094137 = (when declared(structavdictionaryentry):
    structavdictionaryentry
   else:
    structavdictionaryentry_520094136)
  enumavclasscategory_520094093 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094092)
  Avframesidedata_520094158 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520094157)
  Avbufferpool_520094121 = (when declared(Avbufferpool):
    Avbufferpool
   else:
    Avbufferpool_520094120)
  Swsfilter_520094180 = (when declared(Swsfilter):
    Swsfilter
   else:
    Swsfilter_520094179)
  Avrational_520094085 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094084)
  enumavmatrixencoding_520094127 = (when declared(enumavmatrixencoding):
    enumavmatrixencoding
   else:
    enumavmatrixencoding_520094126)
  valist_520094101 = (when declared(valist):
    valist
   else:
    valist_520094100)
  unionavintfloat64_520094089 = (when declared(unionavintfloat64):
    unionavintfloat64
   else:
    unionavintfloat64_520094088)
  Avchannelcustom_520094131 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094130)
  Avframe_520094172 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520094171)
  structavbufferref_520094117 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520094116)
  structavchannellayout_520094133 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094132)
  enumavmediatype_520094079 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094078)
  Avbuffer_520094115 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520094114)
  Avchannellayout_520094135 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094134)
  structavrational_520094083 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094082)
  Avregionofinterest_520094168 = (when declared(Avregionofinterest):
    Avregionofinterest
   else:
    Avregionofinterest_520094167)
  unionavintfloat32_520094087 = (when declared(unionavintfloat32):
    unionavintfloat32
   else:
    unionavintfloat32_520094086)
  enumavcolortransfercharacteristic_520094107 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094106)
  enumavchannel_520094123 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094122)
  enumavpixelformat_520094103 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094102)
  enumavactiveformatdescription_520094154 = (when declared(
      enumavactiveformatdescription):
    enumavactiveformatdescription
   else:
    enumavactiveformatdescription_520094153)
  Avsidedatadescriptor_520094164 = (when declared(Avsidedatadescriptor):
    Avsidedatadescriptor
   else:
    Avsidedatadescriptor_520094163)
  enumavcolorspace_520094109 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094108)
  Avdictionary_520094148 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094147)
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
when not declared(structavclass):
  type
    structavclass* = structavclass_520094096
else:
  static :
    hint("Declaration of " & "structavclass" &
        " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520094155
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
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
    Avclasscategory* = Avclasscategory_520094094
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094128
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avdictionaryentry):
  type
    Avdictionaryentry* = Avdictionaryentry_520094138
else:
  static :
    hint("Declaration of " & "Avdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Swsvector):
  type
    Swsvector* = Swsvector_520094175
else:
  static :
    hint("Declaration of " & "Swsvector" & " already exists, not redeclaring")
when not declared(structswsfilter):
  type
    structswsfilter* = structswsfilter_520094177
else:
  static :
    hint("Declaration of " & "structswsfilter" &
        " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094098
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(structswsvector):
  type
    structswsvector* = structswsvector_520094173
else:
  static :
    hint("Declaration of " & "structswsvector" &
        " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520094118
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(structavdictionaryentry):
  type
    structavdictionaryentry* = structavdictionaryentry_520094136
else:
  static :
    hint("Declaration of " & "structavdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520094157
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(Avbufferpool):
  type
    Avbufferpool* = Avbufferpool_520094120
else:
  static :
    hint("Declaration of " & "Avbufferpool" & " already exists, not redeclaring")
when not declared(Swsfilter):
  type
    Swsfilter* = Swsfilter_520094179
else:
  static :
    hint("Declaration of " & "Swsfilter" & " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094084
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094100
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(unionavintfloat64):
  type
    unionavintfloat64* = unionavintfloat64_520094088
else:
  static :
    hint("Declaration of " & "unionavintfloat64" &
        " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094130
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520094171
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520094116
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094132
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520094114
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094134
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094082
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(Avregionofinterest):
  type
    Avregionofinterest* = Avregionofinterest_520094167
else:
  static :
    hint("Declaration of " & "Avregionofinterest" &
        " already exists, not redeclaring")
when not declared(unionavintfloat32):
  type
    unionavintfloat32* = unionavintfloat32_520094086
else:
  static :
    hint("Declaration of " & "unionavintfloat32" &
        " already exists, not redeclaring")
when not declared(Avsidedatadescriptor):
  type
    Avsidedatadescriptor* = Avsidedatadescriptor_520094163
else:
  static :
    hint("Declaration of " & "Avsidedatadescriptor" &
        " already exists, not redeclaring")
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094147
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
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
when not declared(Libswscaleversionmajor):
  when 8 is static:
    const
      Libswscaleversionmajor* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version_major.h:27:9
  else:
    let Libswscaleversionmajor* = 8 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version_major.h:27:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmajor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionminor):
  when 2 is static:
    const
      Libswscaleversionminor* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version.h:31:9
  else:
    let Libswscaleversionminor* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version.h:31:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionminor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionmicro):
  when 100 is static:
    const
      Libswscaleversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version.h:32:9
  else:
    let Libswscaleversionmicro* = 100 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmicro" &
        " already exists, not redeclaring")
when not declared(Swsfastbilinear):
  when 1 is static:
    const
      Swsfastbilinear* = 1   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:65:9
  else:
    let Swsfastbilinear* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:65:9
else:
  static :
    hint("Declaration of " & "Swsfastbilinear" &
        " already exists, not redeclaring")
when not declared(Swsbilinear):
  when 2 is static:
    const
      Swsbilinear* = 2       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:66:9
  else:
    let Swsbilinear* = 2     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:66:9
else:
  static :
    hint("Declaration of " & "Swsbilinear" & " already exists, not redeclaring")
when not declared(Swsbicubic):
  when 4 is static:
    const
      Swsbicubic* = 4        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:67:9
  else:
    let Swsbicubic* = 4      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:67:9
else:
  static :
    hint("Declaration of " & "Swsbicubic" & " already exists, not redeclaring")
when not declared(Swsx):
  when 8 is static:
    const
      Swsx* = 8              ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:68:9
  else:
    let Swsx* = 8            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:68:9
else:
  static :
    hint("Declaration of " & "Swsx" & " already exists, not redeclaring")
when not declared(Swspoint):
  when 16 is static:
    const
      Swspoint* = 16         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:69:9
  else:
    let Swspoint* = 16       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:69:9
else:
  static :
    hint("Declaration of " & "Swspoint" & " already exists, not redeclaring")
when not declared(Swsarea):
  when 32 is static:
    const
      Swsarea* = 32          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:70:9
  else:
    let Swsarea* = 32        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:70:9
else:
  static :
    hint("Declaration of " & "Swsarea" & " already exists, not redeclaring")
when not declared(Swsbicublin):
  when 64 is static:
    const
      Swsbicublin* = 64      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:71:9
  else:
    let Swsbicublin* = 64    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:71:9
else:
  static :
    hint("Declaration of " & "Swsbicublin" & " already exists, not redeclaring")
when not declared(Swsgauss):
  when 128 is static:
    const
      Swsgauss* = 128        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:72:9
  else:
    let Swsgauss* = 128      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:72:9
else:
  static :
    hint("Declaration of " & "Swsgauss" & " already exists, not redeclaring")
when not declared(Swssinc):
  when 256 is static:
    const
      Swssinc* = 256         ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:73:9
  else:
    let Swssinc* = 256       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:73:9
else:
  static :
    hint("Declaration of " & "Swssinc" & " already exists, not redeclaring")
when not declared(Swslanczos):
  when 512 is static:
    const
      Swslanczos* = 512      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:74:9
  else:
    let Swslanczos* = 512    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:74:9
else:
  static :
    hint("Declaration of " & "Swslanczos" & " already exists, not redeclaring")
when not declared(Swsspline):
  when 1024 is static:
    const
      Swsspline* = 1024      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:75:9
  else:
    let Swsspline* = 1024    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:75:9
else:
  static :
    hint("Declaration of " & "Swsspline" & " already exists, not redeclaring")
when not declared(Swssrcvchrdropmask):
  when 196608 is static:
    const
      Swssrcvchrdropmask* = 196608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:77:9
  else:
    let Swssrcvchrdropmask* = 196608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:77:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropmask" &
        " already exists, not redeclaring")
when not declared(Swssrcvchrdropshift):
  when 16 is static:
    const
      Swssrcvchrdropshift* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:78:9
  else:
    let Swssrcvchrdropshift* = 16 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:78:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropshift" &
        " already exists, not redeclaring")
when not declared(Swsparamdefault):
  when 123456 is static:
    const
      Swsparamdefault* = 123456 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:80:9
  else:
    let Swsparamdefault* = 123456 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:80:9
else:
  static :
    hint("Declaration of " & "Swsparamdefault" &
        " already exists, not redeclaring")
when not declared(Swsprintinfo):
  when 4096 is static:
    const
      Swsprintinfo* = 4096   ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:82:9
  else:
    let Swsprintinfo* = 4096 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:82:9
else:
  static :
    hint("Declaration of " & "Swsprintinfo" & " already exists, not redeclaring")
when not declared(Swsfullchrhint):
  when 8192 is static:
    const
      Swsfullchrhint* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:86:9
  else:
    let Swsfullchrhint* = 8192 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:86:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhint" &
        " already exists, not redeclaring")
when not declared(Swsfullchrhinp):
  when 16384 is static:
    const
      Swsfullchrhinp* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:88:9
  else:
    let Swsfullchrhinp* = 16384 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:88:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhinp" &
        " already exists, not redeclaring")
when not declared(Swsdirectbgr):
  when 32768 is static:
    const
      Swsdirectbgr* = 32768  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:89:9
  else:
    let Swsdirectbgr* = 32768 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:89:9
else:
  static :
    hint("Declaration of " & "Swsdirectbgr" & " already exists, not redeclaring")
when not declared(Swsaccuraternd):
  when 262144 is static:
    const
      Swsaccuraternd* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:90:9
  else:
    let Swsaccuraternd* = 262144 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:90:9
else:
  static :
    hint("Declaration of " & "Swsaccuraternd" &
        " already exists, not redeclaring")
when not declared(Swsbitexact):
  when 524288 is static:
    const
      Swsbitexact* = 524288  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:91:9
  else:
    let Swsbitexact* = 524288 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:91:9
else:
  static :
    hint("Declaration of " & "Swsbitexact" & " already exists, not redeclaring")
when not declared(Swserrordiffusion):
  when 8388608 is static:
    const
      Swserrordiffusion* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:92:9
  else:
    let Swserrordiffusion* = 8388608 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:92:9
else:
  static :
    hint("Declaration of " & "Swserrordiffusion" &
        " already exists, not redeclaring")
when not declared(Swsmaxreducecutoff):
  when 0.002 is static:
    const
      Swsmaxreducecutoff* = 0.002 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:94:9
  else:
    let Swsmaxreducecutoff* = 0.002 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:94:9
else:
  static :
    hint("Declaration of " & "Swsmaxreducecutoff" &
        " already exists, not redeclaring")
when not declared(Swscsitu709):
  when 1 is static:
    const
      Swscsitu709* = 1       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:96:9
  else:
    let Swscsitu709* = 1     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:96:9
else:
  static :
    hint("Declaration of " & "Swscsitu709" & " already exists, not redeclaring")
when not declared(Swscsfcc):
  when 4 is static:
    const
      Swscsfcc* = 4          ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:97:9
  else:
    let Swscsfcc* = 4        ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:97:9
else:
  static :
    hint("Declaration of " & "Swscsfcc" & " already exists, not redeclaring")
when not declared(Swscsitu601):
  when 5 is static:
    const
      Swscsitu601* = 5       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:98:9
  else:
    let Swscsitu601* = 5     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:98:9
else:
  static :
    hint("Declaration of " & "Swscsitu601" & " already exists, not redeclaring")
when not declared(Swscsitu624):
  when 5 is static:
    const
      Swscsitu624* = 5       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:99:9
  else:
    let Swscsitu624* = 5     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:99:9
else:
  static :
    hint("Declaration of " & "Swscsitu624" & " already exists, not redeclaring")
when not declared(Swscssmpte170m):
  when 5 is static:
    const
      Swscssmpte170m* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:100:9
  else:
    let Swscssmpte170m* = 5  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:100:9
else:
  static :
    hint("Declaration of " & "Swscssmpte170m" &
        " already exists, not redeclaring")
when not declared(Swscssmpte240m):
  when 7 is static:
    const
      Swscssmpte240m* = 7    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:101:9
  else:
    let Swscssmpte240m* = 7  ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:101:9
else:
  static :
    hint("Declaration of " & "Swscssmpte240m" &
        " already exists, not redeclaring")
when not declared(Swscsdefault):
  when 5 is static:
    const
      Swscsdefault* = 5      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:102:9
  else:
    let Swscsdefault* = 5    ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:102:9
else:
  static :
    hint("Declaration of " & "Swscsdefault" & " already exists, not redeclaring")
when not declared(Swscsbt2020):
  when 9 is static:
    const
      Swscsbt2020* = 9       ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:103:9
  else:
    let Swscsbt2020* = 9     ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libswscale/swscale.h:103:9
else:
  static :
    hint("Declaration of " & "Swscsbt2020" & " already exists, not redeclaring")
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
  proc avgetmediatypestring*(mediatype: enumavmediatype_520094079): cstring {.
      cdecl, importc: "av_get_media_type_string".}
else:
  static :
    hint("Declaration of " & "avgetmediatypestring" &
        " already exists, not redeclaring")
when not declared(avgetpicturetypechar):
  proc avgetpicturetypechar*(picttype: enumavpicturetype_520094081): cschar {.
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
  proc avmulq*(b: Avrational_520094085; c: Avrational_520094085): Avrational_520094085 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094085; c: Avrational_520094085): Avrational_520094085 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094085; c: Avrational_520094085): Avrational_520094085 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094085; c: Avrational_520094085): Avrational_520094085 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094085 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094085; q1: Avrational_520094085;
                  q2: Avrational_520094085): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094085; qlist: ptr Avrational_520094085): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094085): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094085; b: Avrational_520094085; maxden: cint;
               def: Avrational_520094085): Avrational_520094085 {.cdecl,
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
  proc avrescalernd*(a: int64; b: int64; c: int64; rnd: enumavrounding_520094091): int64 {.
      cdecl, importc: "av_rescale_rnd".}
else:
  static :
    hint("Declaration of " & "avrescalernd" & " already exists, not redeclaring")
when not declared(avrescaleq):
  proc avrescaleq*(a: int64; bq: Avrational_520094085; cq: Avrational_520094085): int64 {.
      cdecl, importc: "av_rescale_q".}
else:
  static :
    hint("Declaration of " & "avrescaleq" & " already exists, not redeclaring")
when not declared(avrescaleqrnd):
  proc avrescaleqrnd*(a: int64; bq: Avrational_520094085; cq: Avrational_520094085;
                      rnd: enumavrounding_520094091): int64 {.cdecl,
      importc: "av_rescale_q_rnd".}
else:
  static :
    hint("Declaration of " & "avrescaleqrnd" &
        " already exists, not redeclaring")
when not declared(avcomparets):
  proc avcomparets*(tsa: int64; tba: Avrational_520094085; tsb: int64;
                    tbb: Avrational_520094085): cint {.cdecl,
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
  proc avrescaledelta*(intb: Avrational_520094085; ints: int64;
                       fstb: Avrational_520094085; duration: cint;
                       last: ptr int64; outtb: Avrational_520094085): int64 {.
      cdecl, importc: "av_rescale_delta".}
else:
  static :
    hint("Declaration of " & "avrescaledelta" &
        " already exists, not redeclaring")
when not declared(avaddstable):
  proc avaddstable*(tstb: Avrational_520094085; ts: int64; inctb: Avrational_520094085;
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
  proc avdefaultgetcategory*(ptrarg: pointer): Avclasscategory_520094095 {.
      cdecl, importc: "av_default_get_category".}
else:
  static :
    hint("Declaration of " & "avdefaultgetcategory" &
        " already exists, not redeclaring")
when not declared(avlogformatline):
  proc avlogformatline*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094101;
                        line: cstring; linesize: cint; printprefix: ptr cint): void {.
      cdecl, importc: "av_log_format_line".}
else:
  static :
    hint("Declaration of " & "avlogformatline" &
        " already exists, not redeclaring")
when not declared(avlogformatline2):
  proc avlogformatline2*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094101;
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
  proc avgettimebaseq*(): Avrational_520094085 {.cdecl,
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
  proc avbufferalloc*(size: csize_t): ptr Avbufferref_520094119 {.cdecl,
      importc: "av_buffer_alloc".}
else:
  static :
    hint("Declaration of " & "avbufferalloc" &
        " already exists, not redeclaring")
when not declared(avbufferallocz):
  proc avbufferallocz*(size: csize_t): ptr Avbufferref_520094119 {.cdecl,
      importc: "av_buffer_allocz".}
else:
  static :
    hint("Declaration of " & "avbufferallocz" &
        " already exists, not redeclaring")
when not declared(avbuffercreate):
  proc avbuffercreate*(data: ptr uint8; size: csize_t;
                       free: proc (a0: pointer; a1: ptr uint8): void {.cdecl.};
                       opaque: pointer; flags: cint): ptr Avbufferref_520094119 {.
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
  proc avbufferref*(buf: ptr Avbufferref_520094119): ptr Avbufferref_520094119 {.
      cdecl, importc: "av_buffer_ref".}
else:
  static :
    hint("Declaration of " & "avbufferref" & " already exists, not redeclaring")
when not declared(avbufferunref):
  proc avbufferunref*(buf: ptr ptr Avbufferref_520094119): void {.cdecl,
      importc: "av_buffer_unref".}
else:
  static :
    hint("Declaration of " & "avbufferunref" &
        " already exists, not redeclaring")
when not declared(avbufferiswritable):
  proc avbufferiswritable*(buf: ptr Avbufferref_520094119): cint {.cdecl,
      importc: "av_buffer_is_writable".}
else:
  static :
    hint("Declaration of " & "avbufferiswritable" &
        " already exists, not redeclaring")
when not declared(avbuffergetopaque):
  proc avbuffergetopaque*(buf: ptr Avbufferref_520094119): pointer {.cdecl,
      importc: "av_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avbuffergetrefcount):
  proc avbuffergetrefcount*(buf: ptr Avbufferref_520094119): cint {.cdecl,
      importc: "av_buffer_get_ref_count".}
else:
  static :
    hint("Declaration of " & "avbuffergetrefcount" &
        " already exists, not redeclaring")
when not declared(avbuffermakewritable):
  proc avbuffermakewritable*(buf: ptr ptr Avbufferref_520094119): cint {.cdecl,
      importc: "av_buffer_make_writable".}
else:
  static :
    hint("Declaration of " & "avbuffermakewritable" &
        " already exists, not redeclaring")
when not declared(avbufferrealloc):
  proc avbufferrealloc*(buf: ptr ptr Avbufferref_520094119; size: csize_t): cint {.
      cdecl, importc: "av_buffer_realloc".}
else:
  static :
    hint("Declaration of " & "avbufferrealloc" &
        " already exists, not redeclaring")
when not declared(avbufferreplace):
  proc avbufferreplace*(dst: ptr ptr Avbufferref_520094119; src: ptr Avbufferref_520094119): cint {.
      cdecl, importc: "av_buffer_replace".}
else:
  static :
    hint("Declaration of " & "avbufferreplace" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit):
  proc avbufferpoolinit*(size: csize_t;
                         alloc: proc (a0: csize_t): ptr Avbufferref_520094119 {.
      cdecl.}): ptr Avbufferpool_520094121 {.cdecl,
      importc: "av_buffer_pool_init".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolinit2):
  proc avbufferpoolinit2*(size: csize_t; opaque: pointer; alloc: proc (
      a0: pointer; a1: csize_t): ptr Avbufferref_520094119 {.cdecl.};
                          poolfree: proc (a0: pointer): void {.cdecl.}): ptr Avbufferpool_520094121 {.
      cdecl, importc: "av_buffer_pool_init2".}
else:
  static :
    hint("Declaration of " & "avbufferpoolinit2" &
        " already exists, not redeclaring")
when not declared(avbufferpooluninit):
  proc avbufferpooluninit*(pool: ptr ptr Avbufferpool_520094121): void {.cdecl,
      importc: "av_buffer_pool_uninit".}
else:
  static :
    hint("Declaration of " & "avbufferpooluninit" &
        " already exists, not redeclaring")
when not declared(avbufferpoolget):
  proc avbufferpoolget*(pool: ptr Avbufferpool_520094121): ptr Avbufferref_520094119 {.
      cdecl, importc: "av_buffer_pool_get".}
else:
  static :
    hint("Declaration of " & "avbufferpoolget" &
        " already exists, not redeclaring")
when not declared(avbufferpoolbuffergetopaque):
  proc avbufferpoolbuffergetopaque*(refarg: ptr Avbufferref_520094119): pointer {.
      cdecl, importc: "av_buffer_pool_buffer_get_opaque".}
else:
  static :
    hint("Declaration of " & "avbufferpoolbuffergetopaque" &
        " already exists, not redeclaring")
when not declared(avchannelname):
  proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel_520094123): cint {.
      cdecl, importc: "av_channel_name".}
else:
  static :
    hint("Declaration of " & "avchannelname" &
        " already exists, not redeclaring")
when not declared(avchannelnamebprint):
  proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel_520094123): void {.
      cdecl, importc: "av_channel_name_bprint".}
else:
  static :
    hint("Declaration of " & "avchannelnamebprint" &
        " already exists, not redeclaring")
when not declared(avchanneldescription):
  proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                             channel: enumavchannel_520094123): cint {.cdecl,
      importc: "av_channel_description".}
else:
  static :
    hint("Declaration of " & "avchanneldescription" &
        " already exists, not redeclaring")
when not declared(avchanneldescriptionbprint):
  proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                   channelid: enumavchannel_520094123): void {.
      cdecl, importc: "av_channel_description_bprint".}
else:
  static :
    hint("Declaration of " & "avchanneldescriptionbprint" &
        " already exists, not redeclaring")
when not declared(avchannelfromstring):
  proc avchannelfromstring*(name: cstring): enumavchannel_520094123 {.cdecl,
      importc: "av_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcustominit):
  proc avchannellayoutcustominit*(channellayout: ptr Avchannellayout_520094135;
                                  nbchannels: cint): cint {.cdecl,
      importc: "av_channel_layout_custom_init".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcustominit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfrommask):
  proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout_520094135;
                                mask: uint64): cint {.cdecl,
      importc: "av_channel_layout_from_mask".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfrommask" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfromstring):
  proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout_520094135;
                                  str: cstring): cint {.cdecl,
      importc: "av_channel_layout_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdefault):
  proc avchannellayoutdefault*(chlayout: ptr Avchannellayout_520094135;
                               nbchannels: cint): void {.cdecl,
      importc: "av_channel_layout_default".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdefault" &
        " already exists, not redeclaring")
when not declared(avchannellayoutstandard):
  proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout_520094135 {.
      cdecl, importc: "av_channel_layout_standard".}
else:
  static :
    hint("Declaration of " & "avchannellayoutstandard" &
        " already exists, not redeclaring")
when not declared(avchannellayoutuninit):
  proc avchannellayoutuninit*(channellayout: ptr Avchannellayout_520094135): void {.
      cdecl, importc: "av_channel_layout_uninit".}
else:
  static :
    hint("Declaration of " & "avchannellayoutuninit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcopy):
  proc avchannellayoutcopy*(dst: ptr Avchannellayout_520094135;
                            src: ptr Avchannellayout_520094135): cint {.cdecl,
      importc: "av_channel_layout_copy".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcopy" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribe):
  proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout_520094135;
                                buf: cstring; bufsize: csize_t): cint {.cdecl,
      importc: "av_channel_layout_describe".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribe" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribebprint):
  proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout_520094135;
                                      bp: ptr structavbprint): cint {.cdecl,
      importc: "av_channel_layout_describe_bprint".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribebprint" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromindex):
  proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout_520094135;
                                        idx: cuint): enumavchannel_520094123 {.
      cdecl, importc: "av_channel_layout_channel_from_index".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromchannel):
  proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout_520094135;
                                        channel: enumavchannel_520094123): cint {.
      cdecl, importc: "av_channel_layout_index_from_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromchannel" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromstring):
  proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout_520094135;
                                       name: cstring): cint {.cdecl,
      importc: "av_channel_layout_index_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromstring):
  proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout_520094135;
      name: cstring): enumavchannel_520094123 {.cdecl,
      importc: "av_channel_layout_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutsubset):
  proc avchannellayoutsubset*(channellayout: ptr Avchannellayout_520094135;
                              mask: uint64): uint64 {.cdecl,
      importc: "av_channel_layout_subset".}
else:
  static :
    hint("Declaration of " & "avchannellayoutsubset" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcheck):
  proc avchannellayoutcheck*(channellayout: ptr Avchannellayout_520094135): cint {.
      cdecl, importc: "av_channel_layout_check".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcheck" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcompare):
  proc avchannellayoutcompare*(chl: ptr Avchannellayout_520094135;
                               chl1: ptr Avchannellayout_520094135): cint {.
      cdecl, importc: "av_channel_layout_compare".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcompare" &
        " already exists, not redeclaring")
when not declared(avchannellayoutretype):
  proc avchannellayoutretype*(channellayout: ptr Avchannellayout_520094135;
                              order: enumavchannelorder_520094125; flags: cint): cint {.
      cdecl, importc: "av_channel_layout_retype".}
else:
  static :
    hint("Declaration of " & "avchannellayoutretype" &
        " already exists, not redeclaring")
when not declared(avdictget):
  proc avdictget*(m: ptr Avdictionary_520094148; key: cstring;
                  prev: ptr Avdictionaryentry_520094139; flags: cint): ptr Avdictionaryentry_520094139 {.
      cdecl, importc: "av_dict_get".}
else:
  static :
    hint("Declaration of " & "avdictget" & " already exists, not redeclaring")
when not declared(avdictiterate):
  proc avdictiterate*(m: ptr Avdictionary_520094148; prev: ptr Avdictionaryentry_520094139): ptr Avdictionaryentry_520094139 {.
      cdecl, importc: "av_dict_iterate".}
else:
  static :
    hint("Declaration of " & "avdictiterate" &
        " already exists, not redeclaring")
when not declared(avdictcount):
  proc avdictcount*(m: ptr Avdictionary_520094148): cint {.cdecl,
      importc: "av_dict_count".}
else:
  static :
    hint("Declaration of " & "avdictcount" & " already exists, not redeclaring")
when not declared(avdictset):
  proc avdictset*(pm: ptr ptr Avdictionary_520094148; key: cstring;
                  value: cstring; flags: cint): cint {.cdecl,
      importc: "av_dict_set".}
else:
  static :
    hint("Declaration of " & "avdictset" & " already exists, not redeclaring")
when not declared(avdictsetint):
  proc avdictsetint*(pm: ptr ptr Avdictionary_520094148; key: cstring;
                     value: int64; flags: cint): cint {.cdecl,
      importc: "av_dict_set_int".}
else:
  static :
    hint("Declaration of " & "avdictsetint" & " already exists, not redeclaring")
when not declared(avdictparsestring):
  proc avdictparsestring*(pm: ptr ptr Avdictionary_520094148; str: cstring;
                          keyvalsep: cstring; pairssep: cstring; flags: cint): cint {.
      cdecl, importc: "av_dict_parse_string".}
else:
  static :
    hint("Declaration of " & "avdictparsestring" &
        " already exists, not redeclaring")
when not declared(avdictcopy):
  proc avdictcopy*(dst: ptr ptr Avdictionary_520094148; src: ptr Avdictionary_520094148;
                   flags: cint): cint {.cdecl, importc: "av_dict_copy".}
else:
  static :
    hint("Declaration of " & "avdictcopy" & " already exists, not redeclaring")
when not declared(avdictfree):
  proc avdictfree*(m: ptr ptr Avdictionary_520094148): void {.cdecl,
      importc: "av_dict_free".}
else:
  static :
    hint("Declaration of " & "avdictfree" & " already exists, not redeclaring")
when not declared(avdictgetstring):
  proc avdictgetstring*(m: ptr Avdictionary_520094148; buffer: ptr cstring;
                        keyvalsep: cschar; pairssep: cschar): cint {.cdecl,
      importc: "av_dict_get_string".}
else:
  static :
    hint("Declaration of " & "avdictgetstring" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtname):
  proc avgetsamplefmtname*(samplefmt: enumavsampleformat_520094150): cstring {.
      cdecl, importc: "av_get_sample_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtname" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmt):
  proc avgetsamplefmt*(name: cstring): enumavsampleformat_520094150 {.cdecl,
      importc: "av_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetaltsamplefmt):
  proc avgetaltsamplefmt*(samplefmt: enumavsampleformat_520094150; planar: cint): enumavsampleformat_520094150 {.
      cdecl, importc: "av_get_alt_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetaltsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetpackedsamplefmt):
  proc avgetpackedsamplefmt*(samplefmt: enumavsampleformat_520094150): enumavsampleformat_520094150 {.
      cdecl, importc: "av_get_packed_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpackedsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetplanarsamplefmt):
  proc avgetplanarsamplefmt*(samplefmt: enumavsampleformat_520094150): enumavsampleformat_520094150 {.
      cdecl, importc: "av_get_planar_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetplanarsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtstring):
  proc avgetsamplefmtstring*(buf: cstring; bufsize: cint;
                             samplefmt: enumavsampleformat_520094150): cstring {.
      cdecl, importc: "av_get_sample_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtstring" &
        " already exists, not redeclaring")
when not declared(avgetbytespersample):
  proc avgetbytespersample*(samplefmt: enumavsampleformat_520094150): cint {.
      cdecl, importc: "av_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbytespersample" &
        " already exists, not redeclaring")
when not declared(avsamplefmtisplanar):
  proc avsamplefmtisplanar*(samplefmt: enumavsampleformat_520094150): cint {.
      cdecl, importc: "av_sample_fmt_is_planar".}
else:
  static :
    hint("Declaration of " & "avsamplefmtisplanar" &
        " already exists, not redeclaring")
when not declared(avsamplesgetbuffersize):
  proc avsamplesgetbuffersize*(linesize: ptr cint; nbchannels: cint;
                               nbsamples: cint; samplefmt: enumavsampleformat_520094150;
                               align: cint): cint {.cdecl,
      importc: "av_samples_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avsamplesgetbuffersize" &
        " already exists, not redeclaring")
when not declared(avsamplesfillarrays):
  proc avsamplesfillarrays*(audiodata: ptr ptr uint8; linesize: ptr cint;
                            buf: ptr uint8; nbchannels: cint; nbsamples: cint;
                            samplefmt: enumavsampleformat_520094150; align: cint): cint {.
      cdecl, importc: "av_samples_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avsamplesfillarrays" &
        " already exists, not redeclaring")
when not declared(avsamplesalloc):
  proc avsamplesalloc*(audiodata: ptr ptr uint8; linesize: ptr cint;
                       nbchannels: cint; nbsamples: cint;
                       samplefmt: enumavsampleformat_520094150; align: cint): cint {.
      cdecl, importc: "av_samples_alloc".}
else:
  static :
    hint("Declaration of " & "avsamplesalloc" &
        " already exists, not redeclaring")
when not declared(avsamplesallocarrayandsamples):
  proc avsamplesallocarrayandsamples*(audiodata: ptr ptr ptr uint8;
                                      linesize: ptr cint; nbchannels: cint;
                                      nbsamples: cint;
                                      samplefmt: enumavsampleformat_520094150;
                                      align: cint): cint {.cdecl,
      importc: "av_samples_alloc_array_and_samples".}
else:
  static :
    hint("Declaration of " & "avsamplesallocarrayandsamples" &
        " already exists, not redeclaring")
when not declared(avsamplescopy):
  proc avsamplescopy*(dst: ptr ptr uint8; src: ptr ptr uint8; dstoffset: cint;
                      srcoffset: cint; nbsamples: cint; nbchannels: cint;
                      samplefmt: enumavsampleformat_520094150): cint {.cdecl,
      importc: "av_samples_copy".}
else:
  static :
    hint("Declaration of " & "avsamplescopy" &
        " already exists, not redeclaring")
when not declared(avsamplessetsilence):
  proc avsamplessetsilence*(audiodata: ptr ptr uint8; offset: cint;
                            nbsamples: cint; nbchannels: cint;
                            samplefmt: enumavsampleformat_520094150): cint {.
      cdecl, importc: "av_samples_set_silence".}
else:
  static :
    hint("Declaration of " & "avsamplessetsilence" &
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
  proc avframegetplanebuffer*(frame: ptr Avframe_520094172; plane: cint): ptr Avbufferref_520094119 {.
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
                                  buf: ptr Avbufferref_520094119): ptr Avframesidedata_520094158 {.
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
                           buf: ptr ptr Avbufferref_520094119; flags: cuint): ptr Avframesidedata_520094158 {.
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
  proc swsissupportedinput*(pixfmt: enumavpixelformat_520094103): cint {.cdecl,
      importc: "sws_isSupportedInput".}
else:
  static :
    hint("Declaration of " & "swsissupportedinput" &
        " already exists, not redeclaring")
when not declared(swsissupportedoutput):
  proc swsissupportedoutput*(pixfmt: enumavpixelformat_520094103): cint {.cdecl,
      importc: "sws_isSupportedOutput".}
else:
  static :
    hint("Declaration of " & "swsissupportedoutput" &
        " already exists, not redeclaring")
when not declared(swsissupportedendiannessconversion):
  proc swsissupportedendiannessconversion*(pixfmt: enumavpixelformat_520094103): cint {.
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
                       srcfilter: ptr Swsfilter_520094180;
                       dstfilter: ptr Swsfilter_520094180): cint {.cdecl,
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
  proc swsgetcontext*(srcw: cint; srch: cint; srcformat: enumavpixelformat_520094103;
                      dstw: cint; dsth: cint; dstformat: enumavpixelformat_520094103;
                      flags: cint; srcfilter: ptr Swsfilter_520094180;
                      dstfilter: ptr Swsfilter_520094180; param: ptr cdouble): ptr structswscontext {.
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
  proc swsscaleframe*(c: ptr structswscontext; dst: ptr Avframe_520094172;
                      src: ptr Avframe_520094172): cint {.cdecl,
      importc: "sws_scale_frame".}
else:
  static :
    hint("Declaration of " & "swsscaleframe" &
        " already exists, not redeclaring")
when not declared(swsframestart):
  proc swsframestart*(c: ptr structswscontext; dst: ptr Avframe_520094172;
                      src: ptr Avframe_520094172): cint {.cdecl,
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
  proc swsallocvec*(length: cint): ptr Swsvector_520094176 {.cdecl,
      importc: "sws_allocVec".}
else:
  static :
    hint("Declaration of " & "swsallocvec" & " already exists, not redeclaring")
when not declared(swsgetgaussianvec):
  proc swsgetgaussianvec*(variance: cdouble; quality: cdouble): ptr Swsvector_520094176 {.
      cdecl, importc: "sws_getGaussianVec".}
else:
  static :
    hint("Declaration of " & "swsgetgaussianvec" &
        " already exists, not redeclaring")
when not declared(swsscalevec):
  proc swsscalevec*(a: ptr Swsvector_520094176; scalar: cdouble): void {.cdecl,
      importc: "sws_scaleVec".}
else:
  static :
    hint("Declaration of " & "swsscalevec" & " already exists, not redeclaring")
when not declared(swsnormalizevec):
  proc swsnormalizevec*(a: ptr Swsvector_520094176; height: cdouble): void {.
      cdecl, importc: "sws_normalizeVec".}
else:
  static :
    hint("Declaration of " & "swsnormalizevec" &
        " already exists, not redeclaring")
when not declared(swsfreevec):
  proc swsfreevec*(a: ptr Swsvector_520094176): void {.cdecl,
      importc: "sws_freeVec".}
else:
  static :
    hint("Declaration of " & "swsfreevec" & " already exists, not redeclaring")
when not declared(swsgetdefaultfilter):
  proc swsgetdefaultfilter*(lumagblur: cfloat; chromagblur: cfloat;
                            lumasharpen: cfloat; chromasharpen: cfloat;
                            chromahshift: cfloat; chromavshift: cfloat;
                            verbose: cint): ptr Swsfilter_520094180 {.cdecl,
      importc: "sws_getDefaultFilter".}
else:
  static :
    hint("Declaration of " & "swsgetdefaultfilter" &
        " already exists, not redeclaring")
when not declared(swsfreefilter):
  proc swsfreefilter*(filter: ptr Swsfilter_520094180): void {.cdecl,
      importc: "sws_freeFilter".}
else:
  static :
    hint("Declaration of " & "swsfreefilter" &
        " already exists, not redeclaring")
when not declared(swsgetcachedcontext):
  proc swsgetcachedcontext*(context: ptr structswscontext; srcw: cint;
                            srch: cint; srcformat: enumavpixelformat_520094103;
                            dstw: cint; dsth: cint;
                            dstformat: enumavpixelformat_520094103; flags: cint;
                            srcfilter: ptr Swsfilter_520094180;
                            dstfilter: ptr Swsfilter_520094180;
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
  proc swsgetclass*(): ptr Avclass_520094099 {.cdecl, importc: "sws_get_class".}
else:
  static :
    hint("Declaration of " & "swsgetclass" & " already exists, not redeclaring")