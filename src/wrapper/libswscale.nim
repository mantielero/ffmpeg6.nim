
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
when not declared(enumavcolorrange):
  type
    enumavcolorrange* {.size: sizeof(cuint).} = enum
      Avcolrangeunspecified = 0, Avcolrangempeg = 1, Avcolrangejpeg = 2,
      Avcolrangenb = 3
else:
  static :
    hint("Declaration of " & "enumavcolorrange" &
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
when not declared(enumavchannelorder):
  type
    enumavchannelorder* {.size: sizeof(cuint).} = enum
      Avchannelorderunspec = 0, Avchannelordernative = 1,
      Avchannelordercustom = 2, Avchannelorderambisonic = 3
else:
  static :
    hint("Declaration of " & "enumavchannelorder" &
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
when not declared(structavoption):
  type
    structavoption* = distinct object
else:
  static :
    hint("Declaration of " & "structavoption" &
        " already exists, not redeclaring")
when not declared(structavoptionranges):
  type
    structavoptionranges* = distinct object
else:
  static :
    hint("Declaration of " & "structavoptionranges" &
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
type
  structswsvector_520096528 {.pure, inheritable, bycopy.} = object
    coeff*: ptr cdouble      ## Generated based on /usr/include/libswscale/swscale.h:116:16
    length*: cint

  Swsvector_520096530 = structswsvector_520096529 ## Generated based on /usr/include/libswscale/swscale.h:119:3
  structswsfilter_520096532 {.pure, inheritable, bycopy.} = object
    lumh*: ptr Swsvector_520096531 ## Generated based on /usr/include/libswscale/swscale.h:122:16
    lumv*: ptr Swsvector_520096531
    chrh*: ptr Swsvector_520096531
    chrv*: ptr Swsvector_520096531

  Swsfilter_520096534 = structswsfilter_520096533 ## Generated based on /usr/include/libswscale/swscale.h:127:3
  Avframe_520096538 = structavframe_520096543 ## Generated based on /usr/include/libavutil/frame.h:808:3
  Avclass_520096540 = structavclass_520096545 ## Generated based on /usr/include/libavutil/log.h:147:3
  structavframe_520096542 {.pure, inheritable, bycopy.} = object
    data*: array[8'i64, ptr uint8] ## Generated based on /usr/include/libavutil/frame.h:340:16
    linesize*: array[8'i64, cint]
    extendeddata*: ptr ptr uint8
    width*: cint
    height*: cint
    nbsamples*: cint
    format*: cint
    keyframe*: cint
    picttype*: enumavpicturetype_520096547
    sampleaspectratio*: Avrational_520096549
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520096549
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
    buf*: array[8'i64, ptr Avbufferref_520096551]
    extendedbuf*: ptr ptr Avbufferref_520096551
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520096553
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520096555
    colorprimaries*: enumavcolorprimaries_520096557
    colortrc*: enumavcolortransfercharacteristic_520096559
    colorspace*: enumavcolorspace_520096561
    chromalocation*: enumavchromalocation_520096563
    bestefforttimestamp*: int64
    pktpos*: int64
    pktduration*: int64
    metadata*: ptr Avdictionary_520096565
    decodeerrorflags*: cint
    channels*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520096551
    opaqueref*: ptr Avbufferref_520096551
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520096551
    chlayout*: Avchannellayout_520096573
    duration*: int64

  structavclass_520096544 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /usr/include/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520096575
    getcategory*: proc (a0: pointer): Avclasscategory_520096575 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520096545 {.
        cdecl.}

  Avrational_520096548 = structavrational_520096577 ## Generated based on /usr/include/libavutil/rational.h:61:3
  Avbufferref_520096550 = structavbufferref_520096579 ## Generated based on /usr/include/libavutil/buffer.h:95:3
  Avframesidedata_520096552 = structavframesidedata_520096581 ## Generated based on /usr/include/libavutil/frame.h:252:3
  Avdictionary_520096564 = structavdictionary ## Generated based on /usr/include/libavutil/dict.h:94:29
  Avchannellayout_520096572 = structavchannellayout_520096583 ## Generated based on /usr/include/libavutil/channel_layout.h:365:3
  Avclasscategory_520096574 = enumavclasscategory_520096585 ## Generated based on /usr/include/libavutil/log.h:47:2
  structavrational_520096576 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /usr/include/libavutil/rational.h:58:16
    den*: cint

  structavbufferref_520096578 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520096587 ## Generated based on /usr/include/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  structavframesidedata_520096580 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520096589 ## Generated based on /usr/include/libavutil/frame.h:246:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520096565
    buf*: ptr Avbufferref_520096551

  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520096593

  structavchannellayout_520096582 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520096591 ## Generated based on /usr/include/libavutil/channel_layout.h:307:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  Avbuffer_520096586 = structavbuffer ## Generated based on /usr/include/libavutil/buffer.h:74:25
  Avchannelcustom_520096592 = structavchannelcustom_520096595 ## Generated based on /usr/include/libavutil/channel_layout.h:275:3
  structavchannelcustom_520096594 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520096597 ## Generated based on /usr/include/libavutil/channel_layout.h:271:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  Avdictionary_520096565 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520096564)
  enumavchannelorder_520096591 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520096590)
  enumavpicturetype_520096547 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520096546)
  enumavcolorprimaries_520096557 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520096556)
  Avchannelcustom_520096593 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520096592)
  enumavframesidedatatype_520096589 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520096588)
  Avframe_520096539 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520096538)
  enumavcolorrange_520096555 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520096554)
  structavframesidedata_520096581 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520096580)
  Avclasscategory_520096575 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520096574)
  Swsvector_520096531 = (when declared(Swsvector):
    Swsvector
   else:
    Swsvector_520096530)
  structavbufferref_520096579 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520096578)
  structswsfilter_520096533 = (when declared(structswsfilter):
    structswsfilter
   else:
    structswsfilter_520096532)
  structavchannellayout_520096583 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520096582)
  Avclass_520096541 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520096540)
  enumavchromalocation_520096563 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520096562)
  Avbuffer_520096587 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520096586)
  structavchannelcustom_520096595 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520096594)
  structswsvector_520096529 = (when declared(structswsvector):
    structswsvector
   else:
    structswsvector_520096528)
  Avchannellayout_520096573 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520096572)
  Avbufferref_520096551 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520096550)
  structavrational_520096577 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520096576)
  enumavcolortransfercharacteristic_520096559 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520096558)
  enumavclasscategory_520096585 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520096584)
  Avframesidedata_520096553 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520096552)
  enumavpixelformat_520096537 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520096536)
  enumavchannel_520096597 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520096596)
  Swsfilter_520096535 = (when declared(Swsfilter):
    Swsfilter
   else:
    Swsfilter_520096534)
  enumavcolorspace_520096561 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520096560)
  Avrational_520096549 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520096548)
  structavframe_520096543 = (when declared(structavframe):
    structavframe
   else:
    structavframe_520096542)
  structavclass_520096545 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520096544)
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520096564
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520096592
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520096538
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520096580
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
        " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520096574
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(Swsvector):
  type
    Swsvector* = Swsvector_520096530
