
from macros import hint

when not declared(Avoptflagimplicitkey):
  const
    Avoptflagimplicitkey* = cuint(1)
else:
  static :
    hint("Declaration of " & "Avoptflagimplicitkey" &
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
when not declared(enumavoptiontype):
  type
    enumavoptiontype* {.size: sizeof(cuint).} = enum
      Avopttypeflags = 1, Avopttypeint = 2, Avopttypeint64 = 3,
      Avopttypedouble = 4, Avopttypefloat = 5, Avopttypestring = 6,
      Avopttyperational = 7, Avopttypebinary = 8, Avopttypedict = 9,
      Avopttypeuint64 = 10, Avopttypeconst = 11, Avopttypeimagesize = 12,
      Avopttypepixelfmt = 13, Avopttypesamplefmt = 14, Avopttypevideorate = 15,
      Avopttypeduration = 16, Avopttypecolor = 17, Avopttypebool = 18,
      Avopttypechlayout = 19, Avopttypeflagarray = 65536
else:
  static :
    hint("Declaration of " & "enumavoptiontype" &
        " already exists, not redeclaring")
when not declared(structavbprint):
  type
    structavbprint* = distinct object
else:
  static :
    hint("Declaration of " & "structavbprint" &
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
when not declared(compilerbuiltinconstantp):
  type
    compilerbuiltinconstantp* = distinct object
else:
  static :
    hint("Declaration of " & "compilerbuiltinconstantp" &
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
  structavrational_520094255 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094257 = structavrational_520094256 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/rational.h:61:3
  unionavintfloat32_520094263 {.union, bycopy.} = object
    i*: uint32               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:27:7
    f*: cfloat

  unionavintfloat64_520094265 {.union, bycopy.} = object
    i*: uint64               ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/intfloat.h:32:7
    f*: cdouble

  Avclasscategory_520094271 = enumavclasscategory_520094270 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:47:2
  structavclass_520094273 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption_520094276
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094272
    getcategory*: proc (a0: pointer): Avclasscategory_520094272 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges_520094278; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094274 {.
        cdecl.}

  structavoption_defaultval_t {.union, bycopy.} = object
    i64*: int64
    dbl*: cdouble
    str*: cstring
    q*: Avrational_520094258
    arr*: ptr Avoptionarraydef_520094322

  structavoption_520094275 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:346:16
    help*: cstring
    offset*: cint
    typefield*: enumavoptiontype_520094318
    defaultval*: structavoption_defaultval_t
    min*: cdouble
    max*: cdouble
    flags*: cint
    unit*: cstring

  structavoptionranges_520094277 {.pure, inheritable, bycopy.} = object
    range*: ptr ptr Avoptionrange_520094335 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:425:16
    nbranges*: cint
    nbcomponents*: cint

  Avclass_520094279 = structavclass_520094274 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/log.h:147:3
  valist_520094281 = compilerbuiltinvalist ## Generated based on /usr/lib/clang/17/include/stdarg.h:22:27
  structavchannelcustom_520094301 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094296 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:267:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avchannelcustom_520094303 = structavchannelcustom_520094302 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:271:3
  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094304

  structavchannellayout_520094305 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094298 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:303:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avchannellayout_520094307 = structavchannellayout_520094306 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/channel_layout.h:361:3
  structavdictionaryentry_520094309 {.pure, inheritable, bycopy.} = object
    key*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:89:16
    value*: cstring

  Avdictionaryentry_520094311 = structavdictionaryentry_520094310 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:92:3
  Avdictionary_520094313 = structavdictionary ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/dict.h:94:29
  structavoptionarraydef_520094319 {.pure, inheritable, bycopy.} = object
    def*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:312:16
    sizemin*: cuint
    sizemax*: cuint
    sep*: cschar

  Avoptionarraydef_520094321 = structavoptionarraydef_520094320 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:341:3
  Avoption_520094323 = structavoption_520094276 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:397:3
  structavoptionrange_520094332 {.pure, inheritable, bycopy.} = object
    str*: cstring            ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:402:16
    valuemin*: cdouble
    valuemax*: cdouble
    componentmin*: cdouble
    componentmax*: cdouble
    isrange*: cint

  Avoptionrange_520094334 = structavoptionrange_520094333 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:420:3
  Avoptionranges_520094336 = structavoptionranges_520094278 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:465:3
  Avdictionary_520094314 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094313)
  valist_520094282 = (when declared(valist):
    valist
   else:
    valist_520094281)
  unionavintfloat64_520094266 = (when declared(unionavintfloat64):
    unionavintfloat64
   else:
    unionavintfloat64_520094265)
  enumavchannelorder_520094298 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094297)
  enumavpicturetype_520094262 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094261)
  enumavcolorprimaries_520094286 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094285)
  enumavrounding_520094268 = (when declared(enumavrounding):
    enumavrounding
   else:
    enumavrounding_520094267)
  Avchannelcustom_520094304 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094303)
  Avoption_520094324 = (when declared(Avoption):
    Avoption
   else:
    Avoption_520094323)
  enumavcolorrange_520094292 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094291)
  enumavsampleformat_520094316 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094315)
  Avclasscategory_520094272 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094271)
  structavchannelcustom_520094302 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094301)
  enumavmediatype_520094260 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094259)
  structavchannellayout_520094306 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094305)
  Avdictionaryentry_520094312 = (when declared(Avdictionaryentry):
    Avdictionaryentry
   else:
    Avdictionaryentry_520094311)
  Avclass_520094280 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094279)
  enumavchromalocation_520094294 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094293)
  Avoptionranges_520094337 = (when declared(Avoptionranges):
    Avoptionranges
   else:
    Avoptionranges_520094336)
  Avoptionrange_520094335 = (when declared(Avoptionrange):
    Avoptionrange
   else:
    Avoptionrange_520094334)
  Avchannellayout_520094308 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094307)
  structavrational_520094256 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094255)
  structavdictionaryentry_520094310 = (when declared(structavdictionaryentry):
    structavdictionaryentry
   else:
    structavdictionaryentry_520094309)
  structavoptionarraydef_520094320 = (when declared(structavoptionarraydef):
    structavoptionarraydef
   else:
    structavoptionarraydef_520094319)
  unionavintfloat32_520094264 = (when declared(unionavintfloat32):
    unionavintfloat32
   else:
    unionavintfloat32_520094263)
  structavoption_520094276 = (when declared(structavoption):
    structavoption
   else:
    structavoption_520094275)
  enumavcolortransfercharacteristic_520094288 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094287)
  enumavoptiontype_520094318 = (when declared(enumavoptiontype):
    enumavoptiontype
   else:
    enumavoptiontype_520094317)
  Avoptionarraydef_520094322 = (when declared(Avoptionarraydef):
    Avoptionarraydef
   else:
    Avoptionarraydef_520094321)
  enumavclasscategory_520094270 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094269)
  enumavchannel_520094296 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094295)
  enumavpixelformat_520094284 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094283)
  structavoptionrange_520094333 = (when declared(structavoptionrange):
    structavoptionrange
   else:
    structavoptionrange_520094332)
  structavoptionranges_520094278 = (when declared(structavoptionranges):
    structavoptionranges
   else:
    structavoptionranges_520094277)
  enumavcolorspace_520094290 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094289)
  Avrational_520094258 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094257)
  enumavmatrixencoding_520094300 = (when declared(enumavmatrixencoding):
    enumavmatrixencoding
   else:
    enumavmatrixencoding_520094299)
  structavclass_520094274 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094273)
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094313
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
when not declared(valist):
  type
    valist* = valist_520094281