else:
  static :
    hint("Declaration of " & "Swsvector" & " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520096578
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(structswsfilter):
  type
    structswsfilter* = structswsfilter_520096532
else:
  static :
    hint("Declaration of " & "structswsfilter" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520096582
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520096540
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520096586
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520096594
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(structswsvector):
  type
    structswsvector* = structswsvector_520096528
else:
  static :
    hint("Declaration of " & "structswsvector" &
        " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520096572
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520096550
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520096576
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520096552
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(Swsfilter):
  type
    Swsfilter* = Swsfilter_520096534
else:
  static :
    hint("Declaration of " & "Swsfilter" & " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520096548
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(structavframe):
  type
    structavframe* = structavframe_520096542
else:
  static :
    hint("Declaration of " & "structavframe" &
        " already exists, not redeclaring")
when not declared(structavclass):
  type
    structavclass* = structavclass_520096544
else:
  static :
    hint("Declaration of " & "structavclass" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionmajor):
  when 7 is static:
    const
      Libswscaleversionmajor* = 7 ## Generated based on /usr/include/libswscale/version_major.h:27:9
  else:
    let Libswscaleversionmajor* = 7 ## Generated based on /usr/include/libswscale/version_major.h:27:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmajor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionminor):
  when 5 is static:
    const
      Libswscaleversionminor* = 5 ## Generated based on /usr/include/libswscale/version.h:31:9
  else:
    let Libswscaleversionminor* = 5 ## Generated based on /usr/include/libswscale/version.h:31:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionminor" &
        " already exists, not redeclaring")
when not declared(Libswscaleversionmicro):
  when 100 is static:
    const
      Libswscaleversionmicro* = 100 ## Generated based on /usr/include/libswscale/version.h:32:9
  else:
    let Libswscaleversionmicro* = 100 ## Generated based on /usr/include/libswscale/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libswscaleversionmicro" &
        " already exists, not redeclaring")
when not declared(Swsfastbilinear):
  when 1 is static:
    const
      Swsfastbilinear* = 1   ## Generated based on /usr/include/libswscale/swscale.h:65:9
  else:
    let Swsfastbilinear* = 1 ## Generated based on /usr/include/libswscale/swscale.h:65:9
else:
  static :
    hint("Declaration of " & "Swsfastbilinear" &
        " already exists, not redeclaring")
when not declared(Swsbilinear):
  when 2 is static:
    const
      Swsbilinear* = 2       ## Generated based on /usr/include/libswscale/swscale.h:66:9
  else:
    let Swsbilinear* = 2     ## Generated based on /usr/include/libswscale/swscale.h:66:9
else:
  static :
    hint("Declaration of " & "Swsbilinear" & " already exists, not redeclaring")
when not declared(Swsbicubic):
  when 4 is static:
    const
      Swsbicubic* = 4        ## Generated based on /usr/include/libswscale/swscale.h:67:9
  else:
    let Swsbicubic* = 4      ## Generated based on /usr/include/libswscale/swscale.h:67:9
else:
  static :
    hint("Declaration of " & "Swsbicubic" & " already exists, not redeclaring")
when not declared(Swsx):
  when 8 is static:
    const
      Swsx* = 8              ## Generated based on /usr/include/libswscale/swscale.h:68:9
  else:
    let Swsx* = 8            ## Generated based on /usr/include/libswscale/swscale.h:68:9
else:
  static :
    hint("Declaration of " & "Swsx" & " already exists, not redeclaring")
when not declared(Swspoint):
  when 16 is static:
    const
      Swspoint* = 16         ## Generated based on /usr/include/libswscale/swscale.h:69:9
  else:
    let Swspoint* = 16       ## Generated based on /usr/include/libswscale/swscale.h:69:9
else:
  static :
    hint("Declaration of " & "Swspoint" & " already exists, not redeclaring")
when not declared(Swsarea):
  when 32 is static:
    const
      Swsarea* = 32          ## Generated based on /usr/include/libswscale/swscale.h:70:9
  else:
    let Swsarea* = 32        ## Generated based on /usr/include/libswscale/swscale.h:70:9
else:
  static :
    hint("Declaration of " & "Swsarea" & " already exists, not redeclaring")
when not declared(Swsbicublin):
  when 64 is static:
    const
      Swsbicublin* = 64      ## Generated based on /usr/include/libswscale/swscale.h:71:9
  else:
    let Swsbicublin* = 64    ## Generated based on /usr/include/libswscale/swscale.h:71:9
else:
  static :
    hint("Declaration of " & "Swsbicublin" & " already exists, not redeclaring")
when not declared(Swsgauss):
  when 128 is static:
    const
      Swsgauss* = 128        ## Generated based on /usr/include/libswscale/swscale.h:72:9
  else:
    let Swsgauss* = 128      ## Generated based on /usr/include/libswscale/swscale.h:72:9
else:
  static :
    hint("Declaration of " & "Swsgauss" & " already exists, not redeclaring")
when not declared(Swssinc):
  when 256 is static:
    const
      Swssinc* = 256         ## Generated based on /usr/include/libswscale/swscale.h:73:9
  else:
    let Swssinc* = 256       ## Generated based on /usr/include/libswscale/swscale.h:73:9
else:
  static :
    hint("Declaration of " & "Swssinc" & " already exists, not redeclaring")
when not declared(Swslanczos):
  when 512 is static:
    const
      Swslanczos* = 512      ## Generated based on /usr/include/libswscale/swscale.h:74:9
  else:
    let Swslanczos* = 512    ## Generated based on /usr/include/libswscale/swscale.h:74:9
else:
  static :
    hint("Declaration of " & "Swslanczos" & " already exists, not redeclaring")
when not declared(Swsspline):
  when 1024 is static:
    const
      Swsspline* = 1024      ## Generated based on /usr/include/libswscale/swscale.h:75:9
  else:
    let Swsspline* = 1024    ## Generated based on /usr/include/libswscale/swscale.h:75:9
else:
  static :
    hint("Declaration of " & "Swsspline" & " already exists, not redeclaring")
when not declared(Swssrcvchrdropmask):
  when 196608 is static:
    const
      Swssrcvchrdropmask* = 196608 ## Generated based on /usr/include/libswscale/swscale.h:77:9
  else:
    let Swssrcvchrdropmask* = 196608 ## Generated based on /usr/include/libswscale/swscale.h:77:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropmask" &
        " already exists, not redeclaring")
when not declared(Swssrcvchrdropshift):
  when 16 is static:
    const
      Swssrcvchrdropshift* = 16 ## Generated based on /usr/include/libswscale/swscale.h:78:9
  else:
    let Swssrcvchrdropshift* = 16 ## Generated based on /usr/include/libswscale/swscale.h:78:9
else:
  static :
    hint("Declaration of " & "Swssrcvchrdropshift" &
        " already exists, not redeclaring")
when not declared(Swsparamdefault):
  when 123456 is static:
    const
      Swsparamdefault* = 123456 ## Generated based on /usr/include/libswscale/swscale.h:80:9
  else:
    let Swsparamdefault* = 123456 ## Generated based on /usr/include/libswscale/swscale.h:80:9
else:
  static :
    hint("Declaration of " & "Swsparamdefault" &
        " already exists, not redeclaring")
when not declared(Swsprintinfo):
  when 4096 is static:
    const
      Swsprintinfo* = 4096   ## Generated based on /usr/include/libswscale/swscale.h:82:9
  else:
    let Swsprintinfo* = 4096 ## Generated based on /usr/include/libswscale/swscale.h:82:9
else:
  static :
    hint("Declaration of " & "Swsprintinfo" & " already exists, not redeclaring")
when not declared(Swsfullchrhint):
  when 8192 is static:
    const
      Swsfullchrhint* = 8192 ## Generated based on /usr/include/libswscale/swscale.h:86:9
  else:
    let Swsfullchrhint* = 8192 ## Generated based on /usr/include/libswscale/swscale.h:86:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhint" &
        " already exists, not redeclaring")
when not declared(Swsfullchrhinp):
  when 16384 is static:
    const
      Swsfullchrhinp* = 16384 ## Generated based on /usr/include/libswscale/swscale.h:88:9
  else:
    let Swsfullchrhinp* = 16384 ## Generated based on /usr/include/libswscale/swscale.h:88:9
else:
  static :
    hint("Declaration of " & "Swsfullchrhinp" &
        " already exists, not redeclaring")
when not declared(Swsdirectbgr):
  when 32768 is static:
    const
      Swsdirectbgr* = 32768  ## Generated based on /usr/include/libswscale/swscale.h:89:9
  else:
    let Swsdirectbgr* = 32768 ## Generated based on /usr/include/libswscale/swscale.h:89:9
else:
  static :
    hint("Declaration of " & "Swsdirectbgr" & " already exists, not redeclaring")
when not declared(Swsaccuraternd):
  when 262144 is static:
    const
      Swsaccuraternd* = 262144 ## Generated based on /usr/include/libswscale/swscale.h:90:9
  else:
    let Swsaccuraternd* = 262144 ## Generated based on /usr/include/libswscale/swscale.h:90:9
else:
  static :
    hint("Declaration of " & "Swsaccuraternd" &
        " already exists, not redeclaring")
when not declared(Swsbitexact):
  when 524288 is static:
    const
      Swsbitexact* = 524288  ## Generated based on /usr/include/libswscale/swscale.h:91:9
  else:
    let Swsbitexact* = 524288 ## Generated based on /usr/include/libswscale/swscale.h:91:9