else:
  static :
    hint("Declaration of " & "valist" & " already exists, not redeclaring")
when not declared(unionavintfloat64):
  type
    unionavintfloat64* = unionavintfloat64_520094265
else:
  static :
    hint("Declaration of " & "unionavintfloat64" &
        " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094303
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avoption):
  type
    Avoption* = Avoption_520094323
else:
  static :
    hint("Declaration of " & "Avoption" & " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520094271
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094301
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094305
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(Avdictionaryentry):
  type
    Avdictionaryentry* = Avdictionaryentry_520094311
else:
  static :
    hint("Declaration of " & "Avdictionaryentry" &
        " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094279
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(Avoptionranges):
  type
    Avoptionranges* = Avoptionranges_520094336
else:
  static :
    hint("Declaration of " & "Avoptionranges" &
        " already exists, not redeclaring")
when not declared(Avoptionrange):
  type
    Avoptionrange* = Avoptionrange_520094334
else:
  static :
    hint("Declaration of " & "Avoptionrange" &
        " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094307
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094255
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(structavdictionaryentry):
  type
    structavdictionaryentry* = structavdictionaryentry_520094309
else:
  static :
    hint("Declaration of " & "structavdictionaryentry" &
        " already exists, not redeclaring")
when not declared(structavoptionarraydef):
  type
    structavoptionarraydef* = structavoptionarraydef_520094319
else:
  static :
    hint("Declaration of " & "structavoptionarraydef" &
        " already exists, not redeclaring")
when not declared(unionavintfloat32):
  type
    unionavintfloat32* = unionavintfloat32_520094263
else:
  static :
    hint("Declaration of " & "unionavintfloat32" &
        " already exists, not redeclaring")
when not declared(structavoption):
  type
    structavoption* = structavoption_520094275
else:
  static :
    hint("Declaration of " & "structavoption" &
        " already exists, not redeclaring")
when not declared(Avoptionarraydef):
  type
    Avoptionarraydef* = Avoptionarraydef_520094321
else:
  static :
    hint("Declaration of " & "Avoptionarraydef" &
        " already exists, not redeclaring")
when not declared(structavoptionrange):
  type
    structavoptionrange* = structavoptionrange_520094332
else:
  static :
    hint("Declaration of " & "structavoptionrange" &
        " already exists, not redeclaring")
when not declared(structavoptionranges):
  type
    structavoptionranges* = structavoptionranges_520094277
else:
  static :
    hint("Declaration of " & "structavoptionranges" &
        " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094257
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(structavclass):
  type
    structavclass* = structavclass_520094273
else:
  static :
    hint("Declaration of " & "structavclass" &
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
when not declared(Avoptserializeskipdefaults):
  when 1 is static:
    const
      Avoptserializeskipdefaults* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:930:9
  else:
    let Avoptserializeskipdefaults* = 1 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:930:9
else:
  static :
    hint("Declaration of " & "Avoptserializeskipdefaults" &
        " already exists, not redeclaring")
when not declared(Avoptserializeoptflagsexact):
  when 2 is static:
    const
      Avoptserializeoptflagsexact* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:931:9
  else:
    let Avoptserializeoptflagsexact* = 2 ## Generated based on /home/jose/src/nimlang/ffmpeg.nim/src/wrapper/FFmpeg/libavutil/opt.h:931:9
else:
  static :
    hint("Declaration of " & "Avoptserializeoptflagsexact" &
        " already exists, not redeclaring")
when not declared(avreduce):
  proc avreduce*(dstnum: ptr cint; dstden: ptr cint; num: int64; den: int64;
                 max: int64): cint {.cdecl, importc: "av_reduce".}
else:
  static :
    hint("Declaration of " & "avreduce" & " already exists, not redeclaring")
when not declared(avmulq):
  proc avmulq*(b: Avrational_520094258; c: Avrational_520094258): Avrational_520094258 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094258; c: Avrational_520094258): Avrational_520094258 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094258; c: Avrational_520094258): Avrational_520094258 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094258; c: Avrational_520094258): Avrational_520094258 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094258 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094258; q1: Avrational_520094258;
                  q2: Avrational_520094258): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094258; qlist: ptr Avrational_520094258): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094258): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094258; b: Avrational_520094258; maxden: cint;
               def: Avrational_520094258): Avrational_520094258 {.cdecl,
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
  proc avgetmediatypestring*(mediatype: enumavmediatype_520094260): cstring {.
      cdecl, importc: "av_get_media_type_string".}
else:
  static :
    hint("Declaration of " & "avgetmediatypestring" &
        " already exists, not redeclaring")
when not declared(avgetpicturetypechar):
  proc avgetpicturetypechar*(picttype: enumavpicturetype_520094262): cschar {.
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
  proc avrescalernd*(a: int64; b: int64; c: int64; rnd: enumavrounding_520094268): int64 {.
      cdecl, importc: "av_rescale_rnd".}
else:
  static :
    hint("Declaration of " & "avrescalernd" & " already exists, not redeclaring")
when not declared(avrescaleq):
  proc avrescaleq*(a: int64; bq: Avrational_520094258; cq: Avrational_520094258): int64 {.
      cdecl, importc: "av_rescale_q".}
else:
  static :
    hint("Declaration of " & "avrescaleq" & " already exists, not redeclaring")
when not declared(avrescaleqrnd):
  proc avrescaleqrnd*(a: int64; bq: Avrational_520094258; cq: Avrational_520094258;
                      rnd: enumavrounding_520094268): int64 {.cdecl,
      importc: "av_rescale_q_rnd".}
else:
  static :
    hint("Declaration of " & "avrescaleqrnd" &
        " already exists, not redeclaring")
when not declared(avcomparets):
  proc avcomparets*(tsa: int64; tba: Avrational_520094258; tsb: int64;
                    tbb: Avrational_520094258): cint {.cdecl,
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
  proc avrescaledelta*(intb: Avrational_520094258; ints: int64;
                       fstb: Avrational_520094258; duration: cint;
                       last: ptr int64; outtb: Avrational_520094258): int64 {.
      cdecl, importc: "av_rescale_delta".}
else:
  static :
    hint("Declaration of " & "avrescaledelta" &
        " already exists, not redeclaring")
when not declared(avaddstable):
  proc avaddstable*(tstb: Avrational_520094258; ts: int64; inctb: Avrational_520094258;
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
  proc avdefaultgetcategory*(ptrarg: pointer): Avclasscategory_520094272 {.
      cdecl, importc: "av_default_get_category".}
else:
  static :
    hint("Declaration of " & "avdefaultgetcategory" &
        " already exists, not redeclaring")
when not declared(avlogformatline):
  proc avlogformatline*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094282;
                        line: cstring; linesize: cint; printprefix: ptr cint): void {.
      cdecl, importc: "av_log_format_line".}
else:
  static :
    hint("Declaration of " & "avlogformatline" &
        " already exists, not redeclaring")
when not declared(avlogformatline2):
  proc avlogformatline2*(ptrarg: pointer; level: cint; fmt: cstring; vl: valist_520094282;
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
  proc avgettimebaseq*(): Avrational_520094258 {.cdecl,
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
  proc avchannelname*(buf: cstring; bufsize: csize_t; channel: enumavchannel_520094296): cint {.
      cdecl, importc: "av_channel_name".}
else:
  static :
    hint("Declaration of " & "avchannelname" &
        " already exists, not redeclaring")
when not declared(avchannelnamebprint):
  proc avchannelnamebprint*(bp: ptr structavbprint; channelid: enumavchannel_520094296): void {.
      cdecl, importc: "av_channel_name_bprint".}
else:
  static :
    hint("Declaration of " & "avchannelnamebprint" &
        " already exists, not redeclaring")
when not declared(avchanneldescription):
  proc avchanneldescription*(buf: cstring; bufsize: csize_t;
                             channel: enumavchannel_520094296): cint {.cdecl,
      importc: "av_channel_description".}
else:
  static :
    hint("Declaration of " & "avchanneldescription" &
        " already exists, not redeclaring")
when not declared(avchanneldescriptionbprint):
  proc avchanneldescriptionbprint*(bp: ptr structavbprint;
                                   channelid: enumavchannel_520094296): void {.
      cdecl, importc: "av_channel_description_bprint".}
else:
  static :
    hint("Declaration of " & "avchanneldescriptionbprint" &
        " already exists, not redeclaring")
when not declared(avchannelfromstring):
  proc avchannelfromstring*(name: cstring): enumavchannel_520094296 {.cdecl,
      importc: "av_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcustominit):
  proc avchannellayoutcustominit*(channellayout: ptr Avchannellayout_520094308;
                                  nbchannels: cint): cint {.cdecl,
      importc: "av_channel_layout_custom_init".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcustominit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfrommask):
  proc avchannellayoutfrommask*(channellayout: ptr Avchannellayout_520094308;
                                mask: uint64): cint {.cdecl,
      importc: "av_channel_layout_from_mask".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfrommask" &
        " already exists, not redeclaring")
when not declared(avchannellayoutfromstring):
  proc avchannellayoutfromstring*(channellayout: ptr Avchannellayout_520094308;
                                  str: cstring): cint {.cdecl,
      importc: "av_channel_layout_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdefault):
  proc avchannellayoutdefault*(chlayout: ptr Avchannellayout_520094308;
                               nbchannels: cint): void {.cdecl,
      importc: "av_channel_layout_default".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdefault" &
        " already exists, not redeclaring")
when not declared(avchannellayoutstandard):
  proc avchannellayoutstandard*(opaque: ptr pointer): ptr Avchannellayout_520094308 {.
      cdecl, importc: "av_channel_layout_standard".}
else:
  static :
    hint("Declaration of " & "avchannellayoutstandard" &
        " already exists, not redeclaring")
when not declared(avchannellayoutuninit):
  proc avchannellayoutuninit*(channellayout: ptr Avchannellayout_520094308): void {.
      cdecl, importc: "av_channel_layout_uninit".}
else:
  static :
    hint("Declaration of " & "avchannellayoutuninit" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcopy):
  proc avchannellayoutcopy*(dst: ptr Avchannellayout_520094308;
                            src: ptr Avchannellayout_520094308): cint {.cdecl,
      importc: "av_channel_layout_copy".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcopy" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribe):
  proc avchannellayoutdescribe*(channellayout: ptr Avchannellayout_520094308;
                                buf: cstring; bufsize: csize_t): cint {.cdecl,
      importc: "av_channel_layout_describe".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribe" &
        " already exists, not redeclaring")
when not declared(avchannellayoutdescribebprint):
  proc avchannellayoutdescribebprint*(channellayout: ptr Avchannellayout_520094308;
                                      bp: ptr structavbprint): cint {.cdecl,
      importc: "av_channel_layout_describe_bprint".}
else:
  static :
    hint("Declaration of " & "avchannellayoutdescribebprint" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromindex):
  proc avchannellayoutchannelfromindex*(channellayout: ptr Avchannellayout_520094308;
                                        idx: cuint): enumavchannel_520094296 {.
      cdecl, importc: "av_channel_layout_channel_from_index".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromindex" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromchannel):
  proc avchannellayoutindexfromchannel*(channellayout: ptr Avchannellayout_520094308;
                                        channel: enumavchannel_520094296): cint {.
      cdecl, importc: "av_channel_layout_index_from_channel".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromchannel" &
        " already exists, not redeclaring")
when not declared(avchannellayoutindexfromstring):
  proc avchannellayoutindexfromstring*(channellayout: ptr Avchannellayout_520094308;
                                       name: cstring): cint {.cdecl,
      importc: "av_channel_layout_index_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutindexfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutchannelfromstring):
  proc avchannellayoutchannelfromstring*(channellayout: ptr Avchannellayout_520094308;
      name: cstring): enumavchannel_520094296 {.cdecl,
      importc: "av_channel_layout_channel_from_string".}
else:
  static :
    hint("Declaration of " & "avchannellayoutchannelfromstring" &
        " already exists, not redeclaring")
when not declared(avchannellayoutsubset):
  proc avchannellayoutsubset*(channellayout: ptr Avchannellayout_520094308;
                              mask: uint64): uint64 {.cdecl,
      importc: "av_channel_layout_subset".}
else:
  static :
    hint("Declaration of " & "avchannellayoutsubset" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcheck):
  proc avchannellayoutcheck*(channellayout: ptr Avchannellayout_520094308): cint {.
      cdecl, importc: "av_channel_layout_check".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcheck" &
        " already exists, not redeclaring")
when not declared(avchannellayoutcompare):
  proc avchannellayoutcompare*(chl: ptr Avchannellayout_520094308;
                               chl1: ptr Avchannellayout_520094308): cint {.
      cdecl, importc: "av_channel_layout_compare".}
else:
  static :
    hint("Declaration of " & "avchannellayoutcompare" &
        " already exists, not redeclaring")
when not declared(avchannellayoutretype):
  proc avchannellayoutretype*(channellayout: ptr Avchannellayout_520094308;
                              order: enumavchannelorder_520094298; flags: cint): cint {.
      cdecl, importc: "av_channel_layout_retype".}
else:
  static :
    hint("Declaration of " & "avchannellayoutretype" &
        " already exists, not redeclaring")
when not declared(avdictget):
  proc avdictget*(m: ptr Avdictionary_520094314; key: cstring;
                  prev: ptr Avdictionaryentry_520094312; flags: cint): ptr Avdictionaryentry_520094312 {.
      cdecl, importc: "av_dict_get".}
else:
  static :
    hint("Declaration of " & "avdictget" & " already exists, not redeclaring")
when not declared(avdictiterate):
  proc avdictiterate*(m: ptr Avdictionary_520094314; prev: ptr Avdictionaryentry_520094312): ptr Avdictionaryentry_520094312 {.
      cdecl, importc: "av_dict_iterate".}
else:
  static :
    hint("Declaration of " & "avdictiterate" &
        " already exists, not redeclaring")
when not declared(avdictcount):
  proc avdictcount*(m: ptr Avdictionary_520094314): cint {.cdecl,
      importc: "av_dict_count".}
else:
  static :
    hint("Declaration of " & "avdictcount" & " already exists, not redeclaring")
when not declared(avdictset):
  proc avdictset*(pm: ptr ptr Avdictionary_520094314; key: cstring;
                  value: cstring; flags: cint): cint {.cdecl,
      importc: "av_dict_set".}
else:
  static :
    hint("Declaration of " & "avdictset" & " already exists, not redeclaring")
when not declared(avdictsetint):
  proc avdictsetint*(pm: ptr ptr Avdictionary_520094314; key: cstring;
                     value: int64; flags: cint): cint {.cdecl,
      importc: "av_dict_set_int".}
else:
  static :
    hint("Declaration of " & "avdictsetint" & " already exists, not redeclaring")
when not declared(avdictparsestring):
  proc avdictparsestring*(pm: ptr ptr Avdictionary_520094314; str: cstring;
                          keyvalsep: cstring; pairssep: cstring; flags: cint): cint {.
      cdecl, importc: "av_dict_parse_string".}
else:
  static :
    hint("Declaration of " & "avdictparsestring" &
        " already exists, not redeclaring")
when not declared(avdictcopy):
  proc avdictcopy*(dst: ptr ptr Avdictionary_520094314; src: ptr Avdictionary_520094314;
                   flags: cint): cint {.cdecl, importc: "av_dict_copy".}
else:
  static :
    hint("Declaration of " & "avdictcopy" & " already exists, not redeclaring")
when not declared(avdictfree):
  proc avdictfree*(m: ptr ptr Avdictionary_520094314): void {.cdecl,
      importc: "av_dict_free".}
else:
  static :
    hint("Declaration of " & "avdictfree" & " already exists, not redeclaring")
when not declared(avdictgetstring):
  proc avdictgetstring*(m: ptr Avdictionary_520094314; buffer: ptr cstring;
                        keyvalsep: cschar; pairssep: cschar): cint {.cdecl,
      importc: "av_dict_get_string".}
else:
  static :
    hint("Declaration of " & "avdictgetstring" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtname):
  proc avgetsamplefmtname*(samplefmt: enumavsampleformat_520094316): cstring {.
      cdecl, importc: "av_get_sample_fmt_name".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtname" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmt):
  proc avgetsamplefmt*(name: cstring): enumavsampleformat_520094316 {.cdecl,
      importc: "av_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetaltsamplefmt):
  proc avgetaltsamplefmt*(samplefmt: enumavsampleformat_520094316; planar: cint): enumavsampleformat_520094316 {.
      cdecl, importc: "av_get_alt_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetaltsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetpackedsamplefmt):
  proc avgetpackedsamplefmt*(samplefmt: enumavsampleformat_520094316): enumavsampleformat_520094316 {.
      cdecl, importc: "av_get_packed_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetpackedsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetplanarsamplefmt):
  proc avgetplanarsamplefmt*(samplefmt: enumavsampleformat_520094316): enumavsampleformat_520094316 {.
      cdecl, importc: "av_get_planar_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avgetplanarsamplefmt" &
        " already exists, not redeclaring")
when not declared(avgetsamplefmtstring):
  proc avgetsamplefmtstring*(buf: cstring; bufsize: cint;
                             samplefmt: enumavsampleformat_520094316): cstring {.
      cdecl, importc: "av_get_sample_fmt_string".}
else:
  static :
    hint("Declaration of " & "avgetsamplefmtstring" &
        " already exists, not redeclaring")
when not declared(avgetbytespersample):
  proc avgetbytespersample*(samplefmt: enumavsampleformat_520094316): cint {.
      cdecl, importc: "av_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbytespersample" &
        " already exists, not redeclaring")
when not declared(avsamplefmtisplanar):
  proc avsamplefmtisplanar*(samplefmt: enumavsampleformat_520094316): cint {.
      cdecl, importc: "av_sample_fmt_is_planar".}
else:
  static :
    hint("Declaration of " & "avsamplefmtisplanar" &
        " already exists, not redeclaring")
when not declared(avsamplesgetbuffersize):
  proc avsamplesgetbuffersize*(linesize: ptr cint; nbchannels: cint;
                               nbsamples: cint; samplefmt: enumavsampleformat_520094316;
                               align: cint): cint {.cdecl,
      importc: "av_samples_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "avsamplesgetbuffersize" &
        " already exists, not redeclaring")
when not declared(avsamplesfillarrays):
  proc avsamplesfillarrays*(audiodata: ptr ptr uint8; linesize: ptr cint;
                            buf: ptr uint8; nbchannels: cint; nbsamples: cint;
                            samplefmt: enumavsampleformat_520094316; align: cint): cint {.
      cdecl, importc: "av_samples_fill_arrays".}
else:
  static :
    hint("Declaration of " & "avsamplesfillarrays" &
        " already exists, not redeclaring")
when not declared(avsamplesalloc):
  proc avsamplesalloc*(audiodata: ptr ptr uint8; linesize: ptr cint;
                       nbchannels: cint; nbsamples: cint;
                       samplefmt: enumavsampleformat_520094316; align: cint): cint {.
      cdecl, importc: "av_samples_alloc".}
else:
  static :
    hint("Declaration of " & "avsamplesalloc" &
        " already exists, not redeclaring")
when not declared(avsamplesallocarrayandsamples):
  proc avsamplesallocarrayandsamples*(audiodata: ptr ptr ptr uint8;
                                      linesize: ptr cint; nbchannels: cint;
                                      nbsamples: cint;
                                      samplefmt: enumavsampleformat_520094316;
                                      align: cint): cint {.cdecl,
      importc: "av_samples_alloc_array_and_samples".}
else:
  static :
    hint("Declaration of " & "avsamplesallocarrayandsamples" &
        " already exists, not redeclaring")
when not declared(avsamplescopy):
  proc avsamplescopy*(dst: ptr ptr uint8; src: ptr ptr uint8; dstoffset: cint;
                      srcoffset: cint; nbsamples: cint; nbchannels: cint;
                      samplefmt: enumavsampleformat_520094316): cint {.cdecl,
      importc: "av_samples_copy".}
else:
  static :
    hint("Declaration of " & "avsamplescopy" &
        " already exists, not redeclaring")
when not declared(avsamplessetsilence):
  proc avsamplessetsilence*(audiodata: ptr ptr uint8; offset: cint;
                            nbsamples: cint; nbchannels: cint;
                            samplefmt: enumavsampleformat_520094316): cint {.
      cdecl, importc: "av_samples_set_silence".}
else:
  static :
    hint("Declaration of " & "avsamplessetsilence" &
        " already exists, not redeclaring")
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
when not declared(avoptfree):
  proc avoptfree*(obj: pointer): void {.cdecl, importc: "av_opt_free".}
else:
  static :
    hint("Declaration of " & "avoptfree" & " already exists, not redeclaring")
when not declared(avoptnext):
  proc avoptnext*(obj: pointer; prev: ptr Avoption_520094324): ptr Avoption_520094324 {.
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
  proc avoptchildclassiterate*(parent: ptr Avclass_520094280; iter: ptr pointer): ptr Avclass_520094280 {.
      cdecl, importc: "av_opt_child_class_iterate".}
else:
  static :
    hint("Declaration of " & "avoptchildclassiterate" &
        " already exists, not redeclaring")
when not declared(avoptfind):
  proc avoptfind*(obj: pointer; name: cstring; unit: cstring; optflags: cint;
                  searchflags: cint): ptr Avoption_520094324 {.cdecl,
      importc: "av_opt_find".}
else:
  static :
    hint("Declaration of " & "avoptfind" & " already exists, not redeclaring")
when not declared(avoptfind2):
  proc avoptfind2*(obj: pointer; name: cstring; unit: cstring; optflags: cint;
                   searchflags: cint; targetobj: ptr pointer): ptr Avoption_520094324 {.
      cdecl, importc: "av_opt_find2".}
else:
  static :
    hint("Declaration of " & "avoptfind2" & " already exists, not redeclaring")
when not declared(avoptshow2):
  proc avoptshow2*(obj: pointer; avlogobj: pointer; reqflags: cint;
                   rejflags: cint): cint {.cdecl, importc: "av_opt_show2".}
else:
  static :
    hint("Declaration of " & "avoptshow2" & " already exists, not redeclaring")
when not declared(avoptgetkeyvalue):
  proc avoptgetkeyvalue*(ropts: ptr cstring; keyvalsep: cstring;
                         pairssep: cstring; flags: cuint; rkey: ptr cstring;
                         rval: ptr cstring): cint {.cdecl,
      importc: "av_opt_get_key_value".}
else:
  static :
    hint("Declaration of " & "avoptgetkeyvalue" &
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
when not declared(avoptcopy):
  proc avoptcopy*(dest: pointer; src: pointer): cint {.cdecl,
      importc: "av_opt_copy".}
else:
  static :
    hint("Declaration of " & "avoptcopy" & " already exists, not redeclaring")
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
  proc avoptsetq*(obj: pointer; name: cstring; val: Avrational_520094258;
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
  proc avoptsetpixelfmt*(obj: pointer; name: cstring; fmt: enumavpixelformat_520094284;
                         searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_pixel_fmt".}
else:
  static :
    hint("Declaration of " & "avoptsetpixelfmt" &
        " already exists, not redeclaring")
when not declared(avoptsetsamplefmt):
  proc avoptsetsamplefmt*(obj: pointer; name: cstring; fmt: enumavsampleformat_520094316;
                          searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avoptsetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avoptsetvideorate):
  proc avoptsetvideorate*(obj: pointer; name: cstring; val: Avrational_520094258;
                          searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_video_rate".}
else:
  static :
    hint("Declaration of " & "avoptsetvideorate" &
        " already exists, not redeclaring")
when not declared(avoptsetchlayout):
  proc avoptsetchlayout*(obj: pointer; name: cstring;
                         layout: ptr Avchannellayout_520094308;
                         searchflags: cint): cint {.cdecl,
      importc: "av_opt_set_chlayout".}
else:
  static :
    hint("Declaration of " & "avoptsetchlayout" &
        " already exists, not redeclaring")
when not declared(avoptsetdictval):
  proc avoptsetdictval*(obj: pointer; name: cstring; val: ptr Avdictionary_520094314;
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
                  outval: ptr Avrational_520094258): cint {.cdecl,
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
                         outfmt: ptr enumavpixelformat_520094284): cint {.cdecl,
      importc: "av_opt_get_pixel_fmt".}
else:
  static :
    hint("Declaration of " & "avoptgetpixelfmt" &
        " already exists, not redeclaring")
when not declared(avoptgetsamplefmt):
  proc avoptgetsamplefmt*(obj: pointer; name: cstring; searchflags: cint;
                          outfmt: ptr enumavsampleformat_520094316): cint {.
      cdecl, importc: "av_opt_get_sample_fmt".}
else:
  static :
    hint("Declaration of " & "avoptgetsamplefmt" &
        " already exists, not redeclaring")
when not declared(avoptgetvideorate):
  proc avoptgetvideorate*(obj: pointer; name: cstring; searchflags: cint;
                          outval: ptr Avrational_520094258): cint {.cdecl,
      importc: "av_opt_get_video_rate".}
else:
  static :
    hint("Declaration of " & "avoptgetvideorate" &
        " already exists, not redeclaring")
when not declared(avoptgetchlayout):
  proc avoptgetchlayout*(obj: pointer; name: cstring; searchflags: cint;
                         layout: ptr Avchannellayout_520094308): cint {.cdecl,
      importc: "av_opt_get_chlayout".}
else:
  static :
    hint("Declaration of " & "avoptgetchlayout" &
        " already exists, not redeclaring")
when not declared(avoptgetdictval):
  proc avoptgetdictval*(obj: pointer; name: cstring; searchflags: cint;
                        outval: ptr ptr Avdictionary_520094314): cint {.cdecl,
      importc: "av_opt_get_dict_val".}
else:
  static :
    hint("Declaration of " & "avoptgetdictval" &
        " already exists, not redeclaring")
when not declared(avoptevalflags):
  proc avoptevalflags*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                       flagsout: ptr cint): cint {.cdecl,
      importc: "av_opt_eval_flags".}
else:
  static :
    hint("Declaration of " & "avoptevalflags" &
        " already exists, not redeclaring")
when not declared(avoptevalint):
  proc avoptevalint*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                     intout: ptr cint): cint {.cdecl, importc: "av_opt_eval_int".}
else:
  static :
    hint("Declaration of " & "avoptevalint" & " already exists, not redeclaring")
when not declared(avoptevalint64):
  proc avoptevalint64*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                       int64out: ptr int64): cint {.cdecl,
      importc: "av_opt_eval_int64".}
else:
  static :
    hint("Declaration of " & "avoptevalint64" &
        " already exists, not redeclaring")
when not declared(avoptevalfloat):
  proc avoptevalfloat*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                       floatout: ptr cfloat): cint {.cdecl,
      importc: "av_opt_eval_float".}
else:
  static :
    hint("Declaration of " & "avoptevalfloat" &
        " already exists, not redeclaring")
when not declared(avoptevaldouble):
  proc avoptevaldouble*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                        doubleout: ptr cdouble): cint {.cdecl,
      importc: "av_opt_eval_double".}
else:
  static :
    hint("Declaration of " & "avoptevaldouble" &
        " already exists, not redeclaring")
when not declared(avoptevalq):
  proc avoptevalq*(obj: pointer; o: ptr Avoption_520094324; val: cstring;
                   qout: ptr Avrational_520094258): cint {.cdecl,
      importc: "av_opt_eval_q".}
else:
  static :
    hint("Declaration of " & "avoptevalq" & " already exists, not redeclaring")
when not declared(avoptptr):
  proc avoptptr*(avclass: ptr Avclass_520094280; obj: pointer; name: cstring): pointer {.
      cdecl, importc: "av_opt_ptr".}
else:
  static :
    hint("Declaration of " & "avoptptr" & " already exists, not redeclaring")
when not declared(avoptissettodefault):
  proc avoptissettodefault*(obj: pointer; o: ptr Avoption_520094324): cint {.
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
when not declared(avoptflagisset):
  proc avoptflagisset*(obj: pointer; fieldname: cstring; flagname: cstring): cint {.
      cdecl, importc: "av_opt_flag_is_set".}
else:
  static :
    hint("Declaration of " & "avoptflagisset" &
        " already exists, not redeclaring")
when not declared(avoptserialize):
  proc avoptserialize*(obj: pointer; optflags: cint; flags: cint;
                       buffer: ptr cstring; keyvalsep: cschar; pairssep: cschar): cint {.
      cdecl, importc: "av_opt_serialize".}
else:
  static :
    hint("Declaration of " & "avoptserialize" &
        " already exists, not redeclaring")
when not declared(avoptfreepranges):
  proc avoptfreepranges*(ranges: ptr ptr Avoptionranges_520094337): void {.
      cdecl, importc: "av_opt_freep_ranges".}
else:
  static :
    hint("Declaration of " & "avoptfreepranges" &
        " already exists, not redeclaring")
when not declared(avoptqueryranges):
  proc avoptqueryranges*(a0: ptr ptr Avoptionranges_520094337; obj: pointer;
                         key: cstring; flags: cint): cint {.cdecl,
      importc: "av_opt_query_ranges".}
else:
  static :
    hint("Declaration of " & "avoptqueryranges" &
        " already exists, not redeclaring")
when not declared(avoptqueryrangesdefault):
  proc avoptqueryrangesdefault*(a0: ptr ptr Avoptionranges_520094337;
                                obj: pointer; key: cstring; flags: cint): cint {.
      cdecl, importc: "av_opt_query_ranges_default".}
else:
  static :
    hint("Declaration of " & "avoptqueryrangesdefault" &
        " already exists, not redeclaring")