else:
  static :
    hint("Declaration of " & "Swsbitexact" & " already exists, not redeclaring")
when not declared(Swserrordiffusion):
  when 8388608 is static:
    const
      Swserrordiffusion* = 8388608 ## Generated based on /usr/include/libswscale/swscale.h:92:9
  else:
    let Swserrordiffusion* = 8388608 ## Generated based on /usr/include/libswscale/swscale.h:92:9
else:
  static :
    hint("Declaration of " & "Swserrordiffusion" &
        " already exists, not redeclaring")
when not declared(Swsmaxreducecutoff):
  when 0.002 is static:
    const
      Swsmaxreducecutoff* = 0.002 ## Generated based on /usr/include/libswscale/swscale.h:94:9
  else:
    let Swsmaxreducecutoff* = 0.002 ## Generated based on /usr/include/libswscale/swscale.h:94:9
else:
  static :
    hint("Declaration of " & "Swsmaxreducecutoff" &
        " already exists, not redeclaring")
when not declared(Swscsitu709):
  when 1 is static:
    const
      Swscsitu709* = 1       ## Generated based on /usr/include/libswscale/swscale.h:96:9
  else:
    let Swscsitu709* = 1     ## Generated based on /usr/include/libswscale/swscale.h:96:9
else:
  static :
    hint("Declaration of " & "Swscsitu709" & " already exists, not redeclaring")
when not declared(Swscsfcc):
  when 4 is static:
    const
      Swscsfcc* = 4          ## Generated based on /usr/include/libswscale/swscale.h:97:9
  else:
    let Swscsfcc* = 4        ## Generated based on /usr/include/libswscale/swscale.h:97:9
else:
  static :
    hint("Declaration of " & "Swscsfcc" & " already exists, not redeclaring")
when not declared(Swscsitu601):
  when 5 is static:
    const
      Swscsitu601* = 5       ## Generated based on /usr/include/libswscale/swscale.h:98:9
  else:
    let Swscsitu601* = 5     ## Generated based on /usr/include/libswscale/swscale.h:98:9
else:
  static :
    hint("Declaration of " & "Swscsitu601" & " already exists, not redeclaring")
when not declared(Swscsitu624):
  when 5 is static:
    const
      Swscsitu624* = 5       ## Generated based on /usr/include/libswscale/swscale.h:99:9
  else:
    let Swscsitu624* = 5     ## Generated based on /usr/include/libswscale/swscale.h:99:9
else:
  static :
    hint("Declaration of " & "Swscsitu624" & " already exists, not redeclaring")
when not declared(Swscssmpte170m):
  when 5 is static:
    const
      Swscssmpte170m* = 5    ## Generated based on /usr/include/libswscale/swscale.h:100:9
  else:
    let Swscssmpte170m* = 5  ## Generated based on /usr/include/libswscale/swscale.h:100:9
else:
  static :
    hint("Declaration of " & "Swscssmpte170m" &
        " already exists, not redeclaring")
when not declared(Swscssmpte240m):
  when 7 is static:
    const
      Swscssmpte240m* = 7    ## Generated based on /usr/include/libswscale/swscale.h:101:9
  else:
    let Swscssmpte240m* = 7  ## Generated based on /usr/include/libswscale/swscale.h:101:9
else:
  static :
    hint("Declaration of " & "Swscssmpte240m" &
        " already exists, not redeclaring")
when not declared(Swscsdefault):
  when 5 is static:
    const
      Swscsdefault* = 5      ## Generated based on /usr/include/libswscale/swscale.h:102:9
  else:
    let Swscsdefault* = 5    ## Generated based on /usr/include/libswscale/swscale.h:102:9
else:
  static :
    hint("Declaration of " & "Swscsdefault" & " already exists, not redeclaring")
when not declared(Swscsbt2020):
  when 9 is static:
    const
      Swscsbt2020* = 9       ## Generated based on /usr/include/libswscale/swscale.h:103:9
  else:
    let Swscsbt2020* = 9     ## Generated based on /usr/include/libswscale/swscale.h:103:9
else:
  static :
    hint("Declaration of " & "Swscsbt2020" & " already exists, not redeclaring")
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
  proc swsissupportedinput*(pixfmt: enumavpixelformat_520096537): cint {.cdecl,
      importc: "sws_isSupportedInput".}
else:
  static :
    hint("Declaration of " & "swsissupportedinput" &
        " already exists, not redeclaring")
when not declared(swsissupportedoutput):
  proc swsissupportedoutput*(pixfmt: enumavpixelformat_520096537): cint {.cdecl,
      importc: "sws_isSupportedOutput".}
else:
  static :
    hint("Declaration of " & "swsissupportedoutput" &
        " already exists, not redeclaring")
when not declared(swsissupportedendiannessconversion):
  proc swsissupportedendiannessconversion*(pixfmt: enumavpixelformat_520096537): cint {.
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
                       srcfilter: ptr Swsfilter_520096535;
                       dstfilter: ptr Swsfilter_520096535): cint {.cdecl,
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
  proc swsgetcontext*(srcw: cint; srch: cint; srcformat: enumavpixelformat_520096537;
                      dstw: cint; dsth: cint; dstformat: enumavpixelformat_520096537;
                      flags: cint; srcfilter: ptr Swsfilter_520096535;
                      dstfilter: ptr Swsfilter_520096535; param: ptr cdouble): ptr structswscontext {.
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
  proc swsscaleframe*(c: ptr structswscontext; dst: ptr Avframe_520096539;
                      src: ptr Avframe_520096539): cint {.cdecl,
      importc: "sws_scale_frame".}
else:
  static :
    hint("Declaration of " & "swsscaleframe" &
        " already exists, not redeclaring")
when not declared(swsframestart):
  proc swsframestart*(c: ptr structswscontext; dst: ptr Avframe_520096539;
                      src: ptr Avframe_520096539): cint {.cdecl,
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
  proc swsallocvec*(length: cint): ptr Swsvector_520096531 {.cdecl,
      importc: "sws_allocVec".}
else:
  static :
    hint("Declaration of " & "swsallocvec" & " already exists, not redeclaring")
when not declared(swsgetgaussianvec):
  proc swsgetgaussianvec*(variance: cdouble; quality: cdouble): ptr Swsvector_520096531 {.
      cdecl, importc: "sws_getGaussianVec".}
else:
  static :
    hint("Declaration of " & "swsgetgaussianvec" &
        " already exists, not redeclaring")
when not declared(swsscalevec):
  proc swsscalevec*(a: ptr Swsvector_520096531; scalar: cdouble): void {.cdecl,
      importc: "sws_scaleVec".}
else:
  static :
    hint("Declaration of " & "swsscalevec" & " already exists, not redeclaring")
when not declared(swsnormalizevec):
  proc swsnormalizevec*(a: ptr Swsvector_520096531; height: cdouble): void {.
      cdecl, importc: "sws_normalizeVec".}
else:
  static :
    hint("Declaration of " & "swsnormalizevec" &
        " already exists, not redeclaring")
when not declared(swsfreevec):
  proc swsfreevec*(a: ptr Swsvector_520096531): void {.cdecl,
      importc: "sws_freeVec".}
else:
  static :
    hint("Declaration of " & "swsfreevec" & " already exists, not redeclaring")
when not declared(swsgetdefaultfilter):
  proc swsgetdefaultfilter*(lumagblur: cfloat; chromagblur: cfloat;
                            lumasharpen: cfloat; chromasharpen: cfloat;
                            chromahshift: cfloat; chromavshift: cfloat;
                            verbose: cint): ptr Swsfilter_520096535 {.cdecl,
      importc: "sws_getDefaultFilter".}
else:
  static :
    hint("Declaration of " & "swsgetdefaultfilter" &
        " already exists, not redeclaring")
when not declared(swsfreefilter):
  proc swsfreefilter*(filter: ptr Swsfilter_520096535): void {.cdecl,
      importc: "sws_freeFilter".}
else:
  static :
    hint("Declaration of " & "swsfreefilter" &
        " already exists, not redeclaring")
when not declared(swsgetcachedcontext):
  proc swsgetcachedcontext*(context: ptr structswscontext; srcw: cint;
                            srch: cint; srcformat: enumavpixelformat_520096537;
                            dstw: cint; dsth: cint;
                            dstformat: enumavpixelformat_520096537; flags: cint;
                            srcfilter: ptr Swsfilter_520096535;
                            dstfilter: ptr Swsfilter_520096535;
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
  proc swsgetclass*(): ptr Avclass_520096541 {.cdecl, importc: "sws_get_class".}
else:
  static :
    hint("Declaration of " & "swsgetclass" & " already exists, not redeclaring")