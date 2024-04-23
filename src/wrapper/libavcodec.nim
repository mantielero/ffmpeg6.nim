
from macros import hint

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
      Avcodecidavui = 200, Avcodecidayuv = 201, Avcodecidtargay216 = 202,
      Avcodecidv308 = 203, Avcodecidv408 = 204, Avcodecidyuv4 = 205,
      Avcodecidavrn = 206, Avcodecidcpia = 207, Avcodecidxface = 208,
      Avcodecidsnow = 209, Avcodecidsmvjpeg = 210, Avcodecidapng = 211,
      Avcodeciddaala = 212, Avcodecidcfhd = 213, Avcodecidtruemotion2rt = 214,
      Avcodecidm101 = 215, Avcodecidmagicyuv = 216, Avcodecidsheervideo = 217,
      Avcodecidylc = 218, Avcodecidpsd = 219, Avcodecidpixlet = 220,
      Avcodecidspeedhq = 221, Avcodecidfmvc = 222, Avcodecidscpr = 223,
      Avcodecidclearvideo = 224, Avcodecidxpm = 225, Avcodecidav1 = 226,
      Avcodecidbitpacked = 227, Avcodecidmscc = 228, Avcodecidsrgc = 229,
      Avcodecidsvg = 230, Avcodecidgdv = 231, Avcodecidfits = 232,
      Avcodecidimm4 = 233, Avcodecidprosumer = 234, Avcodecidmwsc = 235,
      Avcodecidwcmv = 236, Avcodecidrasc = 237, Avcodecidhymt = 238,
      Avcodecidarbc = 239, Avcodecidagm = 240, Avcodecidlscr = 241,
      Avcodecidvp4 = 242, Avcodecidimm5 = 243, Avcodecidmvdv = 244,
      Avcodecidmvha = 245, Avcodecidcdtoons = 246, Avcodecidmv30 = 247,
      Avcodecidnotchlc = 248, Avcodecidpfm = 249, Avcodecidmobiclip = 250,
      Avcodecidphotocd = 251, Avcodecidipu = 252, Avcodecidargo = 253,
      Avcodecidcri = 254, Avcodecidsimbiosisimx = 255, Avcodecidsgavideo = 256,
      Avcodecidgem = 257, Avcodecidvbn = 258, Avcodecidjpegxl = 259,
      Avcodecidqoi = 260, Avcodecidphm = 261, Avcodecidradiancehdr = 262,
      Avcodecidwbmp = 263, Avcodecidmedia100 = 264, Avcodecidvqc = 265,
      Avcodecidpdv = 266, Avcodecidevc = 267, Avcodecidrtv1 = 268,
      Avcodecidvmix = 269, Avcodecidfirstaudio = 65536,
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
      Avsidedataparamchangechannelcount = 1,
      Avsidedataparamchangechannellayout = 2,
      Avsidedataparamchangesamplerate = 4, Avsidedataparamchangedimensions = 8
else:
  static :
    hint("Declaration of " & "enumavsidedataparamchangeflags" &
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
when not declared(enumavchannelorder):
  type
    enumavchannelorder* {.size: sizeof(cuint).} = enum
      Avchannelorderunspec = 0, Avchannelordernative = 1,
      Avchannelordercustom = 2, Avchannelorderambisonic = 3
else:
  static :
    hint("Declaration of " & "enumavchannelorder" &
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
when not declared(structavoption):
  type
    structavoption* = distinct object
else:
  static :
    hint("Declaration of " & "structavoption" &
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
type
  structavprofile_520094081 {.pure, inheritable, bycopy.} = object
    profile*: cint           ## Generated based on /usr/include/libavcodec/codec.h:179:16
    name*: cstring

  Avprofile_520094083 = structavprofile_520094082 ## Generated based on /usr/include/libavcodec/codec.h:182:3
  structavcodec_520094085 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/libavcodec/codec.h:187:16
    longname*: cstring
    typefield*: enumavmediatype_520094078
    id*: enumavcodecid_520094076
    capabilities*: cint
    maxlowres*: uint8
    supportedframerates*: ptr Avrational_520094088
    pixfmts*: ptr enumavpixelformat_520094090
    supportedsamplerates*: ptr cint
    samplefmts*: ptr enumavsampleformat_520094080
    channellayouts*: ptr uint64
    privclass*: ptr Avclass_520094092
    profiles*: ptr Avprofile_520094084
    wrappername*: cstring
    chlayouts*: ptr Avchannellayout_520094094

  Avrational_520094087 = structavrational_520094201 ## Generated based on /usr/include/libavutil/rational.h:61:3
  Avclass_520094091 = structavclass_520094203 ## Generated based on /usr/include/libavutil/log.h:147:3
  Avchannellayout_520094093 = structavchannellayout_520094205 ## Generated based on /usr/include/libavutil/channel_layout.h:365:3
  Avcodec_520094095 = structavcodec_520094086 ## Generated based on /usr/include/libavcodec/codec.h:238:3
  structavcodechwconfig_520094097 {.pure, inheritable, bycopy.} = object
    pixfmt*: enumavpixelformat_520094090 ## Generated based on /usr/include/libavcodec/codec.h:341:16
    methods*: cint
    devicetype*: enumavhwdevicetype_520094100

  Avcodechwconfig_520094101 = structavcodechwconfig_520094098 ## Generated based on /usr/include/libavcodec/codec.h:363:3
  structavpanscan_520094109 {.pure, inheritable, bycopy.} = object
    id*: cint                ## Generated based on /usr/include/libavcodec/defs.h:240:16
    width*: cint
    height*: cint
    position*: array[3'i64, array[2'i64, int16]]

  Avpanscan_520094111 = structavpanscan_520094110 ## Generated based on /usr/include/libavcodec/defs.h:262:3
  structavcpbproperties_520094113 {.pure, inheritable, bycopy.} = object
    maxbitrate*: int64       ## Generated based on /usr/include/libavcodec/defs.h:269:16
    minbitrate*: int64
    avgbitrate*: int64
    buffersize*: int64
    vbvdelay*: uint64

  Avcpbproperties_520094115 = structavcpbproperties_520094114 ## Generated based on /usr/include/libavcodec/defs.h:300:3
  structavproducerreferencetime_520094117 {.pure, inheritable, bycopy.} = object
    wallclock*: int64        ## Generated based on /usr/include/libavcodec/defs.h:318:16
    flags*: cint

  Avproducerreferencetime_520094119 = structavproducerreferencetime_520094118 ## Generated based on /usr/include/libavcodec/defs.h:324:3
  structavpacketsidedata_520094123 {.pure, inheritable, bycopy.} = object
    data*: ptr uint8         ## Generated based on /usr/include/libavcodec/packet.h:342:16
    size*: csize_t
    typefield*: enumavpacketsidedatatype_520094122

  Avpacketsidedata_520094125 = structavpacketsidedata_520094124 ## Generated based on /usr/include/libavcodec/packet.h:346:3
  structavpacket_520094127 {.pure, inheritable, bycopy.} = object
    buf*: ptr Avbufferref_520094130 ## Generated based on /usr/include/libavcodec/packet.h:468:16
    pts*: int64
    dts*: int64
    data*: ptr uint8
    size*: cint
    streamindex*: cint
    flags*: cint
    sidedata*: ptr Avpacketsidedata_520094126
    sidedataelems*: cint
    duration*: int64
    pos*: int64
    opaque*: pointer
    opaqueref*: ptr Avbufferref_520094130
    timebase*: Avrational_520094088

  Avbufferref_520094129 = structavbufferref_520094207 ## Generated based on /usr/include/libavutil/buffer.h:95:3
  Avpacket_520094131 = structavpacket_520094128 ## Generated based on /usr/include/libavcodec/packet.h:536:3
  structavpacketlist_520094133 {.pure, inheritable, bycopy.} = object
    pkt*: Avpacket_520094132 ## Generated based on /usr/include/libavcodec/packet.h:540:16
    next*: ptr structavpacketlist_520094134

  Avpacketlist_520094135 = structavpacketlist_520094134 ## Generated based on /usr/include/libavcodec/packet.h:543:3
  Avdictionary_520094139 = structavdictionary ## Generated based on /usr/include/libavutil/dict.h:94:29
  structavcodecdescriptor_520094141 {.pure, inheritable, bycopy.} = object
    id*: enumavcodecid_520094076 ## Generated based on /usr/include/libavcodec/codec_desc.h:38:16
    typefield*: enumavmediatype_520094078
    name*: cstring
    longname*: cstring
    props*: cint
    mimetypes*: ptr cstring
    profiles*: ptr structavprofile_520094082

  Avcodecdescriptor_520094143 = structavcodecdescriptor_520094142 ## Generated based on /usr/include/libavcodec/codec_desc.h:66:3
  structavcodecparameters_520094145 {.pure, inheritable, bycopy.} = object
    codectype*: enumavmediatype_520094078 ## Generated based on /usr/include/libavcodec/codec_par.h:47:16
    codecid*: enumavcodecid_520094076
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
    sampleaspectratio*: Avrational_520094088
    fieldorder*: enumavfieldorder_520094104
    colorrange*: enumavcolorrange_520094148
    colorprimaries*: enumavcolorprimaries_520094150
    colortrc*: enumavcolortransfercharacteristic_520094152
    colorspace*: enumavcolorspace_520094161
    chromalocation*: enumavchromalocation_520094163
    videodelay*: cint
    channellayout*: uint64
    channels*: cint
    samplerate*: cint
    blockalign*: cint
    framesize*: cint
    initialpadding*: cint
    trailingpadding*: cint
    seekpreroll*: cint
    chlayout*: Avchannellayout_520094094
    framerate*: Avrational_520094088
    codedsidedata*: ptr Avpacketsidedata_520094126
    nbcodedsidedata*: cint

  Avcodecparameters_520094164 = structavcodecparameters_520094146 ## Generated based on /usr/include/libavcodec/codec_par.h:229:3
  structrcoverride_520094166 {.pure, inheritable, bycopy.} = object
    startframe*: cint        ## Generated based on /usr/include/libavcodec/avcodec.h:200:16
    endframe*: cint
    qscale*: cint
    qualityfactor*: cfloat

  Rcoverride_520094168 = structrcoverride_520094167 ## Generated based on /usr/include/libavcodec/avcodec.h:205:3
  structavcodeccontext_520094170 {.pure, inheritable, bycopy.} = object
    avclass*: ptr Avclass_520094092 ## Generated based on /usr/include/libavcodec/avcodec.h:441:16
    logleveloffset*: cint
    codectype*: enumavmediatype_520094078
    codec*: ptr structavcodec_520094086
    codecid*: enumavcodecid_520094076
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
    timebase*: Avrational_520094088
    ticksperframe*: cint
    delay*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    gopsize*: cint
    pixfmt*: enumavpixelformat_520094090
    drawhorizband*: proc (a0: ptr structavcodeccontext_520094171;
                          a1: ptr Avframe_520094173; a2: array[8'i64, cint];
                          a3: cint; a4: cint; a5: cint): void {.cdecl.}
    getformat*: proc (a0: ptr structavcodeccontext_520094171;
                      a1: ptr enumavpixelformat_520094090): enumavpixelformat_520094090 {.
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
    sampleaspectratio*: Avrational_520094088
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
    colorprimaries*: enumavcolorprimaries_520094150
    colortrc*: enumavcolortransfercharacteristic_520094152
    colorspace*: enumavcolorspace_520094161
    colorrange*: enumavcolorrange_520094148
    chromasamplelocation*: enumavchromalocation_520094163
    slices*: cint
    fieldorder*: enumavfieldorder_520094104
    samplerate*: cint
    channels*: cint
    samplefmt*: enumavsampleformat_520094080
    framesize*: cint
    framenumber*: cint
    blockalign*: cint
    cutoff*: cint
    channellayout*: uint64
    requestchannellayout*: uint64
    audioservicetype*: enumavaudioservicetype_520094108
    requestsamplefmt*: enumavsampleformat_520094080
    getbuffer2*: proc (a0: ptr structavcodeccontext_520094171; a1: ptr Avframe_520094173;
                       a2: cint): cint {.cdecl.}
    qcompress*: cfloat
    qblur*: cfloat
    qmin*: cint
    qmax*: cint
    maxqdiff*: cint
    rcbuffersize*: cint
    rcoverridecount*: cint
    rcoverride*: ptr Rcoverride_520094169
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
    hwaccel*: ptr structavhwaccel_520094175
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
    execute*: proc (a0: ptr structavcodeccontext_520094171; a1: proc (
        a0: ptr structavcodeccontext_520094171; a1: pointer): cint {.cdecl.};
                    a2: pointer; a3: ptr cint; a4: cint; a5: cint): cint {.cdecl.}
    execute2*: proc (a0: ptr structavcodeccontext_520094171; a1: proc (
        a0: ptr structavcodeccontext_520094171; a1: pointer; a2: cint; a3: cint): cint {.
        cdecl.}; a2: pointer; a3: ptr cint; a4: cint): cint {.cdecl.}
    nsseweight*: cint
    profile*: cint
    level*: cint
    skiploopfilter*: enumavdiscard_520094106
    skipidct*: enumavdiscard_520094106
    skipframe*: enumavdiscard_520094106
    subtitleheader*: ptr uint8
    subtitleheadersize*: cint
    initialpadding*: cint
    framerate*: Avrational_520094088
    swpixfmt*: enumavpixelformat_520094090
    pkttimebase*: Avrational_520094088
    codecdescriptor*: ptr structavcodecdescriptor_520094142
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
    codedsidedata*: ptr Avpacketsidedata_520094126
    nbcodedsidedata*: cint
    hwframesctx*: ptr Avbufferref_520094130
    trailingpadding*: cint
    maxpixels*: int64
    hwdevicectx*: ptr Avbufferref_520094130
    hwaccelflags*: cint
    applycropping*: cint
    extrahwframes*: cint
    discarddamagedpercentage*: cint
    maxsamples*: int64
    exportsidedata*: cint
    getencodebuffer*: proc (a0: ptr structavcodeccontext_520094171;
                            a1: ptr Avpacket_520094132; a2: cint): cint {.cdecl.}
    chlayout*: Avchannellayout_520094094
    framenum*: int64

  Avframe_520094172 = structavframe_520094209 ## Generated based on /usr/include/libavutil/frame.h:808:3
  structavhwaccel_520094174 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /usr/include/libavcodec/avcodec.h:2129:16
    typefield*: enumavmediatype_520094078
    id*: enumavcodecid_520094076
    pixfmt*: enumavpixelformat_520094090
    capabilities*: cint

  Avcodeccontext_520094176 = structavcodeccontext_520094171 ## Generated based on /usr/include/libavcodec/avcodec.h:2119:3
  Avhwaccel_520094178 = structavhwaccel_520094175 ## Generated based on /usr/include/libavcodec/avcodec.h:2163:3
  structavsubtitlerect_520094182 {.pure, inheritable, bycopy.} = object
    x*: cint                 ## Generated based on /usr/include/libavcodec/avcodec.h:2241:16
    y*: cint
    w*: cint
    h*: cint
    nbcolors*: cint
    data*: array[4'i64, ptr uint8]
    linesize*: array[4'i64, cint]
    typefield*: enumavsubtitletype_520094181
    text*: cstring
    ass*: cstring
    flags*: cint

  Avsubtitlerect_520094184 = structavsubtitlerect_520094183 ## Generated based on /usr/include/libavcodec/avcodec.h:2267:3
  structavsubtitle_520094186 {.pure, inheritable, bycopy.} = object
    format*: uint16          ## Generated based on /usr/include/libavcodec/avcodec.h:2269:16
    startdisplaytime*: uint32
    enddisplaytime*: uint32
    numrects*: cuint
    rects*: ptr ptr Avsubtitlerect_520094185
    pts*: int64

  Avsubtitle_520094188 = structavsubtitle_520094187 ## Generated based on /usr/include/libavcodec/avcodec.h:2276:3
  structavcodecparsercontext_520094192 {.pure, inheritable, bycopy.} = object
    privdata*: pointer       ## Generated based on /usr/include/libavcodec/avcodec.h:2774:16
    parser*: ptr structavcodecparser_520094195
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
    fieldorder*: enumavfieldorder_520094104
    picturestructure*: enumavpicturestructure_520094191
    outputpicturenumber*: cint
    width*: cint
    height*: cint
    codedwidth*: cint
    codedheight*: cint
    format*: cint

  structavcodecparser_520094194 {.pure, inheritable, bycopy.} = object
    codecids*: array[7'i64, cint] ## Generated based on /usr/include/libavcodec/avcodec.h:2933:16
    privdatasize*: cint
    parserinit*: proc (a0: ptr Avcodecparsercontext_520094197): cint {.cdecl.}
    parserparse*: proc (a0: ptr Avcodecparsercontext_520094197;
                        a1: ptr Avcodeccontext_520094177; a2: ptr ptr uint8;
                        a3: ptr cint; a4: ptr uint8; a5: cint): cint {.cdecl.}
    parserclose*: proc (a0: ptr Avcodecparsercontext_520094197): void {.cdecl.}
    split*: proc (a0: ptr Avcodeccontext_520094177; a1: ptr uint8; a2: cint): cint {.
        cdecl.}

  Avcodecparsercontext_520094196 = structavcodecparsercontext_520094193 ## Generated based on /usr/include/libavcodec/avcodec.h:2931:3
  Avcodecparser_520094198 = structavcodecparser_520094195 ## Generated based on /usr/include/libavcodec/avcodec.h:2945:3
  structavrational_520094200 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /usr/include/libavutil/rational.h:58:16
    den*: cint

  structavclass_520094202 {.pure, inheritable, bycopy.} = object
    classname*: cstring      ## Generated based on /usr/include/libavutil/log.h:66:16
    itemname*: proc (a0: pointer): cstring {.cdecl.}
    option*: ptr structavoption
    version*: cint
    logleveloffsetoffset*: cint
    parentlogcontextoffset*: cint
    category*: Avclasscategory_520094211
    getcategory*: proc (a0: pointer): Avclasscategory_520094211 {.cdecl.}
    queryranges*: proc (a0: ptr ptr structavoptionranges; a1: pointer;
                        a2: cstring; a3: cint): cint {.cdecl.}
    childnext*: proc (a0: pointer; a1: pointer): pointer {.cdecl.}
    childclassiterate*: proc (a0: ptr pointer): ptr structavclass_520094203 {.
        cdecl.}

  structavchannellayout_u_t {.union, bycopy.} = object
    mask*: uint64
    map*: ptr Avchannelcustom_520094215

  structavchannellayout_520094204 {.pure, inheritable, bycopy.} = object
    order*: enumavchannelorder_520094213 ## Generated based on /usr/include/libavutil/channel_layout.h:307:16
    nbchannels*: cint
    u*: structavchannellayout_u_t
    opaque*: pointer

  structavbufferref_520094206 {.pure, inheritable, bycopy.} = object
    buffer*: ptr Avbuffer_520094217 ## Generated based on /usr/include/libavutil/buffer.h:82:16
    data*: ptr uint8
    size*: csize_t

  structavframe_520094208 {.pure, inheritable, bycopy.} = object
    data*: array[8'i64, ptr uint8] ## Generated based on /usr/include/libavutil/frame.h:340:16
    linesize*: array[8'i64, cint]
    extendeddata*: ptr ptr uint8
    width*: cint
    height*: cint
    nbsamples*: cint
    format*: cint
    keyframe*: cint
    picttype*: enumavpicturetype_520094219
    sampleaspectratio*: Avrational_520094088
    pts*: int64
    pktdts*: int64
    timebase*: Avrational_520094088
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
    buf*: array[8'i64, ptr Avbufferref_520094130]
    extendedbuf*: ptr ptr Avbufferref_520094130
    nbextendedbuf*: cint
    sidedata*: ptr ptr Avframesidedata_520094221
    nbsidedata*: cint
    flags*: cint
    colorrange*: enumavcolorrange_520094148
    colorprimaries*: enumavcolorprimaries_520094150
    colortrc*: enumavcolortransfercharacteristic_520094152
    colorspace*: enumavcolorspace_520094161
    chromalocation*: enumavchromalocation_520094163
    bestefforttimestamp*: int64
    pktpos*: int64
    pktduration*: int64
    metadata*: ptr Avdictionary_520094140
    decodeerrorflags*: cint
    channels*: cint
    pktsize*: cint
    hwframesctx*: ptr Avbufferref_520094130
    opaqueref*: ptr Avbufferref_520094130
    croptop*: csize_t
    cropbottom*: csize_t
    cropleft*: csize_t
    cropright*: csize_t
    privateref*: ptr Avbufferref_520094130
    chlayout*: Avchannellayout_520094094
    duration*: int64

  Avclasscategory_520094210 = enumavclasscategory_520094223 ## Generated based on /usr/include/libavutil/log.h:47:2
  Avchannelcustom_520094214 = structavchannelcustom_520094225 ## Generated based on /usr/include/libavutil/channel_layout.h:275:3
  Avbuffer_520094216 = structavbuffer ## Generated based on /usr/include/libavutil/buffer.h:74:25
  Avframesidedata_520094220 = structavframesidedata_520094227 ## Generated based on /usr/include/libavutil/frame.h:252:3
  structavchannelcustom_520094224 {.pure, inheritable, bycopy.} = object
    id*: enumavchannel_520094229 ## Generated based on /usr/include/libavutil/channel_layout.h:271:16
    name*: array[16'i64, cschar]
    opaque*: pointer

  structavframesidedata_520094226 {.pure, inheritable, bycopy.} = object
    typefield*: enumavframesidedatatype_520094231 ## Generated based on /usr/include/libavutil/frame.h:246:16
    data*: ptr uint8
    size*: csize_t
    metadata*: ptr Avdictionary_520094140
    buf*: ptr Avbufferref_520094130

  structavframe_520094209 = (when declared(structavframe):
    structavframe
   else:
    structavframe_520094208)
  Avcodecdescriptor_520094144 = (when declared(Avcodecdescriptor):
    Avcodecdescriptor
   else:
    Avcodecdescriptor_520094143)
  structrcoverride_520094167 = (when declared(structrcoverride):
    structrcoverride
   else:
    structrcoverride_520094166)
  enumavchannelorder_520094213 = (when declared(enumavchannelorder):
    enumavchannelorder
   else:
    enumavchannelorder_520094212)
  enumavpicturetype_520094219 = (when declared(enumavpicturetype):
    enumavpicturetype
   else:
    enumavpicturetype_520094218)
  enumavcolorprimaries_520094150 = (when declared(enumavcolorprimaries):
    enumavcolorprimaries
   else:
    enumavcolorprimaries_520094149)
  Avcpbproperties_520094116 = (when declared(Avcpbproperties):
    Avcpbproperties
   else:
    Avcpbproperties_520094115)
  Avcodeccontext_520094177 = (when declared(Avcodeccontext):
    Avcodeccontext
   else:
    Avcodeccontext_520094176)
  enumavsubtitletype_520094181 = (when declared(enumavsubtitletype):
    enumavsubtitletype
   else:
    enumavsubtitletype_520094180)
  Avcodec_520094096 = (when declared(Avcodec):
    Avcodec
   else:
    Avcodec_520094095)
  Avpacketsidedata_520094126 = (when declared(Avpacketsidedata):
    Avpacketsidedata
   else:
    Avpacketsidedata_520094125)
  Avpacketlist_520094136 = (when declared(Avpacketlist):
    Avpacketlist
   else:
    Avpacketlist_520094135)
  enumavcolorrange_520094148 = (when declared(enumavcolorrange):
    enumavcolorrange
   else:
    enumavcolorrange_520094147)
  enumavsampleformat_520094080 = (when declared(enumavsampleformat):
    enumavsampleformat
   else:
    enumavsampleformat_520094079)
  structavpacket_520094128 = (when declared(structavpacket):
    structavpacket
   else:
    structavpacket_520094127)
  Avclasscategory_520094211 = (when declared(Avclasscategory):
    Avclasscategory
   else:
    Avclasscategory_520094210)
  structavchannelcustom_520094225 = (when declared(structavchannelcustom):
    structavchannelcustom
   else:
    structavchannelcustom_520094224)
  structavframesidedata_520094227 = (when declared(structavframesidedata):
    structavframesidedata
   else:
    structavframesidedata_520094226)
  enumavframesidedatatype_520094231 = (when declared(enumavframesidedatatype):
    enumavframesidedatatype
   else:
    enumavframesidedatatype_520094230)
  Avclass_520094092 = (when declared(Avclass):
    Avclass
   else:
    Avclass_520094091)
  enumavchromalocation_520094163 = (when declared(enumavchromalocation):
    enumavchromalocation
   else:
    enumavchromalocation_520094162)
  Avbufferref_520094130 = (when declared(Avbufferref):
    Avbufferref
   else:
    Avbufferref_520094129)
  Avsubtitle_520094189 = (when declared(Avsubtitle):
    Avsubtitle
   else:
    Avsubtitle_520094188)
  enumavcodecid_520094076 = (when declared(enumavcodecid):
    enumavcodecid
   else:
    enumavcodecid_520094075)
  structavproducerreferencetime_520094118 = (when declared(
      structavproducerreferencetime):
    structavproducerreferencetime
   else:
    structavproducerreferencetime_520094117)
  Avcodecparser_520094199 = (when declared(Avcodecparser):
    Avcodecparser
   else:
    Avcodecparser_520094198)
  structavcpbproperties_520094114 = (when declared(structavcpbproperties):
    structavcpbproperties
   else:
    structavcpbproperties_520094113)
  structavpacketsidedata_520094124 = (when declared(structavpacketsidedata):
    structavpacketsidedata
   else:
    structavpacketsidedata_520094123)
  enumavclasscategory_520094223 = (when declared(enumavclasscategory):
    enumavclasscategory
   else:
    enumavclasscategory_520094222)
  structavcodec_520094086 = (when declared(structavcodec):
    structavcodec
   else:
    structavcodec_520094085)
  Avframesidedata_520094221 = (when declared(Avframesidedata):
    Avframesidedata
   else:
    Avframesidedata_520094220)
  Avcodechwconfig_520094102 = (when declared(Avcodechwconfig):
    Avcodechwconfig
   else:
    Avcodechwconfig_520094101)
  Avproducerreferencetime_520094120 = (when declared(Avproducerreferencetime):
    Avproducerreferencetime
   else:
    Avproducerreferencetime_520094119)
  Avsubtitlerect_520094185 = (when declared(Avsubtitlerect):
    Avsubtitlerect
   else:
    Avsubtitlerect_520094184)
  enumavaudioservicetype_520094108 = (when declared(enumavaudioservicetype):
    enumavaudioservicetype
   else:
    enumavaudioservicetype_520094107)
  Avrational_520094088 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094087)
  Avpacket_520094132 = (when declared(Avpacket):
    Avpacket
   else:
    Avpacket_520094131)
  Avhwaccel_520094179 = (when declared(Avhwaccel):
    Avhwaccel
   else:
    Avhwaccel_520094178)
  enumavfieldorder_520094104 = (when declared(enumavfieldorder):
    enumavfieldorder
   else:
    enumavfieldorder_520094103)
  Avcodecparameters_520094165 = (when declared(Avcodecparameters):
    Avcodecparameters
   else:
    Avcodecparameters_520094164)
  Avprofile_520094084 = (when declared(Avprofile):
    Avprofile
   else:
    Avprofile_520094083)
  structavsubtitlerect_520094183 = (when declared(structavsubtitlerect):
    structavsubtitlerect
   else:
    structavsubtitlerect_520094182)
  Avchannelcustom_520094215 = (when declared(Avchannelcustom):
    Avchannelcustom
   else:
    Avchannelcustom_520094214)
  enumavpacketsidedatatype_520094122 = (when declared(enumavpacketsidedatatype):
    enumavpacketsidedatatype
   else:
    enumavpacketsidedatatype_520094121)
  Avframe_520094173 = (when declared(Avframe):
    Avframe
   else:
    Avframe_520094172)
  structavpanscan_520094110 = (when declared(structavpanscan):
    structavpanscan
   else:
    structavpanscan_520094109)
  structavbufferref_520094207 = (when declared(structavbufferref):
    structavbufferref
   else:
    structavbufferref_520094206)
  structavchannellayout_520094205 = (when declared(structavchannellayout):
    structavchannellayout
   else:
    structavchannellayout_520094204)
  enumavmediatype_520094078 = (when declared(enumavmediatype):
    enumavmediatype
   else:
    enumavmediatype_520094077)
  structavpacketlist_520094134 = (when declared(structavpacketlist):
    structavpacketlist
   else:
    structavpacketlist_520094133)
  Avbuffer_520094217 = (when declared(Avbuffer):
    Avbuffer
   else:
    Avbuffer_520094216)
  Avcodecparsercontext_520094197 = (when declared(Avcodecparsercontext):
    Avcodecparsercontext
   else:
    Avcodecparsercontext_520094196)
  Avchannellayout_520094094 = (when declared(Avchannellayout):
    Avchannellayout
   else:
    Avchannellayout_520094093)
  structavcodecparsercontext_520094193 = (when declared(
      structavcodecparsercontext):
    structavcodecparsercontext
   else:
    structavcodecparsercontext_520094192)
  structavhwaccel_520094175 = (when declared(structavhwaccel):
    structavhwaccel
   else:
    structavhwaccel_520094174)
  enumavhwdevicetype_520094100 = (when declared(enumavhwdevicetype):
    enumavhwdevicetype
   else:
    enumavhwdevicetype_520094099)
  structavcodecparser_520094195 = (when declared(structavcodecparser):
    structavcodecparser
   else:
    structavcodecparser_520094194)
  structavrational_520094201 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094200)
  enumavcolortransfercharacteristic_520094152 = (when declared(
      enumavcolortransfercharacteristic):
    enumavcolortransfercharacteristic
   else:
    enumavcolortransfercharacteristic_520094151)
  Rcoverride_520094169 = (when declared(Rcoverride):
    Rcoverride
   else:
    Rcoverride_520094168)
  structavcodechwconfig_520094098 = (when declared(structavcodechwconfig):
    structavcodechwconfig
   else:
    structavcodechwconfig_520094097)
  Avpanscan_520094112 = (when declared(Avpanscan):
    Avpanscan
   else:
    Avpanscan_520094111)
  enumavsidedataparamchangeflags_520094138 = (when declared(
      enumavsidedataparamchangeflags):
    enumavsidedataparamchangeflags
   else:
    enumavsidedataparamchangeflags_520094137)
  enumavdiscard_520094106 = (when declared(enumavdiscard):
    enumavdiscard
   else:
    enumavdiscard_520094105)
  structavcodecdescriptor_520094142 = (when declared(structavcodecdescriptor):
    structavcodecdescriptor
   else:
    structavcodecdescriptor_520094141)
  structavsubtitle_520094187 = (when declared(structavsubtitle):
    structavsubtitle
   else:
    structavsubtitle_520094186)
  enumavpixelformat_520094090 = (when declared(enumavpixelformat):
    enumavpixelformat
   else:
    enumavpixelformat_520094089)
  enumavpicturestructure_520094191 = (when declared(enumavpicturestructure):
    enumavpicturestructure
   else:
    enumavpicturestructure_520094190)
  enumavchannel_520094229 = (when declared(enumavchannel):
    enumavchannel
   else:
    enumavchannel_520094228)
  structavcodecparameters_520094146 = (when declared(structavcodecparameters):
    structavcodecparameters
   else:
    structavcodecparameters_520094145)
  structavprofile_520094082 = (when declared(structavprofile):
    structavprofile
   else:
    structavprofile_520094081)
  enumavcolorspace_520094161 = (when declared(enumavcolorspace):
    enumavcolorspace
   else:
    enumavcolorspace_520094160)
  structavcodeccontext_520094171 = (when declared(structavcodeccontext):
    structavcodeccontext
   else:
    structavcodeccontext_520094170)
  Avdictionary_520094140 = (when declared(Avdictionary):
    Avdictionary
   else:
    Avdictionary_520094139)
  structavclass_520094203 = (when declared(structavclass):
    structavclass
   else:
    structavclass_520094202)
when not declared(structavframe):
  type
    structavframe* = structavframe_520094208
else:
  static :
    hint("Declaration of " & "structavframe" &
        " already exists, not redeclaring")
when not declared(Avcodecdescriptor):
  type
    Avcodecdescriptor* = Avcodecdescriptor_520094143
else:
  static :
    hint("Declaration of " & "Avcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(structrcoverride):
  type
    structrcoverride* = structrcoverride_520094166
else:
  static :
    hint("Declaration of " & "structrcoverride" &
        " already exists, not redeclaring")
when not declared(Avcpbproperties):
  type
    Avcpbproperties* = Avcpbproperties_520094115
else:
  static :
    hint("Declaration of " & "Avcpbproperties" &
        " already exists, not redeclaring")
when not declared(Avcodeccontext):
  type
    Avcodeccontext* = Avcodeccontext_520094176
else:
  static :
    hint("Declaration of " & "Avcodeccontext" &
        " already exists, not redeclaring")
when not declared(Avcodec):
  type
    Avcodec* = Avcodec_520094095
else:
  static :
    hint("Declaration of " & "Avcodec" & " already exists, not redeclaring")
when not declared(Avpacketsidedata):
  type
    Avpacketsidedata* = Avpacketsidedata_520094125
else:
  static :
    hint("Declaration of " & "Avpacketsidedata" &
        " already exists, not redeclaring")
when not declared(Avpacketlist):
  type
    Avpacketlist* = Avpacketlist_520094135
else:
  static :
    hint("Declaration of " & "Avpacketlist" & " already exists, not redeclaring")
when not declared(structavpacket):
  type
    structavpacket* = structavpacket_520094127
else:
  static :
    hint("Declaration of " & "structavpacket" &
        " already exists, not redeclaring")
when not declared(Avclasscategory):
  type
    Avclasscategory* = Avclasscategory_520094210
else:
  static :
    hint("Declaration of " & "Avclasscategory" &
        " already exists, not redeclaring")
when not declared(structavchannelcustom):
  type
    structavchannelcustom* = structavchannelcustom_520094224
else:
  static :
    hint("Declaration of " & "structavchannelcustom" &
        " already exists, not redeclaring")
when not declared(structavframesidedata):
  type
    structavframesidedata* = structavframesidedata_520094226
else:
  static :
    hint("Declaration of " & "structavframesidedata" &
        " already exists, not redeclaring")
when not declared(Avclass):
  type
    Avclass* = Avclass_520094091
else:
  static :
    hint("Declaration of " & "Avclass" & " already exists, not redeclaring")
when not declared(Avbufferref):
  type
    Avbufferref* = Avbufferref_520094129
else:
  static :
    hint("Declaration of " & "Avbufferref" & " already exists, not redeclaring")
when not declared(Avsubtitle):
  type
    Avsubtitle* = Avsubtitle_520094188
else:
  static :
    hint("Declaration of " & "Avsubtitle" & " already exists, not redeclaring")
when not declared(structavproducerreferencetime):
  type
    structavproducerreferencetime* = structavproducerreferencetime_520094117
else:
  static :
    hint("Declaration of " & "structavproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Avcodecparser):
  type
    Avcodecparser* = Avcodecparser_520094198
else:
  static :
    hint("Declaration of " & "Avcodecparser" &
        " already exists, not redeclaring")
when not declared(structavcpbproperties):
  type
    structavcpbproperties* = structavcpbproperties_520094113
else:
  static :
    hint("Declaration of " & "structavcpbproperties" &
        " already exists, not redeclaring")
when not declared(structavpacketsidedata):
  type
    structavpacketsidedata* = structavpacketsidedata_520094123
else:
  static :
    hint("Declaration of " & "structavpacketsidedata" &
        " already exists, not redeclaring")
when not declared(structavcodec):
  type
    structavcodec* = structavcodec_520094085
else:
  static :
    hint("Declaration of " & "structavcodec" &
        " already exists, not redeclaring")
when not declared(Avframesidedata):
  type
    Avframesidedata* = Avframesidedata_520094220
else:
  static :
    hint("Declaration of " & "Avframesidedata" &
        " already exists, not redeclaring")
when not declared(Avcodechwconfig):
  type
    Avcodechwconfig* = Avcodechwconfig_520094101
else:
  static :
    hint("Declaration of " & "Avcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avproducerreferencetime):
  type
    Avproducerreferencetime* = Avproducerreferencetime_520094119
else:
  static :
    hint("Declaration of " & "Avproducerreferencetime" &
        " already exists, not redeclaring")
when not declared(Avsubtitlerect):
  type
    Avsubtitlerect* = Avsubtitlerect_520094184
else:
  static :
    hint("Declaration of " & "Avsubtitlerect" &
        " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094087
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(Avpacket):
  type
    Avpacket* = Avpacket_520094131
else:
  static :
    hint("Declaration of " & "Avpacket" & " already exists, not redeclaring")
when not declared(Avhwaccel):
  type
    Avhwaccel* = Avhwaccel_520094178
else:
  static :
    hint("Declaration of " & "Avhwaccel" & " already exists, not redeclaring")
when not declared(Avcodecparameters):
  type
    Avcodecparameters* = Avcodecparameters_520094164
else:
  static :
    hint("Declaration of " & "Avcodecparameters" &
        " already exists, not redeclaring")
when not declared(Avprofile):
  type
    Avprofile* = Avprofile_520094083
else:
  static :
    hint("Declaration of " & "Avprofile" & " already exists, not redeclaring")
when not declared(structavsubtitlerect):
  type
    structavsubtitlerect* = structavsubtitlerect_520094182
else:
  static :
    hint("Declaration of " & "structavsubtitlerect" &
        " already exists, not redeclaring")
when not declared(Avchannelcustom):
  type
    Avchannelcustom* = Avchannelcustom_520094214
else:
  static :
    hint("Declaration of " & "Avchannelcustom" &
        " already exists, not redeclaring")
when not declared(Avframe):
  type
    Avframe* = Avframe_520094172
else:
  static :
    hint("Declaration of " & "Avframe" & " already exists, not redeclaring")
when not declared(structavpanscan):
  type
    structavpanscan* = structavpanscan_520094109
else:
  static :
    hint("Declaration of " & "structavpanscan" &
        " already exists, not redeclaring")
when not declared(structavbufferref):
  type
    structavbufferref* = structavbufferref_520094206
else:
  static :
    hint("Declaration of " & "structavbufferref" &
        " already exists, not redeclaring")
when not declared(structavchannellayout):
  type
    structavchannellayout* = structavchannellayout_520094204
else:
  static :
    hint("Declaration of " & "structavchannellayout" &
        " already exists, not redeclaring")
when not declared(structavpacketlist):
  type
    structavpacketlist* = structavpacketlist_520094133
else:
  static :
    hint("Declaration of " & "structavpacketlist" &
        " already exists, not redeclaring")
when not declared(Avbuffer):
  type
    Avbuffer* = Avbuffer_520094216
else:
  static :
    hint("Declaration of " & "Avbuffer" & " already exists, not redeclaring")
when not declared(Avcodecparsercontext):
  type
    Avcodecparsercontext* = Avcodecparsercontext_520094196
else:
  static :
    hint("Declaration of " & "Avcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(Avchannellayout):
  type
    Avchannellayout* = Avchannellayout_520094093
else:
  static :
    hint("Declaration of " & "Avchannellayout" &
        " already exists, not redeclaring")
when not declared(structavcodecparsercontext):
  type
    structavcodecparsercontext* = structavcodecparsercontext_520094192
else:
  static :
    hint("Declaration of " & "structavcodecparsercontext" &
        " already exists, not redeclaring")
when not declared(structavhwaccel):
  type
    structavhwaccel* = structavhwaccel_520094174
else:
  static :
    hint("Declaration of " & "structavhwaccel" &
        " already exists, not redeclaring")
when not declared(structavcodecparser):
  type
    structavcodecparser* = structavcodecparser_520094194
else:
  static :
    hint("Declaration of " & "structavcodecparser" &
        " already exists, not redeclaring")
when not declared(structavrational):
  type
    structavrational* = structavrational_520094200
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(Rcoverride):
  type
    Rcoverride* = Rcoverride_520094168
else:
  static :
    hint("Declaration of " & "Rcoverride" & " already exists, not redeclaring")
when not declared(structavcodechwconfig):
  type
    structavcodechwconfig* = structavcodechwconfig_520094097
else:
  static :
    hint("Declaration of " & "structavcodechwconfig" &
        " already exists, not redeclaring")
when not declared(Avpanscan):
  type
    Avpanscan* = Avpanscan_520094111
else:
  static :
    hint("Declaration of " & "Avpanscan" & " already exists, not redeclaring")
when not declared(structavcodecdescriptor):
  type
    structavcodecdescriptor* = structavcodecdescriptor_520094141
else:
  static :
    hint("Declaration of " & "structavcodecdescriptor" &
        " already exists, not redeclaring")
when not declared(structavsubtitle):
  type
    structavsubtitle* = structavsubtitle_520094186
else:
  static :
    hint("Declaration of " & "structavsubtitle" &
        " already exists, not redeclaring")
when not declared(structavcodecparameters):
  type
    structavcodecparameters* = structavcodecparameters_520094145
else:
  static :
    hint("Declaration of " & "structavcodecparameters" &
        " already exists, not redeclaring")
when not declared(structavprofile):
  type
    structavprofile* = structavprofile_520094081
else:
  static :
    hint("Declaration of " & "structavprofile" &
        " already exists, not redeclaring")
when not declared(structavcodeccontext):
  type
    structavcodeccontext* = structavcodeccontext_520094170
else:
  static :
    hint("Declaration of " & "structavcodeccontext" &
        " already exists, not redeclaring")
when not declared(Avdictionary):
  type
    Avdictionary* = Avdictionary_520094139
else:
  static :
    hint("Declaration of " & "Avdictionary" & " already exists, not redeclaring")
when not declared(structavclass):
  type
    structavclass* = structavclass_520094202
else:
  static :
    hint("Declaration of " & "structavclass" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmajor):
  when 60 is static:
    const
      Libavcodecversionmajor* = 60 ## Generated based on /usr/include/libavcodec/version_major.h:28:9
  else:
    let Libavcodecversionmajor* = 60 ## Generated based on /usr/include/libavcodec/version_major.h:28:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmajor" &
        " already exists, not redeclaring")
when not declared(Avinputbufferpaddingsize):
  when 64 is static:
    const
      Avinputbufferpaddingsize* = 64 ## Generated based on /usr/include/libavcodec/defs.h:40:9
  else:
    let Avinputbufferpaddingsize* = 64 ## Generated based on /usr/include/libavcodec/defs.h:40:9
else:
  static :
    hint("Declaration of " & "Avinputbufferpaddingsize" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceverystrict):
  when 2 is static:
    const
      Ffcomplianceverystrict* = 2 ## Generated based on /usr/include/libavcodec/defs.h:58:9
  else:
    let Ffcomplianceverystrict* = 2 ## Generated based on /usr/include/libavcodec/defs.h:58:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceverystrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancestrict):
  when 1 is static:
    const
      Ffcompliancestrict* = 1 ## Generated based on /usr/include/libavcodec/defs.h:59:9
  else:
    let Ffcompliancestrict* = 1 ## Generated based on /usr/include/libavcodec/defs.h:59:9
else:
  static :
    hint("Declaration of " & "Ffcompliancestrict" &
        " already exists, not redeclaring")
when not declared(Ffcompliancenormal):
  when 0 is static:
    const
      Ffcompliancenormal* = 0 ## Generated based on /usr/include/libavcodec/defs.h:60:9
  else:
    let Ffcompliancenormal* = 0 ## Generated based on /usr/include/libavcodec/defs.h:60:9
else:
  static :
    hint("Declaration of " & "Ffcompliancenormal" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceunofficial):
  when -1 is static:
    const
      Ffcomplianceunofficial* = -1 ## Generated based on /usr/include/libavcodec/defs.h:61:9
  else:
    let Ffcomplianceunofficial* = -1 ## Generated based on /usr/include/libavcodec/defs.h:61:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceunofficial" &
        " already exists, not redeclaring")
when not declared(Ffcomplianceexperimental):
  when -2 is static:
    const
      Ffcomplianceexperimental* = -2 ## Generated based on /usr/include/libavcodec/defs.h:62:9
  else:
    let Ffcomplianceexperimental* = -2 ## Generated based on /usr/include/libavcodec/defs.h:62:9
else:
  static :
    hint("Declaration of " & "Ffcomplianceexperimental" &
        " already exists, not redeclaring")
when not declared(Avprofileunknown):
  when -99 is static:
    const
      Avprofileunknown* = -99 ## Generated based on /usr/include/libavcodec/defs.h:65:9
  else:
    let Avprofileunknown* = -99 ## Generated based on /usr/include/libavcodec/defs.h:65:9
else:
  static :
    hint("Declaration of " & "Avprofileunknown" &
        " already exists, not redeclaring")
when not declared(Avprofilereserved):
  when -100 is static:
    const
      Avprofilereserved* = -100 ## Generated based on /usr/include/libavcodec/defs.h:66:9
  else:
    let Avprofilereserved* = -100 ## Generated based on /usr/include/libavcodec/defs.h:66:9
else:
  static :
    hint("Declaration of " & "Avprofilereserved" &
        " already exists, not redeclaring")
when not declared(Avprofileaacmain):
  when 0 is static:
    const
      Avprofileaacmain* = 0  ## Generated based on /usr/include/libavcodec/defs.h:68:9
  else:
    let Avprofileaacmain* = 0 ## Generated based on /usr/include/libavcodec/defs.h:68:9
else:
  static :
    hint("Declaration of " & "Avprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Avprofileaaclow):
  when 1 is static:
    const
      Avprofileaaclow* = 1   ## Generated based on /usr/include/libavcodec/defs.h:69:9
  else:
    let Avprofileaaclow* = 1 ## Generated based on /usr/include/libavcodec/defs.h:69:9
else:
  static :
    hint("Declaration of " & "Avprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Avprofileaacssr):
  when 2 is static:
    const
      Avprofileaacssr* = 2   ## Generated based on /usr/include/libavcodec/defs.h:70:9
  else:
    let Avprofileaacssr* = 2 ## Generated based on /usr/include/libavcodec/defs.h:70:9
else:
  static :
    hint("Declaration of " & "Avprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Avprofileaacltp):
  when 3 is static:
    const
      Avprofileaacltp* = 3   ## Generated based on /usr/include/libavcodec/defs.h:71:9
  else:
    let Avprofileaacltp* = 3 ## Generated based on /usr/include/libavcodec/defs.h:71:9
else:
  static :
    hint("Declaration of " & "Avprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Avprofileaache):
  when 4 is static:
    const
      Avprofileaache* = 4    ## Generated based on /usr/include/libavcodec/defs.h:72:9
  else:
    let Avprofileaache* = 4  ## Generated based on /usr/include/libavcodec/defs.h:72:9
else:
  static :
    hint("Declaration of " & "Avprofileaache" &
        " already exists, not redeclaring")
when not declared(Avprofileaachev2):
  when 28 is static:
    const
      Avprofileaachev2* = 28 ## Generated based on /usr/include/libavcodec/defs.h:73:9
  else:
    let Avprofileaachev2* = 28 ## Generated based on /usr/include/libavcodec/defs.h:73:9
else:
  static :
    hint("Declaration of " & "Avprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Avprofileaacld):
  when 22 is static:
    const
      Avprofileaacld* = 22   ## Generated based on /usr/include/libavcodec/defs.h:74:9
  else:
    let Avprofileaacld* = 22 ## Generated based on /usr/include/libavcodec/defs.h:74:9
else:
  static :
    hint("Declaration of " & "Avprofileaacld" &
        " already exists, not redeclaring")
when not declared(Avprofileaaceld):
  when 38 is static:
    const
      Avprofileaaceld* = 38  ## Generated based on /usr/include/libavcodec/defs.h:75:9
  else:
    let Avprofileaaceld* = 38 ## Generated based on /usr/include/libavcodec/defs.h:75:9
else:
  static :
    hint("Declaration of " & "Avprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aaclow):
  when 128 is static:
    const
      Avprofilempeg2aaclow* = 128 ## Generated based on /usr/include/libavcodec/defs.h:76:9
  else:
    let Avprofilempeg2aaclow* = 128 ## Generated based on /usr/include/libavcodec/defs.h:76:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2aache):
  when 131 is static:
    const
      Avprofilempeg2aache* = 131 ## Generated based on /usr/include/libavcodec/defs.h:77:9
  else:
    let Avprofilempeg2aache* = 131 ## Generated based on /usr/include/libavcodec/defs.h:77:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhd):
  when 0 is static:
    const
      Avprofilednxhd* = 0    ## Generated based on /usr/include/libavcodec/defs.h:79:9
  else:
    let Avprofilednxhd* = 0  ## Generated based on /usr/include/libavcodec/defs.h:79:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrlb):
  when 1 is static:
    const
      Avprofilednxhrlb* = 1  ## Generated based on /usr/include/libavcodec/defs.h:80:9
  else:
    let Avprofilednxhrlb* = 1 ## Generated based on /usr/include/libavcodec/defs.h:80:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrsq):
  when 2 is static:
    const
      Avprofilednxhrsq* = 2  ## Generated based on /usr/include/libavcodec/defs.h:81:9
  else:
    let Avprofilednxhrsq* = 2 ## Generated based on /usr/include/libavcodec/defs.h:81:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhq):
  when 3 is static:
    const
      Avprofilednxhrhq* = 3  ## Generated based on /usr/include/libavcodec/defs.h:82:9
  else:
    let Avprofilednxhrhq* = 3 ## Generated based on /usr/include/libavcodec/defs.h:82:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhrhqx):
  when 4 is static:
    const
      Avprofilednxhrhqx* = 4 ## Generated based on /usr/include/libavcodec/defs.h:83:9
  else:
    let Avprofilednxhrhqx* = 4 ## Generated based on /usr/include/libavcodec/defs.h:83:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Avprofilednxhr444):
  when 5 is static:
    const
      Avprofilednxhr444* = 5 ## Generated based on /usr/include/libavcodec/defs.h:84:9
  else:
    let Avprofilednxhr444* = 5 ## Generated based on /usr/include/libavcodec/defs.h:84:9
else:
  static :
    hint("Declaration of " & "Avprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Avprofiledts):
  when 20 is static:
    const
      Avprofiledts* = 20     ## Generated based on /usr/include/libavcodec/defs.h:86:9
  else:
    let Avprofiledts* = 20   ## Generated based on /usr/include/libavcodec/defs.h:86:9
else:
  static :
    hint("Declaration of " & "Avprofiledts" & " already exists, not redeclaring")
when not declared(Avprofiledtses):
  when 30 is static:
    const
      Avprofiledtses* = 30   ## Generated based on /usr/include/libavcodec/defs.h:87:9
  else:
    let Avprofiledtses* = 30 ## Generated based on /usr/include/libavcodec/defs.h:87:9
else:
  static :
    hint("Declaration of " & "Avprofiledtses" &
        " already exists, not redeclaring")
when not declared(Avprofiledts9624):
  when 40 is static:
    const
      Avprofiledts9624* = 40 ## Generated based on /usr/include/libavcodec/defs.h:88:9
  else:
    let Avprofiledts9624* = 40 ## Generated based on /usr/include/libavcodec/defs.h:88:9
else:
  static :
    hint("Declaration of " & "Avprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdhra):
  when 50 is static:
    const
      Avprofiledtshdhra* = 50 ## Generated based on /usr/include/libavcodec/defs.h:89:9
  else:
    let Avprofiledtshdhra* = 50 ## Generated based on /usr/include/libavcodec/defs.h:89:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdma):
  when 60 is static:
    const
      Avprofiledtshdma* = 60 ## Generated based on /usr/include/libavcodec/defs.h:90:9
  else:
    let Avprofiledtshdma* = 60 ## Generated based on /usr/include/libavcodec/defs.h:90:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Avprofiledtsexpress):
  when 70 is static:
    const
      Avprofiledtsexpress* = 70 ## Generated based on /usr/include/libavcodec/defs.h:91:9
  else:
    let Avprofiledtsexpress* = 70 ## Generated based on /usr/include/libavcodec/defs.h:91:9
else:
  static :
    hint("Declaration of " & "Avprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmax):
  when 61 is static:
    const
      Avprofiledtshdmax* = 61 ## Generated based on /usr/include/libavcodec/defs.h:92:9
  else:
    let Avprofiledtshdmax* = 61 ## Generated based on /usr/include/libavcodec/defs.h:92:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Avprofiledtshdmaximax):
  when 62 is static:
    const
      Avprofiledtshdmaximax* = 62 ## Generated based on /usr/include/libavcodec/defs.h:93:9
  else:
    let Avprofiledtshdmaximax* = 62 ## Generated based on /usr/include/libavcodec/defs.h:93:9
else:
  static :
    hint("Declaration of " & "Avprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Avprofileeac3ddpatmos):
  when 30 is static:
    const
      Avprofileeac3ddpatmos* = 30 ## Generated based on /usr/include/libavcodec/defs.h:95:9
  else:
    let Avprofileeac3ddpatmos* = 30 ## Generated based on /usr/include/libavcodec/defs.h:95:9
else:
  static :
    hint("Declaration of " & "Avprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Avprofiletruehdatmos):
  when 30 is static:
    const
      Avprofiletruehdatmos* = 30 ## Generated based on /usr/include/libavcodec/defs.h:97:9
  else:
    let Avprofiletruehdatmos* = 30 ## Generated based on /usr/include/libavcodec/defs.h:97:9
else:
  static :
    hint("Declaration of " & "Avprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2422):
  when 0 is static:
    const
      Avprofilempeg2422* = 0 ## Generated based on /usr/include/libavcodec/defs.h:99:9
  else:
    let Avprofilempeg2422* = 0 ## Generated based on /usr/include/libavcodec/defs.h:99:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2high):
  when 1 is static:
    const
      Avprofilempeg2high* = 1 ## Generated based on /usr/include/libavcodec/defs.h:100:9
  else:
    let Avprofilempeg2high* = 1 ## Generated based on /usr/include/libavcodec/defs.h:100:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2ss):
  when 2 is static:
    const
      Avprofilempeg2ss* = 2  ## Generated based on /usr/include/libavcodec/defs.h:101:9
  else:
    let Avprofilempeg2ss* = 2 ## Generated based on /usr/include/libavcodec/defs.h:101:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2snrscalable):
  when 3 is static:
    const
      Avprofilempeg2snrscalable* = 3 ## Generated based on /usr/include/libavcodec/defs.h:102:9
  else:
    let Avprofilempeg2snrscalable* = 3 ## Generated based on /usr/include/libavcodec/defs.h:102:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2main):
  when 4 is static:
    const
      Avprofilempeg2main* = 4 ## Generated based on /usr/include/libavcodec/defs.h:103:9
  else:
    let Avprofilempeg2main* = 4 ## Generated based on /usr/include/libavcodec/defs.h:103:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg2simple):
  when 5 is static:
    const
      Avprofilempeg2simple* = 5 ## Generated based on /usr/include/libavcodec/defs.h:104:9
  else:
    let Avprofilempeg2simple* = 5 ## Generated based on /usr/include/libavcodec/defs.h:104:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Avprofileh264baseline):
  when 66 is static:
    const
      Avprofileh264baseline* = 66 ## Generated based on /usr/include/libavcodec/defs.h:109:9
  else:
    let Avprofileh264baseline* = 66 ## Generated based on /usr/include/libavcodec/defs.h:109:9
else:
  static :
    hint("Declaration of " & "Avprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Avprofileh264main):
  when 77 is static:
    const
      Avprofileh264main* = 77 ## Generated based on /usr/include/libavcodec/defs.h:111:9
  else:
    let Avprofileh264main* = 77 ## Generated based on /usr/include/libavcodec/defs.h:111:9
else:
  static :
    hint("Declaration of " & "Avprofileh264main" &
        " already exists, not redeclaring")
when not declared(Avprofileh264extended):
  when 88 is static:
    const
      Avprofileh264extended* = 88 ## Generated based on /usr/include/libavcodec/defs.h:112:9
  else:
    let Avprofileh264extended* = 88 ## Generated based on /usr/include/libavcodec/defs.h:112:9
else:
  static :
    hint("Declaration of " & "Avprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high):
  when 100 is static:
    const
      Avprofileh264high* = 100 ## Generated based on /usr/include/libavcodec/defs.h:113:9
  else:
    let Avprofileh264high* = 100 ## Generated based on /usr/include/libavcodec/defs.h:113:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high10):
  when 110 is static:
    const
      Avprofileh264high10* = 110 ## Generated based on /usr/include/libavcodec/defs.h:114:9
  else:
    let Avprofileh264high10* = 110 ## Generated based on /usr/include/libavcodec/defs.h:114:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Avprofileh264multiviewhigh):
  when 118 is static:
    const
      Avprofileh264multiviewhigh* = 118 ## Generated based on /usr/include/libavcodec/defs.h:116:9
  else:
    let Avprofileh264multiviewhigh* = 118 ## Generated based on /usr/include/libavcodec/defs.h:116:9
else:
  static :
    hint("Declaration of " & "Avprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high422):
  when 122 is static:
    const
      Avprofileh264high422* = 122 ## Generated based on /usr/include/libavcodec/defs.h:117:9
  else:
    let Avprofileh264high422* = 122 ## Generated based on /usr/include/libavcodec/defs.h:117:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Avprofileh264stereohigh):
  when 128 is static:
    const
      Avprofileh264stereohigh* = 128 ## Generated based on /usr/include/libavcodec/defs.h:119:9
  else:
    let Avprofileh264stereohigh* = 128 ## Generated based on /usr/include/libavcodec/defs.h:119:9
else:
  static :
    hint("Declaration of " & "Avprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444):
  when 144 is static:
    const
      Avprofileh264high444* = 144 ## Generated based on /usr/include/libavcodec/defs.h:120:9
  else:
    let Avprofileh264high444* = 144 ## Generated based on /usr/include/libavcodec/defs.h:120:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Avprofileh264high444predictive):
  when 244 is static:
    const
      Avprofileh264high444predictive* = 244 ## Generated based on /usr/include/libavcodec/defs.h:121:9
  else:
    let Avprofileh264high444predictive* = 244 ## Generated based on /usr/include/libavcodec/defs.h:121:9
else:
  static :
    hint("Declaration of " & "Avprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Avprofileh264cavlc444):
  when 44 is static:
    const
      Avprofileh264cavlc444* = 44 ## Generated based on /usr/include/libavcodec/defs.h:123:9
  else:
    let Avprofileh264cavlc444* = 44 ## Generated based on /usr/include/libavcodec/defs.h:123:9
else:
  static :
    hint("Declaration of " & "Avprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1simple):
  when 0 is static:
    const
      Avprofilevc1simple* = 0 ## Generated based on /usr/include/libavcodec/defs.h:125:9
  else:
    let Avprofilevc1simple* = 0 ## Generated based on /usr/include/libavcodec/defs.h:125:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1main):
  when 1 is static:
    const
      Avprofilevc1main* = 1  ## Generated based on /usr/include/libavcodec/defs.h:126:9
  else:
    let Avprofilevc1main* = 1 ## Generated based on /usr/include/libavcodec/defs.h:126:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1complex):
  when 2 is static:
    const
      Avprofilevc1complex* = 2 ## Generated based on /usr/include/libavcodec/defs.h:127:9
  else:
    let Avprofilevc1complex* = 2 ## Generated based on /usr/include/libavcodec/defs.h:127:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Avprofilevc1advanced):
  when 3 is static:
    const
      Avprofilevc1advanced* = 3 ## Generated based on /usr/include/libavcodec/defs.h:128:9
  else:
    let Avprofilevc1advanced* = 3 ## Generated based on /usr/include/libavcodec/defs.h:128:9
else:
  static :
    hint("Declaration of " & "Avprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simple):
  when 0 is static:
    const
      Avprofilempeg4simple* = 0 ## Generated based on /usr/include/libavcodec/defs.h:130:9
  else:
    let Avprofilempeg4simple* = 0 ## Generated based on /usr/include/libavcodec/defs.h:130:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplescalable):
  when 1 is static:
    const
      Avprofilempeg4simplescalable* = 1 ## Generated based on /usr/include/libavcodec/defs.h:131:9
  else:
    let Avprofilempeg4simplescalable* = 1 ## Generated based on /usr/include/libavcodec/defs.h:131:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4core):
  when 2 is static:
    const
      Avprofilempeg4core* = 2 ## Generated based on /usr/include/libavcodec/defs.h:132:9
  else:
    let Avprofilempeg4core* = 2 ## Generated based on /usr/include/libavcodec/defs.h:132:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4main):
  when 3 is static:
    const
      Avprofilempeg4main* = 3 ## Generated based on /usr/include/libavcodec/defs.h:133:9
  else:
    let Avprofilempeg4main* = 3 ## Generated based on /usr/include/libavcodec/defs.h:133:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4nbit):
  when 4 is static:
    const
      Avprofilempeg4nbit* = 4 ## Generated based on /usr/include/libavcodec/defs.h:134:9
  else:
    let Avprofilempeg4nbit* = 4 ## Generated based on /usr/include/libavcodec/defs.h:134:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4scalabletexture):
  when 5 is static:
    const
      Avprofilempeg4scalabletexture* = 5 ## Generated based on /usr/include/libavcodec/defs.h:135:9
  else:
    let Avprofilempeg4scalabletexture* = 5 ## Generated based on /usr/include/libavcodec/defs.h:135:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /usr/include/libavcodec/defs.h:136:9
  else:
    let Avprofilempeg4simplefaceanimation* = 6 ## Generated based on /usr/include/libavcodec/defs.h:136:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /usr/include/libavcodec/defs.h:137:9
  else:
    let Avprofilempeg4basicanimatedtexture* = 7 ## Generated based on /usr/include/libavcodec/defs.h:137:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4hybrid):
  when 8 is static:
    const
      Avprofilempeg4hybrid* = 8 ## Generated based on /usr/include/libavcodec/defs.h:138:9
  else:
    let Avprofilempeg4hybrid* = 8 ## Generated based on /usr/include/libavcodec/defs.h:138:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Avprofilempeg4advancedrealtime* = 9 ## Generated based on /usr/include/libavcodec/defs.h:139:9
  else:
    let Avprofilempeg4advancedrealtime* = 9 ## Generated based on /usr/include/libavcodec/defs.h:139:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4corescalable):
  when 10 is static:
    const
      Avprofilempeg4corescalable* = 10 ## Generated based on /usr/include/libavcodec/defs.h:140:9
  else:
    let Avprofilempeg4corescalable* = 10 ## Generated based on /usr/include/libavcodec/defs.h:140:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcoding):
  when 11 is static:
    const
      Avprofilempeg4advancedcoding* = 11 ## Generated based on /usr/include/libavcodec/defs.h:141:9
  else:
    let Avprofilempeg4advancedcoding* = 11 ## Generated based on /usr/include/libavcodec/defs.h:141:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedcore):
  when 12 is static:
    const
      Avprofilempeg4advancedcore* = 12 ## Generated based on /usr/include/libavcodec/defs.h:142:9
  else:
    let Avprofilempeg4advancedcore* = 12 ## Generated based on /usr/include/libavcodec/defs.h:142:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /usr/include/libavcodec/defs.h:143:9
  else:
    let Avprofilempeg4advancedscalabletexture* = 13 ## Generated based on /usr/include/libavcodec/defs.h:143:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4simplestudio):
  when 14 is static:
    const
      Avprofilempeg4simplestudio* = 14 ## Generated based on /usr/include/libavcodec/defs.h:144:9
  else:
    let Avprofilempeg4simplestudio* = 14 ## Generated based on /usr/include/libavcodec/defs.h:144:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Avprofilempeg4advancedsimple):
  when 15 is static:
    const
      Avprofilempeg4advancedsimple* = 15 ## Generated based on /usr/include/libavcodec/defs.h:145:9
  else:
    let Avprofilempeg4advancedsimple* = 15 ## Generated based on /usr/include/libavcodec/defs.h:145:9
else:
  static :
    hint("Declaration of " & "Avprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /usr/include/libavcodec/defs.h:147:9
  else:
    let Avprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /usr/include/libavcodec/defs.h:147:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /usr/include/libavcodec/defs.h:148:9
  else:
    let Avprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /usr/include/libavcodec/defs.h:148:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /usr/include/libavcodec/defs.h:149:9
  else:
    let Avprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /usr/include/libavcodec/defs.h:149:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /usr/include/libavcodec/defs.h:150:9
  else:
    let Avprofilejpeg2000dcinema2k* = 3 ## Generated based on /usr/include/libavcodec/defs.h:150:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Avprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /usr/include/libavcodec/defs.h:151:9
  else:
    let Avprofilejpeg2000dcinema4k* = 4 ## Generated based on /usr/include/libavcodec/defs.h:151:9
else:
  static :
    hint("Declaration of " & "Avprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Avprofilevp90):
  when 0 is static:
    const
      Avprofilevp90* = 0     ## Generated based on /usr/include/libavcodec/defs.h:153:9
  else:
    let Avprofilevp90* = 0   ## Generated based on /usr/include/libavcodec/defs.h:153:9
else:
  static :
    hint("Declaration of " & "Avprofilevp90" &
        " already exists, not redeclaring")
when not declared(Avprofilevp91):
  when 1 is static:
    const
      Avprofilevp91* = 1     ## Generated based on /usr/include/libavcodec/defs.h:154:9
  else:
    let Avprofilevp91* = 1   ## Generated based on /usr/include/libavcodec/defs.h:154:9
else:
  static :
    hint("Declaration of " & "Avprofilevp91" &
        " already exists, not redeclaring")
when not declared(Avprofilevp92):
  when 2 is static:
    const
      Avprofilevp92* = 2     ## Generated based on /usr/include/libavcodec/defs.h:155:9
  else:
    let Avprofilevp92* = 2   ## Generated based on /usr/include/libavcodec/defs.h:155:9
else:
  static :
    hint("Declaration of " & "Avprofilevp92" &
        " already exists, not redeclaring")
when not declared(Avprofilevp93):
  when 3 is static:
    const
      Avprofilevp93* = 3     ## Generated based on /usr/include/libavcodec/defs.h:156:9
  else:
    let Avprofilevp93* = 3   ## Generated based on /usr/include/libavcodec/defs.h:156:9
else:
  static :
    hint("Declaration of " & "Avprofilevp93" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain):
  when 1 is static:
    const
      Avprofilehevcmain* = 1 ## Generated based on /usr/include/libavcodec/defs.h:158:9
  else:
    let Avprofilehevcmain* = 1 ## Generated based on /usr/include/libavcodec/defs.h:158:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmain10):
  when 2 is static:
    const
      Avprofilehevcmain10* = 2 ## Generated based on /usr/include/libavcodec/defs.h:159:9
  else:
    let Avprofilehevcmain10* = 2 ## Generated based on /usr/include/libavcodec/defs.h:159:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcmainstillpicture):
  when 3 is static:
    const
      Avprofilehevcmainstillpicture* = 3 ## Generated based on /usr/include/libavcodec/defs.h:160:9
  else:
    let Avprofilehevcmainstillpicture* = 3 ## Generated based on /usr/include/libavcodec/defs.h:160:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcrext):
  when 4 is static:
    const
      Avprofilehevcrext* = 4 ## Generated based on /usr/include/libavcodec/defs.h:161:9
  else:
    let Avprofilehevcrext* = 4 ## Generated based on /usr/include/libavcodec/defs.h:161:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Avprofilehevcscc):
  when 9 is static:
    const
      Avprofilehevcscc* = 9  ## Generated based on /usr/include/libavcodec/defs.h:162:9
  else:
    let Avprofilehevcscc* = 9 ## Generated based on /usr/include/libavcodec/defs.h:162:9
else:
  static :
    hint("Declaration of " & "Avprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10):
  when 1 is static:
    const
      Avprofilevvcmain10* = 1 ## Generated based on /usr/include/libavcodec/defs.h:164:9
  else:
    let Avprofilevvcmain10* = 1 ## Generated based on /usr/include/libavcodec/defs.h:164:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Avprofilevvcmain10444):
  when 33 is static:
    const
      Avprofilevvcmain10444* = 33 ## Generated based on /usr/include/libavcodec/defs.h:165:9
  else:
    let Avprofilevvcmain10444* = 33 ## Generated based on /usr/include/libavcodec/defs.h:165:9
else:
  static :
    hint("Declaration of " & "Avprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Avprofileav1main):
  when 0 is static:
    const
      Avprofileav1main* = 0  ## Generated based on /usr/include/libavcodec/defs.h:167:9
  else:
    let Avprofileav1main* = 0 ## Generated based on /usr/include/libavcodec/defs.h:167:9
else:
  static :
    hint("Declaration of " & "Avprofileav1main" &
        " already exists, not redeclaring")
when not declared(Avprofileav1high):
  when 1 is static:
    const
      Avprofileav1high* = 1  ## Generated based on /usr/include/libavcodec/defs.h:168:9
  else:
    let Avprofileav1high* = 1 ## Generated based on /usr/include/libavcodec/defs.h:168:9
else:
  static :
    hint("Declaration of " & "Avprofileav1high" &
        " already exists, not redeclaring")
when not declared(Avprofileav1professional):
  when 2 is static:
    const
      Avprofileav1professional* = 2 ## Generated based on /usr/include/libavcodec/defs.h:169:9
  else:
    let Avprofileav1professional* = 2 ## Generated based on /usr/include/libavcodec/defs.h:169:9
else:
  static :
    hint("Declaration of " & "Avprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /usr/include/libavcodec/defs.h:171:9
  else:
    let Avprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /usr/include/libavcodec/defs.h:171:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /usr/include/libavcodec/defs.h:172:9
  else:
    let Avprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /usr/include/libavcodec/defs.h:172:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /usr/include/libavcodec/defs.h:173:9
  else:
    let Avprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /usr/include/libavcodec/defs.h:173:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /usr/include/libavcodec/defs.h:174:9
  else:
    let Avprofilemjpeghuffmanlossless* = 195 ## Generated based on /usr/include/libavcodec/defs.h:174:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Avprofilemjpegjpegls):
  when 247 is static:
    const
      Avprofilemjpegjpegls* = 247 ## Generated based on /usr/include/libavcodec/defs.h:175:9
  else:
    let Avprofilemjpegjpegls* = 247 ## Generated based on /usr/include/libavcodec/defs.h:175:9
else:
  static :
    hint("Declaration of " & "Avprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Avprofilesbcmsbc):
  when 1 is static:
    const
      Avprofilesbcmsbc* = 1  ## Generated based on /usr/include/libavcodec/defs.h:177:9
  else:
    let Avprofilesbcmsbc* = 1 ## Generated based on /usr/include/libavcodec/defs.h:177:9
else:
  static :
    hint("Declaration of " & "Avprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Avprofileproresproxy):
  when 0 is static:
    const
      Avprofileproresproxy* = 0 ## Generated based on /usr/include/libavcodec/defs.h:179:9
  else:
    let Avprofileproresproxy* = 0 ## Generated based on /usr/include/libavcodec/defs.h:179:9
else:
  static :
    hint("Declaration of " & "Avprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Avprofileproreslt):
  when 1 is static:
    const
      Avprofileproreslt* = 1 ## Generated based on /usr/include/libavcodec/defs.h:180:9
  else:
    let Avprofileproreslt* = 1 ## Generated based on /usr/include/libavcodec/defs.h:180:9
else:
  static :
    hint("Declaration of " & "Avprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Avprofileproresstandard):
  when 2 is static:
    const
      Avprofileproresstandard* = 2 ## Generated based on /usr/include/libavcodec/defs.h:181:9
  else:
    let Avprofileproresstandard* = 2 ## Generated based on /usr/include/libavcodec/defs.h:181:9
else:
  static :
    hint("Declaration of " & "Avprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Avprofileproreshq):
  when 3 is static:
    const
      Avprofileproreshq* = 3 ## Generated based on /usr/include/libavcodec/defs.h:182:9
  else:
    let Avprofileproreshq* = 3 ## Generated based on /usr/include/libavcodec/defs.h:182:9
else:
  static :
    hint("Declaration of " & "Avprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Avprofileprores4444):
  when 4 is static:
    const
      Avprofileprores4444* = 4 ## Generated based on /usr/include/libavcodec/defs.h:183:9
  else:
    let Avprofileprores4444* = 4 ## Generated based on /usr/include/libavcodec/defs.h:183:9
else:
  static :
    hint("Declaration of " & "Avprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Avprofileproresxq):
  when 5 is static:
    const
      Avprofileproresxq* = 5 ## Generated based on /usr/include/libavcodec/defs.h:184:9
  else:
    let Avprofileproresxq* = 5 ## Generated based on /usr/include/libavcodec/defs.h:184:9
else:
  static :
    hint("Declaration of " & "Avprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilea):
  when 0 is static:
    const
      Avprofilearibprofilea* = 0 ## Generated based on /usr/include/libavcodec/defs.h:186:9
  else:
    let Avprofilearibprofilea* = 0 ## Generated based on /usr/include/libavcodec/defs.h:186:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Avprofilearibprofilec):
  when 1 is static:
    const
      Avprofilearibprofilec* = 1 ## Generated based on /usr/include/libavcodec/defs.h:187:9
  else:
    let Avprofilearibprofilec* = 1 ## Generated based on /usr/include/libavcodec/defs.h:187:9
else:
  static :
    hint("Declaration of " & "Avprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Avprofileklvasync):
  when 0 is static:
    const
      Avprofileklvasync* = 0 ## Generated based on /usr/include/libavcodec/defs.h:189:9
  else:
    let Avprofileklvasync* = 0 ## Generated based on /usr/include/libavcodec/defs.h:189:9
else:
  static :
    hint("Declaration of " & "Avprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Avprofileklvaasync):
  when 1 is static:
    const
      Avprofileklvaasync* = 1 ## Generated based on /usr/include/libavcodec/defs.h:190:9
  else:
    let Avprofileklvaasync* = 1 ## Generated based on /usr/include/libavcodec/defs.h:190:9
else:
  static :
    hint("Declaration of " & "Avprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Avprofileevcbaseline):
  when 0 is static:
    const
      Avprofileevcbaseline* = 0 ## Generated based on /usr/include/libavcodec/defs.h:192:9
  else:
    let Avprofileevcbaseline* = 0 ## Generated based on /usr/include/libavcodec/defs.h:192:9
else:
  static :
    hint("Declaration of " & "Avprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Avprofileevcmain):
  when 1 is static:
    const
      Avprofileevcmain* = 1  ## Generated based on /usr/include/libavcodec/defs.h:193:9
  else:
    let Avprofileevcmain* = 1 ## Generated based on /usr/include/libavcodec/defs.h:193:9
else:
  static :
    hint("Declaration of " & "Avprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Avlevelunknown):
  when -99 is static:
    const
      Avlevelunknown* = -99  ## Generated based on /usr/include/libavcodec/defs.h:196:9
  else:
    let Avlevelunknown* = -99 ## Generated based on /usr/include/libavcodec/defs.h:196:9
else:
  static :
    hint("Declaration of " & "Avlevelunknown" &
        " already exists, not redeclaring")
when not declared(Avpktflagkey):
  when 1 is static:
    const
      Avpktflagkey* = 1      ## Generated based on /usr/include/libavcodec/packet.h:546:9
  else:
    let Avpktflagkey* = 1    ## Generated based on /usr/include/libavcodec/packet.h:546:9
else:
  static :
    hint("Declaration of " & "Avpktflagkey" & " already exists, not redeclaring")
when not declared(Avpktflagcorrupt):
  when 2 is static:
    const
      Avpktflagcorrupt* = 2  ## Generated based on /usr/include/libavcodec/packet.h:547:9
  else:
    let Avpktflagcorrupt* = 2 ## Generated based on /usr/include/libavcodec/packet.h:547:9
else:
  static :
    hint("Declaration of " & "Avpktflagcorrupt" &
        " already exists, not redeclaring")
when not declared(Avpktflagdiscard):
  when 4 is static:
    const
      Avpktflagdiscard* = 4  ## Generated based on /usr/include/libavcodec/packet.h:553:9
  else:
    let Avpktflagdiscard* = 4 ## Generated based on /usr/include/libavcodec/packet.h:553:9
else:
  static :
    hint("Declaration of " & "Avpktflagdiscard" &
        " already exists, not redeclaring")
when not declared(Avpktflagtrusted):
  when 8 is static:
    const
      Avpktflagtrusted* = 8  ## Generated based on /usr/include/libavcodec/packet.h:560:9
  else:
    let Avpktflagtrusted* = 8 ## Generated based on /usr/include/libavcodec/packet.h:560:9
else:
  static :
    hint("Declaration of " & "Avpktflagtrusted" &
        " already exists, not redeclaring")
when not declared(Avpktflagdisposable):
  when 16 is static:
    const
      Avpktflagdisposable* = 16 ## Generated based on /usr/include/libavcodec/packet.h:565:9
  else:
    let Avpktflagdisposable* = 16 ## Generated based on /usr/include/libavcodec/packet.h:565:9
else:
  static :
    hint("Declaration of " & "Avpktflagdisposable" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionminor):
  when 31 is static:
    const
      Libavcodecversionminor* = 31 ## Generated based on /usr/include/libavcodec/version.h:32:9
  else:
    let Libavcodecversionminor* = 31 ## Generated based on /usr/include/libavcodec/version.h:32:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionminor" &
        " already exists, not redeclaring")
when not declared(Libavcodecversionmicro):
  when 102 is static:
    const
      Libavcodecversionmicro* = 102 ## Generated based on /usr/include/libavcodec/version.h:33:9
  else:
    let Libavcodecversionmicro* = 102 ## Generated based on /usr/include/libavcodec/version.h:33:9
else:
  static :
    hint("Declaration of " & "Libavcodecversionmicro" &
        " already exists, not redeclaring")
when not declared(Avinputbufferminsize):
  when 16384 is static:
    const
      Avinputbufferminsize* = 16384 ## Generated based on /usr/include/libavcodec/avcodec.h:195:9
  else:
    let Avinputbufferminsize* = 16384 ## Generated based on /usr/include/libavcodec/avcodec.h:195:9
else:
  static :
    hint("Declaration of " & "Avinputbufferminsize" &
        " already exists, not redeclaring")
when not declared(Ffcompressiondefault):
  when -1 is static:
    const
      Ffcompressiondefault* = -1 ## Generated based on /usr/include/libavcodec/avcodec.h:514:9
  else:
    let Ffcompressiondefault* = -1 ## Generated based on /usr/include/libavcodec/avcodec.h:514:9
else:
  static :
    hint("Declaration of " & "Ffcompressiondefault" &
        " already exists, not redeclaring")
when not declared(Ffcmpsad):
  when 0 is static:
    const
      Ffcmpsad* = 0          ## Generated based on /usr/include/libavcodec/avcodec.h:848:9
  else:
    let Ffcmpsad* = 0        ## Generated based on /usr/include/libavcodec/avcodec.h:848:9
else:
  static :
    hint("Declaration of " & "Ffcmpsad" & " already exists, not redeclaring")
when not declared(Ffcmpsse):
  when 1 is static:
    const
      Ffcmpsse* = 1          ## Generated based on /usr/include/libavcodec/avcodec.h:849:9
  else:
    let Ffcmpsse* = 1        ## Generated based on /usr/include/libavcodec/avcodec.h:849:9
else:
  static :
    hint("Declaration of " & "Ffcmpsse" & " already exists, not redeclaring")
when not declared(Ffcmpsatd):
  when 2 is static:
    const
      Ffcmpsatd* = 2         ## Generated based on /usr/include/libavcodec/avcodec.h:850:9
  else:
    let Ffcmpsatd* = 2       ## Generated based on /usr/include/libavcodec/avcodec.h:850:9
else:
  static :
    hint("Declaration of " & "Ffcmpsatd" & " already exists, not redeclaring")
when not declared(Ffcmpdct):
  when 3 is static:
    const
      Ffcmpdct* = 3          ## Generated based on /usr/include/libavcodec/avcodec.h:851:9
  else:
    let Ffcmpdct* = 3        ## Generated based on /usr/include/libavcodec/avcodec.h:851:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct" & " already exists, not redeclaring")
when not declared(Ffcmppsnr):
  when 4 is static:
    const
      Ffcmppsnr* = 4         ## Generated based on /usr/include/libavcodec/avcodec.h:852:9
  else:
    let Ffcmppsnr* = 4       ## Generated based on /usr/include/libavcodec/avcodec.h:852:9
else:
  static :
    hint("Declaration of " & "Ffcmppsnr" & " already exists, not redeclaring")
when not declared(Ffcmpbit):
  when 5 is static:
    const
      Ffcmpbit* = 5          ## Generated based on /usr/include/libavcodec/avcodec.h:853:9
  else:
    let Ffcmpbit* = 5        ## Generated based on /usr/include/libavcodec/avcodec.h:853:9
else:
  static :
    hint("Declaration of " & "Ffcmpbit" & " already exists, not redeclaring")
when not declared(Ffcmprd):
  when 6 is static:
    const
      Ffcmprd* = 6           ## Generated based on /usr/include/libavcodec/avcodec.h:854:9
  else:
    let Ffcmprd* = 6         ## Generated based on /usr/include/libavcodec/avcodec.h:854:9
else:
  static :
    hint("Declaration of " & "Ffcmprd" & " already exists, not redeclaring")
when not declared(Ffcmpzero):
  when 7 is static:
    const
      Ffcmpzero* = 7         ## Generated based on /usr/include/libavcodec/avcodec.h:855:9
  else:
    let Ffcmpzero* = 7       ## Generated based on /usr/include/libavcodec/avcodec.h:855:9
else:
  static :
    hint("Declaration of " & "Ffcmpzero" & " already exists, not redeclaring")
when not declared(Ffcmpvsad):
  when 8 is static:
    const
      Ffcmpvsad* = 8         ## Generated based on /usr/include/libavcodec/avcodec.h:856:9
  else:
    let Ffcmpvsad* = 8       ## Generated based on /usr/include/libavcodec/avcodec.h:856:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsad" & " already exists, not redeclaring")
when not declared(Ffcmpvsse):
  when 9 is static:
    const
      Ffcmpvsse* = 9         ## Generated based on /usr/include/libavcodec/avcodec.h:857:9
  else:
    let Ffcmpvsse* = 9       ## Generated based on /usr/include/libavcodec/avcodec.h:857:9
else:
  static :
    hint("Declaration of " & "Ffcmpvsse" & " already exists, not redeclaring")
when not declared(Ffcmpnsse):
  when 10 is static:
    const
      Ffcmpnsse* = 10        ## Generated based on /usr/include/libavcodec/avcodec.h:858:9
  else:
    let Ffcmpnsse* = 10      ## Generated based on /usr/include/libavcodec/avcodec.h:858:9
else:
  static :
    hint("Declaration of " & "Ffcmpnsse" & " already exists, not redeclaring")
when not declared(Ffcmpw53):
  when 11 is static:
    const
      Ffcmpw53* = 11         ## Generated based on /usr/include/libavcodec/avcodec.h:859:9
  else:
    let Ffcmpw53* = 11       ## Generated based on /usr/include/libavcodec/avcodec.h:859:9
else:
  static :
    hint("Declaration of " & "Ffcmpw53" & " already exists, not redeclaring")
when not declared(Ffcmpw97):
  when 12 is static:
    const
      Ffcmpw97* = 12         ## Generated based on /usr/include/libavcodec/avcodec.h:860:9
  else:
    let Ffcmpw97* = 12       ## Generated based on /usr/include/libavcodec/avcodec.h:860:9
else:
  static :
    hint("Declaration of " & "Ffcmpw97" & " already exists, not redeclaring")
when not declared(Ffcmpdctmax):
  when 13 is static:
    const
      Ffcmpdctmax* = 13      ## Generated based on /usr/include/libavcodec/avcodec.h:861:9
  else:
    let Ffcmpdctmax* = 13    ## Generated based on /usr/include/libavcodec/avcodec.h:861:9
else:
  static :
    hint("Declaration of " & "Ffcmpdctmax" & " already exists, not redeclaring")
when not declared(Ffcmpdct264):
  when 14 is static:
    const
      Ffcmpdct264* = 14      ## Generated based on /usr/include/libavcodec/avcodec.h:862:9
  else:
    let Ffcmpdct264* = 14    ## Generated based on /usr/include/libavcodec/avcodec.h:862:9
else:
  static :
    hint("Declaration of " & "Ffcmpdct264" & " already exists, not redeclaring")
when not declared(Ffcmpmediansad):
  when 15 is static:
    const
      Ffcmpmediansad* = 15   ## Generated based on /usr/include/libavcodec/avcodec.h:863:9
  else:
    let Ffcmpmediansad* = 15 ## Generated based on /usr/include/libavcodec/avcodec.h:863:9
else:
  static :
    hint("Declaration of " & "Ffcmpmediansad" &
        " already exists, not redeclaring")
when not declared(Ffcmpchroma):
  when 256 is static:
    const
      Ffcmpchroma* = 256     ## Generated based on /usr/include/libavcodec/avcodec.h:864:9
  else:
    let Ffcmpchroma* = 256   ## Generated based on /usr/include/libavcodec/avcodec.h:864:9
else:
  static :
    hint("Declaration of " & "Ffcmpchroma" & " already exists, not redeclaring")
when not declared(Sliceflagcodedorder):
  when 1 is static:
    const
      Sliceflagcodedorder* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:916:9
  else:
    let Sliceflagcodedorder* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:916:9
else:
  static :
    hint("Declaration of " & "Sliceflagcodedorder" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowfield):
  when 2 is static:
    const
      Sliceflagallowfield* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:917:9
  else:
    let Sliceflagallowfield* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:917:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowfield" &
        " already exists, not redeclaring")
when not declared(Sliceflagallowplane):
  when 4 is static:
    const
      Sliceflagallowplane* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:918:9
  else:
    let Sliceflagallowplane* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:918:9
else:
  static :
    hint("Declaration of " & "Sliceflagallowplane" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionsimple):
  when 0 is static:
    const
      Ffmbdecisionsimple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:926:9
  else:
    let Ffmbdecisionsimple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:926:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionsimple" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionbits):
  when 1 is static:
    const
      Ffmbdecisionbits* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:927:9
  else:
    let Ffmbdecisionbits* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:927:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionbits" &
        " already exists, not redeclaring")
when not declared(Ffmbdecisionrd):
  when 2 is static:
    const
      Ffmbdecisionrd* = 2    ## Generated based on /usr/include/libavcodec/avcodec.h:928:9
  else:
    let Ffmbdecisionrd* = 2  ## Generated based on /usr/include/libavcodec/avcodec.h:928:9
else:
  static :
    hint("Declaration of " & "Ffmbdecisionrd" &
        " already exists, not redeclaring")
when not declared(Ffbugautodetect):
  when 1 is static:
    const
      Ffbugautodetect* = 1   ## Generated based on /usr/include/libavcodec/avcodec.h:1342:9
  else:
    let Ffbugautodetect* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1342:9
else:
  static :
    hint("Declaration of " & "Ffbugautodetect" &
        " already exists, not redeclaring")
when not declared(Ffbugxvidilace):
  when 4 is static:
    const
      Ffbugxvidilace* = 4    ## Generated based on /usr/include/libavcodec/avcodec.h:1343:9
  else:
    let Ffbugxvidilace* = 4  ## Generated based on /usr/include/libavcodec/avcodec.h:1343:9
else:
  static :
    hint("Declaration of " & "Ffbugxvidilace" &
        " already exists, not redeclaring")
when not declared(Ffbugump4):
  when 8 is static:
    const
      Ffbugump4* = 8         ## Generated based on /usr/include/libavcodec/avcodec.h:1344:9
  else:
    let Ffbugump4* = 8       ## Generated based on /usr/include/libavcodec/avcodec.h:1344:9
else:
  static :
    hint("Declaration of " & "Ffbugump4" & " already exists, not redeclaring")
when not declared(Ffbugnopadding):
  when 16 is static:
    const
      Ffbugnopadding* = 16   ## Generated based on /usr/include/libavcodec/avcodec.h:1345:9
  else:
    let Ffbugnopadding* = 16 ## Generated based on /usr/include/libavcodec/avcodec.h:1345:9
else:
  static :
    hint("Declaration of " & "Ffbugnopadding" &
        " already exists, not redeclaring")
when not declared(Ffbugamv):
  when 32 is static:
    const
      Ffbugamv* = 32         ## Generated based on /usr/include/libavcodec/avcodec.h:1346:9
  else:
    let Ffbugamv* = 32       ## Generated based on /usr/include/libavcodec/avcodec.h:1346:9
else:
  static :
    hint("Declaration of " & "Ffbugamv" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma):
  when 64 is static:
    const
      Ffbugqpelchroma* = 64  ## Generated based on /usr/include/libavcodec/avcodec.h:1347:9
  else:
    let Ffbugqpelchroma* = 64 ## Generated based on /usr/include/libavcodec/avcodec.h:1347:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugstdqpel):
  when 128 is static:
    const
      Ffbugstdqpel* = 128    ## Generated based on /usr/include/libavcodec/avcodec.h:1348:9
  else:
    let Ffbugstdqpel* = 128  ## Generated based on /usr/include/libavcodec/avcodec.h:1348:9
else:
  static :
    hint("Declaration of " & "Ffbugstdqpel" & " already exists, not redeclaring")
when not declared(Ffbugqpelchroma2):
  when 256 is static:
    const
      Ffbugqpelchroma2* = 256 ## Generated based on /usr/include/libavcodec/avcodec.h:1349:9
  else:
    let Ffbugqpelchroma2* = 256 ## Generated based on /usr/include/libavcodec/avcodec.h:1349:9
else:
  static :
    hint("Declaration of " & "Ffbugqpelchroma2" &
        " already exists, not redeclaring")
when not declared(Ffbugdirectblocksize):
  when 512 is static:
    const
      Ffbugdirectblocksize* = 512 ## Generated based on /usr/include/libavcodec/avcodec.h:1350:9
  else:
    let Ffbugdirectblocksize* = 512 ## Generated based on /usr/include/libavcodec/avcodec.h:1350:9
else:
  static :
    hint("Declaration of " & "Ffbugdirectblocksize" &
        " already exists, not redeclaring")
when not declared(Ffbugedge):
  when 1024 is static:
    const
      Ffbugedge* = 1024      ## Generated based on /usr/include/libavcodec/avcodec.h:1351:9
  else:
    let Ffbugedge* = 1024    ## Generated based on /usr/include/libavcodec/avcodec.h:1351:9
else:
  static :
    hint("Declaration of " & "Ffbugedge" & " already exists, not redeclaring")
when not declared(Ffbughpelchroma):
  when 2048 is static:
    const
      Ffbughpelchroma* = 2048 ## Generated based on /usr/include/libavcodec/avcodec.h:1352:9
  else:
    let Ffbughpelchroma* = 2048 ## Generated based on /usr/include/libavcodec/avcodec.h:1352:9
else:
  static :
    hint("Declaration of " & "Ffbughpelchroma" &
        " already exists, not redeclaring")
when not declared(Ffbugdcclip):
  when 4096 is static:
    const
      Ffbugdcclip* = 4096    ## Generated based on /usr/include/libavcodec/avcodec.h:1353:9
  else:
    let Ffbugdcclip* = 4096  ## Generated based on /usr/include/libavcodec/avcodec.h:1353:9
else:
  static :
    hint("Declaration of " & "Ffbugdcclip" & " already exists, not redeclaring")
when not declared(Ffbugms):
  when 8192 is static:
    const
      Ffbugms* = 8192        ## Generated based on /usr/include/libavcodec/avcodec.h:1354:9
  else:
    let Ffbugms* = 8192      ## Generated based on /usr/include/libavcodec/avcodec.h:1354:9
else:
  static :
    hint("Declaration of " & "Ffbugms" & " already exists, not redeclaring")
when not declared(Ffbugtruncated):
  when 16384 is static:
    const
      Ffbugtruncated* = 16384 ## Generated based on /usr/include/libavcodec/avcodec.h:1355:9
  else:
    let Ffbugtruncated* = 16384 ## Generated based on /usr/include/libavcodec/avcodec.h:1355:9
else:
  static :
    hint("Declaration of " & "Ffbugtruncated" &
        " already exists, not redeclaring")
when not declared(Ffbugiedge):
  when 32768 is static:
    const
      Ffbugiedge* = 32768    ## Generated based on /usr/include/libavcodec/avcodec.h:1356:9
  else:
    let Ffbugiedge* = 32768  ## Generated based on /usr/include/libavcodec/avcodec.h:1356:9
else:
  static :
    hint("Declaration of " & "Ffbugiedge" & " already exists, not redeclaring")
when not declared(Ffecguessmvs):
  when 1 is static:
    const
      Ffecguessmvs* = 1      ## Generated based on /usr/include/libavcodec/avcodec.h:1379:9
  else:
    let Ffecguessmvs* = 1    ## Generated based on /usr/include/libavcodec/avcodec.h:1379:9
else:
  static :
    hint("Declaration of " & "Ffecguessmvs" & " already exists, not redeclaring")
when not declared(Ffecdeblock):
  when 2 is static:
    const
      Ffecdeblock* = 2       ## Generated based on /usr/include/libavcodec/avcodec.h:1380:9
  else:
    let Ffecdeblock* = 2     ## Generated based on /usr/include/libavcodec/avcodec.h:1380:9
else:
  static :
    hint("Declaration of " & "Ffecdeblock" & " already exists, not redeclaring")
when not declared(Ffecfavorinter):
  when 256 is static:
    const
      Ffecfavorinter* = 256  ## Generated based on /usr/include/libavcodec/avcodec.h:1381:9
  else:
    let Ffecfavorinter* = 256 ## Generated based on /usr/include/libavcodec/avcodec.h:1381:9
else:
  static :
    hint("Declaration of " & "Ffecfavorinter" &
        " already exists, not redeclaring")
when not declared(Ffdebugpictinfo):
  when 1 is static:
    const
      Ffdebugpictinfo* = 1   ## Generated based on /usr/include/libavcodec/avcodec.h:1389:9
  else:
    let Ffdebugpictinfo* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1389:9
else:
  static :
    hint("Declaration of " & "Ffdebugpictinfo" &
        " already exists, not redeclaring")
when not declared(Ffdebugrc):
  when 2 is static:
    const
      Ffdebugrc* = 2         ## Generated based on /usr/include/libavcodec/avcodec.h:1390:9
  else:
    let Ffdebugrc* = 2       ## Generated based on /usr/include/libavcodec/avcodec.h:1390:9
else:
  static :
    hint("Declaration of " & "Ffdebugrc" & " already exists, not redeclaring")
when not declared(Ffdebugbitstream):
  when 4 is static:
    const
      Ffdebugbitstream* = 4  ## Generated based on /usr/include/libavcodec/avcodec.h:1391:9
  else:
    let Ffdebugbitstream* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1391:9
else:
  static :
    hint("Declaration of " & "Ffdebugbitstream" &
        " already exists, not redeclaring")
when not declared(Ffdebugmbtype):
  when 8 is static:
    const
      Ffdebugmbtype* = 8     ## Generated based on /usr/include/libavcodec/avcodec.h:1392:9
  else:
    let Ffdebugmbtype* = 8   ## Generated based on /usr/include/libavcodec/avcodec.h:1392:9
else:
  static :
    hint("Declaration of " & "Ffdebugmbtype" &
        " already exists, not redeclaring")
when not declared(Ffdebugqp):
  when 16 is static:
    const
      Ffdebugqp* = 16        ## Generated based on /usr/include/libavcodec/avcodec.h:1393:9
  else:
    let Ffdebugqp* = 16      ## Generated based on /usr/include/libavcodec/avcodec.h:1393:9
else:
  static :
    hint("Declaration of " & "Ffdebugqp" & " already exists, not redeclaring")
when not declared(Ffdebugdctcoeff):
  when 64 is static:
    const
      Ffdebugdctcoeff* = 64  ## Generated based on /usr/include/libavcodec/avcodec.h:1394:9
  else:
    let Ffdebugdctcoeff* = 64 ## Generated based on /usr/include/libavcodec/avcodec.h:1394:9
else:
  static :
    hint("Declaration of " & "Ffdebugdctcoeff" &
        " already exists, not redeclaring")
when not declared(Ffdebugskip):
  when 128 is static:
    const
      Ffdebugskip* = 128     ## Generated based on /usr/include/libavcodec/avcodec.h:1395:9
  else:
    let Ffdebugskip* = 128   ## Generated based on /usr/include/libavcodec/avcodec.h:1395:9
else:
  static :
    hint("Declaration of " & "Ffdebugskip" & " already exists, not redeclaring")
when not declared(Ffdebugstartcode):
  when 256 is static:
    const
      Ffdebugstartcode* = 256 ## Generated based on /usr/include/libavcodec/avcodec.h:1396:9
  else:
    let Ffdebugstartcode* = 256 ## Generated based on /usr/include/libavcodec/avcodec.h:1396:9
else:
  static :
    hint("Declaration of " & "Ffdebugstartcode" &
        " already exists, not redeclaring")
when not declared(Ffdebuger):
  when 1024 is static:
    const
      Ffdebuger* = 1024      ## Generated based on /usr/include/libavcodec/avcodec.h:1397:9
  else:
    let Ffdebuger* = 1024    ## Generated based on /usr/include/libavcodec/avcodec.h:1397:9
else:
  static :
    hint("Declaration of " & "Ffdebuger" & " already exists, not redeclaring")
when not declared(Ffdebugmmco):
  when 2048 is static:
    const
      Ffdebugmmco* = 2048    ## Generated based on /usr/include/libavcodec/avcodec.h:1398:9
  else:
    let Ffdebugmmco* = 2048  ## Generated based on /usr/include/libavcodec/avcodec.h:1398:9
else:
  static :
    hint("Declaration of " & "Ffdebugmmco" & " already exists, not redeclaring")
when not declared(Ffdebugbugs):
  when 4096 is static:
    const
      Ffdebugbugs* = 4096    ## Generated based on /usr/include/libavcodec/avcodec.h:1399:9
  else:
    let Ffdebugbugs* = 4096  ## Generated based on /usr/include/libavcodec/avcodec.h:1399:9
else:
  static :
    hint("Declaration of " & "Ffdebugbugs" & " already exists, not redeclaring")
when not declared(Ffdebugbuffers):
  when 32768 is static:
    const
      Ffdebugbuffers* = 32768 ## Generated based on /usr/include/libavcodec/avcodec.h:1400:9
  else:
    let Ffdebugbuffers* = 32768 ## Generated based on /usr/include/libavcodec/avcodec.h:1400:9
else:
  static :
    hint("Declaration of " & "Ffdebugbuffers" &
        " already exists, not redeclaring")
when not declared(Ffdebugthreads):
  when 65536 is static:
    const
      Ffdebugthreads* = 65536 ## Generated based on /usr/include/libavcodec/avcodec.h:1401:9
  else:
    let Ffdebugthreads* = 65536 ## Generated based on /usr/include/libavcodec/avcodec.h:1401:9
else:
  static :
    hint("Declaration of " & "Ffdebugthreads" &
        " already exists, not redeclaring")
when not declared(Ffdebuggreenmd):
  when 8388608 is static:
    const
      Ffdebuggreenmd* = 8388608 ## Generated based on /usr/include/libavcodec/avcodec.h:1402:9
  else:
    let Ffdebuggreenmd* = 8388608 ## Generated based on /usr/include/libavcodec/avcodec.h:1402:9
else:
  static :
    hint("Declaration of " & "Ffdebuggreenmd" &
        " already exists, not redeclaring")
when not declared(Ffdebugnomc):
  when 16777216 is static:
    const
      Ffdebugnomc* = 16777216 ## Generated based on /usr/include/libavcodec/avcodec.h:1403:9
  else:
    let Ffdebugnomc* = 16777216 ## Generated based on /usr/include/libavcodec/avcodec.h:1403:9
else:
  static :
    hint("Declaration of " & "Ffdebugnomc" & " already exists, not redeclaring")
when not declared(Ffdctauto):
  when 0 is static:
    const
      Ffdctauto* = 0         ## Generated based on /usr/include/libavcodec/avcodec.h:1474:9
  else:
    let Ffdctauto* = 0       ## Generated based on /usr/include/libavcodec/avcodec.h:1474:9
else:
  static :
    hint("Declaration of " & "Ffdctauto" & " already exists, not redeclaring")
when not declared(Ffdctfastint):
  when 1 is static:
    const
      Ffdctfastint* = 1      ## Generated based on /usr/include/libavcodec/avcodec.h:1475:9
  else:
    let Ffdctfastint* = 1    ## Generated based on /usr/include/libavcodec/avcodec.h:1475:9
else:
  static :
    hint("Declaration of " & "Ffdctfastint" & " already exists, not redeclaring")
when not declared(Ffdctint):
  when 2 is static:
    const
      Ffdctint* = 2          ## Generated based on /usr/include/libavcodec/avcodec.h:1476:9
  else:
    let Ffdctint* = 2        ## Generated based on /usr/include/libavcodec/avcodec.h:1476:9
else:
  static :
    hint("Declaration of " & "Ffdctint" & " already exists, not redeclaring")
when not declared(Ffdctmmx):
  when 3 is static:
    const
      Ffdctmmx* = 3          ## Generated based on /usr/include/libavcodec/avcodec.h:1477:9
  else:
    let Ffdctmmx* = 3        ## Generated based on /usr/include/libavcodec/avcodec.h:1477:9
else:
  static :
    hint("Declaration of " & "Ffdctmmx" & " already exists, not redeclaring")
when not declared(Ffdctaltivec):
  when 5 is static:
    const
      Ffdctaltivec* = 5      ## Generated based on /usr/include/libavcodec/avcodec.h:1478:9
  else:
    let Ffdctaltivec* = 5    ## Generated based on /usr/include/libavcodec/avcodec.h:1478:9
else:
  static :
    hint("Declaration of " & "Ffdctaltivec" & " already exists, not redeclaring")
when not declared(Ffdctfaan):
  when 6 is static:
    const
      Ffdctfaan* = 6         ## Generated based on /usr/include/libavcodec/avcodec.h:1479:9
  else:
    let Ffdctfaan* = 6       ## Generated based on /usr/include/libavcodec/avcodec.h:1479:9
else:
  static :
    hint("Declaration of " & "Ffdctfaan" & " already exists, not redeclaring")
when not declared(Ffidctauto):
  when 0 is static:
    const
      Ffidctauto* = 0        ## Generated based on /usr/include/libavcodec/avcodec.h:1487:9
  else:
    let Ffidctauto* = 0      ## Generated based on /usr/include/libavcodec/avcodec.h:1487:9
else:
  static :
    hint("Declaration of " & "Ffidctauto" & " already exists, not redeclaring")
when not declared(Ffidctint):
  when 1 is static:
    const
      Ffidctint* = 1         ## Generated based on /usr/include/libavcodec/avcodec.h:1488:9
  else:
    let Ffidctint* = 1       ## Generated based on /usr/include/libavcodec/avcodec.h:1488:9
else:
  static :
    hint("Declaration of " & "Ffidctint" & " already exists, not redeclaring")
when not declared(Ffidctsimple):
  when 2 is static:
    const
      Ffidctsimple* = 2      ## Generated based on /usr/include/libavcodec/avcodec.h:1489:9
  else:
    let Ffidctsimple* = 2    ## Generated based on /usr/include/libavcodec/avcodec.h:1489:9
else:
  static :
    hint("Declaration of " & "Ffidctsimple" & " already exists, not redeclaring")
when not declared(Ffidctsimplemmx):
  when 3 is static:
    const
      Ffidctsimplemmx* = 3   ## Generated based on /usr/include/libavcodec/avcodec.h:1490:9
  else:
    let Ffidctsimplemmx* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1490:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplemmx" &
        " already exists, not redeclaring")
when not declared(Ffidctarm):
  when 7 is static:
    const
      Ffidctarm* = 7         ## Generated based on /usr/include/libavcodec/avcodec.h:1491:9
  else:
    let Ffidctarm* = 7       ## Generated based on /usr/include/libavcodec/avcodec.h:1491:9
else:
  static :
    hint("Declaration of " & "Ffidctarm" & " already exists, not redeclaring")
when not declared(Ffidctaltivec):
  when 8 is static:
    const
      Ffidctaltivec* = 8     ## Generated based on /usr/include/libavcodec/avcodec.h:1492:9
  else:
    let Ffidctaltivec* = 8   ## Generated based on /usr/include/libavcodec/avcodec.h:1492:9
else:
  static :
    hint("Declaration of " & "Ffidctaltivec" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearm):
  when 10 is static:
    const
      Ffidctsimplearm* = 10  ## Generated based on /usr/include/libavcodec/avcodec.h:1493:9
  else:
    let Ffidctsimplearm* = 10 ## Generated based on /usr/include/libavcodec/avcodec.h:1493:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearm" &
        " already exists, not redeclaring")
when not declared(Ffidctxvid):
  when 14 is static:
    const
      Ffidctxvid* = 14       ## Generated based on /usr/include/libavcodec/avcodec.h:1494:9
  else:
    let Ffidctxvid* = 14     ## Generated based on /usr/include/libavcodec/avcodec.h:1494:9
else:
  static :
    hint("Declaration of " & "Ffidctxvid" & " already exists, not redeclaring")
when not declared(Ffidctsimplearmv5te):
  when 16 is static:
    const
      Ffidctsimplearmv5te* = 16 ## Generated based on /usr/include/libavcodec/avcodec.h:1495:9
  else:
    let Ffidctsimplearmv5te* = 16 ## Generated based on /usr/include/libavcodec/avcodec.h:1495:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv5te" &
        " already exists, not redeclaring")
when not declared(Ffidctsimplearmv6):
  when 17 is static:
    const
      Ffidctsimplearmv6* = 17 ## Generated based on /usr/include/libavcodec/avcodec.h:1496:9
  else:
    let Ffidctsimplearmv6* = 17 ## Generated based on /usr/include/libavcodec/avcodec.h:1496:9
else:
  static :
    hint("Declaration of " & "Ffidctsimplearmv6" &
        " already exists, not redeclaring")
when not declared(Ffidctfaan):
  when 20 is static:
    const
      Ffidctfaan* = 20       ## Generated based on /usr/include/libavcodec/avcodec.h:1497:9
  else:
    let Ffidctfaan* = 20     ## Generated based on /usr/include/libavcodec/avcodec.h:1497:9
else:
  static :
    hint("Declaration of " & "Ffidctfaan" & " already exists, not redeclaring")
when not declared(Ffidctsimpleneon):
  when 22 is static:
    const
      Ffidctsimpleneon* = 22 ## Generated based on /usr/include/libavcodec/avcodec.h:1498:9
  else:
    let Ffidctsimpleneon* = 22 ## Generated based on /usr/include/libavcodec/avcodec.h:1498:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleneon" &
        " already exists, not redeclaring")
when not declared(Ffidctnone):
  when 24 is static:
    const
      Ffidctnone* = 24       ## Generated based on /usr/include/libavcodec/avcodec.h:1501:9
  else:
    let Ffidctnone* = 24     ## Generated based on /usr/include/libavcodec/avcodec.h:1501:9
else:
  static :
    hint("Declaration of " & "Ffidctnone" & " already exists, not redeclaring")
when not declared(Ffidctsimpleauto):
  when 128 is static:
    const
      Ffidctsimpleauto* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1503:9
  else:
    let Ffidctsimpleauto* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1503:9
else:
  static :
    hint("Declaration of " & "Ffidctsimpleauto" &
        " already exists, not redeclaring")
when not declared(Ffthreadframe):
  when 1 is static:
    const
      Ffthreadframe* = 1     ## Generated based on /usr/include/libavcodec/avcodec.h:1543:9
  else:
    let Ffthreadframe* = 1   ## Generated based on /usr/include/libavcodec/avcodec.h:1543:9
else:
  static :
    hint("Declaration of " & "Ffthreadframe" &
        " already exists, not redeclaring")
when not declared(Ffthreadslice):
  when 2 is static:
    const
      Ffthreadslice* = 2     ## Generated based on /usr/include/libavcodec/avcodec.h:1544:9
  else:
    let Ffthreadslice* = 2   ## Generated based on /usr/include/libavcodec/avcodec.h:1544:9
else:
  static :
    hint("Declaration of " & "Ffthreadslice" &
        " already exists, not redeclaring")
when not declared(Ffprofileunknown):
  when -99 is static:
    const
      Ffprofileunknown* = -99 ## Generated based on /usr/include/libavcodec/avcodec.h:1600:9
  else:
    let Ffprofileunknown* = -99 ## Generated based on /usr/include/libavcodec/avcodec.h:1600:9
else:
  static :
    hint("Declaration of " & "Ffprofileunknown" &
        " already exists, not redeclaring")
when not declared(Ffprofilereserved):
  when -100 is static:
    const
      Ffprofilereserved* = -100 ## Generated based on /usr/include/libavcodec/avcodec.h:1601:9
  else:
    let Ffprofilereserved* = -100 ## Generated based on /usr/include/libavcodec/avcodec.h:1601:9
else:
  static :
    hint("Declaration of " & "Ffprofilereserved" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacmain):
  when 0 is static:
    const
      Ffprofileaacmain* = 0  ## Generated based on /usr/include/libavcodec/avcodec.h:1603:9
  else:
    let Ffprofileaacmain* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1603:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacmain" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaclow):
  when 1 is static:
    const
      Ffprofileaaclow* = 1   ## Generated based on /usr/include/libavcodec/avcodec.h:1604:9
  else:
    let Ffprofileaaclow* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1604:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacssr):
  when 2 is static:
    const
      Ffprofileaacssr* = 2   ## Generated based on /usr/include/libavcodec/avcodec.h:1605:9
  else:
    let Ffprofileaacssr* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1605:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacssr" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacltp):
  when 3 is static:
    const
      Ffprofileaacltp* = 3   ## Generated based on /usr/include/libavcodec/avcodec.h:1606:9
  else:
    let Ffprofileaacltp* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1606:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacltp" &
        " already exists, not redeclaring")
when not declared(Ffprofileaache):
  when 4 is static:
    const
      Ffprofileaache* = 4    ## Generated based on /usr/include/libavcodec/avcodec.h:1607:9
  else:
    let Ffprofileaache* = 4  ## Generated based on /usr/include/libavcodec/avcodec.h:1607:9
else:
  static :
    hint("Declaration of " & "Ffprofileaache" &
        " already exists, not redeclaring")
when not declared(Ffprofileaachev2):
  when 28 is static:
    const
      Ffprofileaachev2* = 28 ## Generated based on /usr/include/libavcodec/avcodec.h:1608:9
  else:
    let Ffprofileaachev2* = 28 ## Generated based on /usr/include/libavcodec/avcodec.h:1608:9
else:
  static :
    hint("Declaration of " & "Ffprofileaachev2" &
        " already exists, not redeclaring")
when not declared(Ffprofileaacld):
  when 22 is static:
    const
      Ffprofileaacld* = 22   ## Generated based on /usr/include/libavcodec/avcodec.h:1609:9
  else:
    let Ffprofileaacld* = 22 ## Generated based on /usr/include/libavcodec/avcodec.h:1609:9
else:
  static :
    hint("Declaration of " & "Ffprofileaacld" &
        " already exists, not redeclaring")
when not declared(Ffprofileaaceld):
  when 38 is static:
    const
      Ffprofileaaceld* = 38  ## Generated based on /usr/include/libavcodec/avcodec.h:1610:9
  else:
    let Ffprofileaaceld* = 38 ## Generated based on /usr/include/libavcodec/avcodec.h:1610:9
else:
  static :
    hint("Declaration of " & "Ffprofileaaceld" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aaclow):
  when 128 is static:
    const
      Ffprofilempeg2aaclow* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1611:9
  else:
    let Ffprofilempeg2aaclow* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1611:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aaclow" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2aache):
  when 131 is static:
    const
      Ffprofilempeg2aache* = 131 ## Generated based on /usr/include/libavcodec/avcodec.h:1612:9
  else:
    let Ffprofilempeg2aache* = 131 ## Generated based on /usr/include/libavcodec/avcodec.h:1612:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2aache" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhd):
  when 0 is static:
    const
      Ffprofilednxhd* = 0    ## Generated based on /usr/include/libavcodec/avcodec.h:1614:9
  else:
    let Ffprofilednxhd* = 0  ## Generated based on /usr/include/libavcodec/avcodec.h:1614:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhd" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrlb):
  when 1 is static:
    const
      Ffprofilednxhrlb* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:1615:9
  else:
    let Ffprofilednxhrlb* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1615:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrlb" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrsq):
  when 2 is static:
    const
      Ffprofilednxhrsq* = 2  ## Generated based on /usr/include/libavcodec/avcodec.h:1616:9
  else:
    let Ffprofilednxhrsq* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1616:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrsq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhq):
  when 3 is static:
    const
      Ffprofilednxhrhq* = 3  ## Generated based on /usr/include/libavcodec/avcodec.h:1617:9
  else:
    let Ffprofilednxhrhq* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1617:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhq" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhrhqx):
  when 4 is static:
    const
      Ffprofilednxhrhqx* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1618:9
  else:
    let Ffprofilednxhrhqx* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1618:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhrhqx" &
        " already exists, not redeclaring")
when not declared(Ffprofilednxhr444):
  when 5 is static:
    const
      Ffprofilednxhr444* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1619:9
  else:
    let Ffprofilednxhr444* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1619:9
else:
  static :
    hint("Declaration of " & "Ffprofilednxhr444" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts):
  when 20 is static:
    const
      Ffprofiledts* = 20     ## Generated based on /usr/include/libavcodec/avcodec.h:1621:9
  else:
    let Ffprofiledts* = 20   ## Generated based on /usr/include/libavcodec/avcodec.h:1621:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts" & " already exists, not redeclaring")
when not declared(Ffprofiledtses):
  when 30 is static:
    const
      Ffprofiledtses* = 30   ## Generated based on /usr/include/libavcodec/avcodec.h:1622:9
  else:
    let Ffprofiledtses* = 30 ## Generated based on /usr/include/libavcodec/avcodec.h:1622:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtses" &
        " already exists, not redeclaring")
when not declared(Ffprofiledts9624):
  when 40 is static:
    const
      Ffprofiledts9624* = 40 ## Generated based on /usr/include/libavcodec/avcodec.h:1623:9
  else:
    let Ffprofiledts9624* = 40 ## Generated based on /usr/include/libavcodec/avcodec.h:1623:9
else:
  static :
    hint("Declaration of " & "Ffprofiledts9624" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdhra):
  when 50 is static:
    const
      Ffprofiledtshdhra* = 50 ## Generated based on /usr/include/libavcodec/avcodec.h:1624:9
  else:
    let Ffprofiledtshdhra* = 50 ## Generated based on /usr/include/libavcodec/avcodec.h:1624:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdhra" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdma):
  when 60 is static:
    const
      Ffprofiledtshdma* = 60 ## Generated based on /usr/include/libavcodec/avcodec.h:1625:9
  else:
    let Ffprofiledtshdma* = 60 ## Generated based on /usr/include/libavcodec/avcodec.h:1625:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdma" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtsexpress):
  when 70 is static:
    const
      Ffprofiledtsexpress* = 70 ## Generated based on /usr/include/libavcodec/avcodec.h:1626:9
  else:
    let Ffprofiledtsexpress* = 70 ## Generated based on /usr/include/libavcodec/avcodec.h:1626:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtsexpress" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmax):
  when 61 is static:
    const
      Ffprofiledtshdmax* = 61 ## Generated based on /usr/include/libavcodec/avcodec.h:1627:9
  else:
    let Ffprofiledtshdmax* = 61 ## Generated based on /usr/include/libavcodec/avcodec.h:1627:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmax" &
        " already exists, not redeclaring")
when not declared(Ffprofiledtshdmaximax):
  when 62 is static:
    const
      Ffprofiledtshdmaximax* = 62 ## Generated based on /usr/include/libavcodec/avcodec.h:1628:9
  else:
    let Ffprofiledtshdmaximax* = 62 ## Generated based on /usr/include/libavcodec/avcodec.h:1628:9
else:
  static :
    hint("Declaration of " & "Ffprofiledtshdmaximax" &
        " already exists, not redeclaring")
when not declared(Ffprofileeac3ddpatmos):
  when 30 is static:
    const
      Ffprofileeac3ddpatmos* = 30 ## Generated based on /usr/include/libavcodec/avcodec.h:1631:9
  else:
    let Ffprofileeac3ddpatmos* = 30 ## Generated based on /usr/include/libavcodec/avcodec.h:1631:9
else:
  static :
    hint("Declaration of " & "Ffprofileeac3ddpatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofiletruehdatmos):
  when 30 is static:
    const
      Ffprofiletruehdatmos* = 30 ## Generated based on /usr/include/libavcodec/avcodec.h:1633:9
  else:
    let Ffprofiletruehdatmos* = 30 ## Generated based on /usr/include/libavcodec/avcodec.h:1633:9
else:
  static :
    hint("Declaration of " & "Ffprofiletruehdatmos" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2422):
  when 0 is static:
    const
      Ffprofilempeg2422* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1635:9
  else:
    let Ffprofilempeg2422* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1635:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2422" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2high):
  when 1 is static:
    const
      Ffprofilempeg2high* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1636:9
  else:
    let Ffprofilempeg2high* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1636:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2high" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2ss):
  when 2 is static:
    const
      Ffprofilempeg2ss* = 2  ## Generated based on /usr/include/libavcodec/avcodec.h:1637:9
  else:
    let Ffprofilempeg2ss* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1637:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2ss" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2snrscalable):
  when 3 is static:
    const
      Ffprofilempeg2snrscalable* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1638:9
  else:
    let Ffprofilempeg2snrscalable* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1638:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2snrscalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2main):
  when 4 is static:
    const
      Ffprofilempeg2main* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1639:9
  else:
    let Ffprofilempeg2main* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1639:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg2simple):
  when 5 is static:
    const
      Ffprofilempeg2simple* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1640:9
  else:
    let Ffprofilempeg2simple* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1640:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg2simple" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264baseline):
  when 66 is static:
    const
      Ffprofileh264baseline* = 66 ## Generated based on /usr/include/libavcodec/avcodec.h:1645:9
  else:
    let Ffprofileh264baseline* = 66 ## Generated based on /usr/include/libavcodec/avcodec.h:1645:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264baseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264main):
  when 77 is static:
    const
      Ffprofileh264main* = 77 ## Generated based on /usr/include/libavcodec/avcodec.h:1647:9
  else:
    let Ffprofileh264main* = 77 ## Generated based on /usr/include/libavcodec/avcodec.h:1647:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264main" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264extended):
  when 88 is static:
    const
      Ffprofileh264extended* = 88 ## Generated based on /usr/include/libavcodec/avcodec.h:1648:9
  else:
    let Ffprofileh264extended* = 88 ## Generated based on /usr/include/libavcodec/avcodec.h:1648:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264extended" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high):
  when 100 is static:
    const
      Ffprofileh264high* = 100 ## Generated based on /usr/include/libavcodec/avcodec.h:1649:9
  else:
    let Ffprofileh264high* = 100 ## Generated based on /usr/include/libavcodec/avcodec.h:1649:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high10):
  when 110 is static:
    const
      Ffprofileh264high10* = 110 ## Generated based on /usr/include/libavcodec/avcodec.h:1650:9
  else:
    let Ffprofileh264high10* = 110 ## Generated based on /usr/include/libavcodec/avcodec.h:1650:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high10" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264multiviewhigh):
  when 118 is static:
    const
      Ffprofileh264multiviewhigh* = 118 ## Generated based on /usr/include/libavcodec/avcodec.h:1652:9
  else:
    let Ffprofileh264multiviewhigh* = 118 ## Generated based on /usr/include/libavcodec/avcodec.h:1652:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264multiviewhigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high422):
  when 122 is static:
    const
      Ffprofileh264high422* = 122 ## Generated based on /usr/include/libavcodec/avcodec.h:1653:9
  else:
    let Ffprofileh264high422* = 122 ## Generated based on /usr/include/libavcodec/avcodec.h:1653:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high422" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264stereohigh):
  when 128 is static:
    const
      Ffprofileh264stereohigh* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1655:9
  else:
    let Ffprofileh264stereohigh* = 128 ## Generated based on /usr/include/libavcodec/avcodec.h:1655:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264stereohigh" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444):
  when 144 is static:
    const
      Ffprofileh264high444* = 144 ## Generated based on /usr/include/libavcodec/avcodec.h:1656:9
  else:
    let Ffprofileh264high444* = 144 ## Generated based on /usr/include/libavcodec/avcodec.h:1656:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264high444predictive):
  when 244 is static:
    const
      Ffprofileh264high444predictive* = 244 ## Generated based on /usr/include/libavcodec/avcodec.h:1657:9
  else:
    let Ffprofileh264high444predictive* = 244 ## Generated based on /usr/include/libavcodec/avcodec.h:1657:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264high444predictive" &
        " already exists, not redeclaring")
when not declared(Ffprofileh264cavlc444):
  when 44 is static:
    const
      Ffprofileh264cavlc444* = 44 ## Generated based on /usr/include/libavcodec/avcodec.h:1659:9
  else:
    let Ffprofileh264cavlc444* = 44 ## Generated based on /usr/include/libavcodec/avcodec.h:1659:9
else:
  static :
    hint("Declaration of " & "Ffprofileh264cavlc444" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1simple):
  when 0 is static:
    const
      Ffprofilevc1simple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1661:9
  else:
    let Ffprofilevc1simple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1661:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1main):
  when 1 is static:
    const
      Ffprofilevc1main* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:1662:9
  else:
    let Ffprofilevc1main* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1662:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1main" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1complex):
  when 2 is static:
    const
      Ffprofilevc1complex* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1663:9
  else:
    let Ffprofilevc1complex* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1663:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1complex" &
        " already exists, not redeclaring")
when not declared(Ffprofilevc1advanced):
  when 3 is static:
    const
      Ffprofilevc1advanced* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1664:9
  else:
    let Ffprofilevc1advanced* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1664:9
else:
  static :
    hint("Declaration of " & "Ffprofilevc1advanced" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simple):
  when 0 is static:
    const
      Ffprofilempeg4simple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1666:9
  else:
    let Ffprofilempeg4simple* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1666:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simple" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplescalable):
  when 1 is static:
    const
      Ffprofilempeg4simplescalable* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1667:9
  else:
    let Ffprofilempeg4simplescalable* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1667:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4core):
  when 2 is static:
    const
      Ffprofilempeg4core* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1668:9
  else:
    let Ffprofilempeg4core* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1668:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4core" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4main):
  when 3 is static:
    const
      Ffprofilempeg4main* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1669:9
  else:
    let Ffprofilempeg4main* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1669:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4main" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4nbit):
  when 4 is static:
    const
      Ffprofilempeg4nbit* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1670:9
  else:
    let Ffprofilempeg4nbit* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1670:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4nbit" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4scalabletexture):
  when 5 is static:
    const
      Ffprofilempeg4scalabletexture* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1671:9
  else:
    let Ffprofilempeg4scalabletexture* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1671:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4scalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplefaceanimation):
  when 6 is static:
    const
      Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /usr/include/libavcodec/avcodec.h:1672:9
  else:
    let Ffprofilempeg4simplefaceanimation* = 6 ## Generated based on /usr/include/libavcodec/avcodec.h:1672:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplefaceanimation" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4basicanimatedtexture):
  when 7 is static:
    const
      Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /usr/include/libavcodec/avcodec.h:1673:9
  else:
    let Ffprofilempeg4basicanimatedtexture* = 7 ## Generated based on /usr/include/libavcodec/avcodec.h:1673:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4basicanimatedtexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4hybrid):
  when 8 is static:
    const
      Ffprofilempeg4hybrid* = 8 ## Generated based on /usr/include/libavcodec/avcodec.h:1674:9
  else:
    let Ffprofilempeg4hybrid* = 8 ## Generated based on /usr/include/libavcodec/avcodec.h:1674:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4hybrid" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedrealtime):
  when 9 is static:
    const
      Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /usr/include/libavcodec/avcodec.h:1675:9
  else:
    let Ffprofilempeg4advancedrealtime* = 9 ## Generated based on /usr/include/libavcodec/avcodec.h:1675:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedrealtime" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4corescalable):
  when 10 is static:
    const
      Ffprofilempeg4corescalable* = 10 ## Generated based on /usr/include/libavcodec/avcodec.h:1676:9
  else:
    let Ffprofilempeg4corescalable* = 10 ## Generated based on /usr/include/libavcodec/avcodec.h:1676:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4corescalable" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcoding):
  when 11 is static:
    const
      Ffprofilempeg4advancedcoding* = 11 ## Generated based on /usr/include/libavcodec/avcodec.h:1677:9
  else:
    let Ffprofilempeg4advancedcoding* = 11 ## Generated based on /usr/include/libavcodec/avcodec.h:1677:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcoding" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedcore):
  when 12 is static:
    const
      Ffprofilempeg4advancedcore* = 12 ## Generated based on /usr/include/libavcodec/avcodec.h:1678:9
  else:
    let Ffprofilempeg4advancedcore* = 12 ## Generated based on /usr/include/libavcodec/avcodec.h:1678:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedcore" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedscalabletexture):
  when 13 is static:
    const
      Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /usr/include/libavcodec/avcodec.h:1679:9
  else:
    let Ffprofilempeg4advancedscalabletexture* = 13 ## Generated based on /usr/include/libavcodec/avcodec.h:1679:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedscalabletexture" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4simplestudio):
  when 14 is static:
    const
      Ffprofilempeg4simplestudio* = 14 ## Generated based on /usr/include/libavcodec/avcodec.h:1680:9
  else:
    let Ffprofilempeg4simplestudio* = 14 ## Generated based on /usr/include/libavcodec/avcodec.h:1680:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4simplestudio" &
        " already exists, not redeclaring")
when not declared(Ffprofilempeg4advancedsimple):
  when 15 is static:
    const
      Ffprofilempeg4advancedsimple* = 15 ## Generated based on /usr/include/libavcodec/avcodec.h:1681:9
  else:
    let Ffprofilempeg4advancedsimple* = 15 ## Generated based on /usr/include/libavcodec/avcodec.h:1681:9
else:
  static :
    hint("Declaration of " & "Ffprofilempeg4advancedsimple" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction0):
  when 1 is static:
    const
      Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1683:9
  else:
    let Ffprofilejpeg2000cstreamrestriction0* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1683:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction0" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamrestriction1):
  when 2 is static:
    const
      Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1684:9
  else:
    let Ffprofilejpeg2000cstreamrestriction1* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1684:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamrestriction1" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000cstreamnorestriction):
  when 32768 is static:
    const
      Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /usr/include/libavcodec/avcodec.h:1685:9
  else:
    let Ffprofilejpeg2000cstreamnorestriction* = 32768 ## Generated based on /usr/include/libavcodec/avcodec.h:1685:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000cstreamnorestriction" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema2k):
  when 3 is static:
    const
      Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1686:9
  else:
    let Ffprofilejpeg2000dcinema2k* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1686:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema2k" &
        " already exists, not redeclaring")
when not declared(Ffprofilejpeg2000dcinema4k):
  when 4 is static:
    const
      Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1687:9
  else:
    let Ffprofilejpeg2000dcinema4k* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1687:9
else:
  static :
    hint("Declaration of " & "Ffprofilejpeg2000dcinema4k" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp90):
  when 0 is static:
    const
      Ffprofilevp90* = 0     ## Generated based on /usr/include/libavcodec/avcodec.h:1689:9
  else:
    let Ffprofilevp90* = 0   ## Generated based on /usr/include/libavcodec/avcodec.h:1689:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp90" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp91):
  when 1 is static:
    const
      Ffprofilevp91* = 1     ## Generated based on /usr/include/libavcodec/avcodec.h:1690:9
  else:
    let Ffprofilevp91* = 1   ## Generated based on /usr/include/libavcodec/avcodec.h:1690:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp91" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp92):
  when 2 is static:
    const
      Ffprofilevp92* = 2     ## Generated based on /usr/include/libavcodec/avcodec.h:1691:9
  else:
    let Ffprofilevp92* = 2   ## Generated based on /usr/include/libavcodec/avcodec.h:1691:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp92" &
        " already exists, not redeclaring")
when not declared(Ffprofilevp93):
  when 3 is static:
    const
      Ffprofilevp93* = 3     ## Generated based on /usr/include/libavcodec/avcodec.h:1692:9
  else:
    let Ffprofilevp93* = 3   ## Generated based on /usr/include/libavcodec/avcodec.h:1692:9
else:
  static :
    hint("Declaration of " & "Ffprofilevp93" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain):
  when 1 is static:
    const
      Ffprofilehevcmain* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1694:9
  else:
    let Ffprofilehevcmain* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1694:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmain10):
  when 2 is static:
    const
      Ffprofilehevcmain10* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1695:9
  else:
    let Ffprofilehevcmain10* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1695:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcmainstillpicture):
  when 3 is static:
    const
      Ffprofilehevcmainstillpicture* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1696:9
  else:
    let Ffprofilehevcmainstillpicture* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1696:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcmainstillpicture" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcrext):
  when 4 is static:
    const
      Ffprofilehevcrext* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1697:9
  else:
    let Ffprofilehevcrext* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1697:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcrext" &
        " already exists, not redeclaring")
when not declared(Ffprofilehevcscc):
  when 9 is static:
    const
      Ffprofilehevcscc* = 9  ## Generated based on /usr/include/libavcodec/avcodec.h:1698:9
  else:
    let Ffprofilehevcscc* = 9 ## Generated based on /usr/include/libavcodec/avcodec.h:1698:9
else:
  static :
    hint("Declaration of " & "Ffprofilehevcscc" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10):
  when 1 is static:
    const
      Ffprofilevvcmain10* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1700:9
  else:
    let Ffprofilevvcmain10* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1700:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10" &
        " already exists, not redeclaring")
when not declared(Ffprofilevvcmain10444):
  when 33 is static:
    const
      Ffprofilevvcmain10444* = 33 ## Generated based on /usr/include/libavcodec/avcodec.h:1701:9
  else:
    let Ffprofilevvcmain10444* = 33 ## Generated based on /usr/include/libavcodec/avcodec.h:1701:9
else:
  static :
    hint("Declaration of " & "Ffprofilevvcmain10444" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1main):
  when 0 is static:
    const
      Ffprofileav1main* = 0  ## Generated based on /usr/include/libavcodec/avcodec.h:1703:9
  else:
    let Ffprofileav1main* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1703:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1main" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1high):
  when 1 is static:
    const
      Ffprofileav1high* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:1704:9
  else:
    let Ffprofileav1high* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1704:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1high" &
        " already exists, not redeclaring")
when not declared(Ffprofileav1professional):
  when 2 is static:
    const
      Ffprofileav1professional* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1705:9
  else:
    let Ffprofileav1professional* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1705:9
else:
  static :
    hint("Declaration of " & "Ffprofileav1professional" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanbaselinedct):
  when 192 is static:
    const
      Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /usr/include/libavcodec/avcodec.h:1707:9
  else:
    let Ffprofilemjpeghuffmanbaselinedct* = 192 ## Generated based on /usr/include/libavcodec/avcodec.h:1707:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanbaselinedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanextendedsequentialdct):
  when 193 is static:
    const
      Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /usr/include/libavcodec/avcodec.h:1708:9
  else:
    let Ffprofilemjpeghuffmanextendedsequentialdct* = 193 ## Generated based on /usr/include/libavcodec/avcodec.h:1708:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanextendedsequentialdct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanprogressivedct):
  when 194 is static:
    const
      Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /usr/include/libavcodec/avcodec.h:1709:9
  else:
    let Ffprofilemjpeghuffmanprogressivedct* = 194 ## Generated based on /usr/include/libavcodec/avcodec.h:1709:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanprogressivedct" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpeghuffmanlossless):
  when 195 is static:
    const
      Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /usr/include/libavcodec/avcodec.h:1710:9
  else:
    let Ffprofilemjpeghuffmanlossless* = 195 ## Generated based on /usr/include/libavcodec/avcodec.h:1710:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpeghuffmanlossless" &
        " already exists, not redeclaring")
when not declared(Ffprofilemjpegjpegls):
  when 247 is static:
    const
      Ffprofilemjpegjpegls* = 247 ## Generated based on /usr/include/libavcodec/avcodec.h:1711:9
  else:
    let Ffprofilemjpegjpegls* = 247 ## Generated based on /usr/include/libavcodec/avcodec.h:1711:9
else:
  static :
    hint("Declaration of " & "Ffprofilemjpegjpegls" &
        " already exists, not redeclaring")
when not declared(Ffprofilesbcmsbc):
  when 1 is static:
    const
      Ffprofilesbcmsbc* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:1713:9
  else:
    let Ffprofilesbcmsbc* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1713:9
else:
  static :
    hint("Declaration of " & "Ffprofilesbcmsbc" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresproxy):
  when 0 is static:
    const
      Ffprofileproresproxy* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1715:9
  else:
    let Ffprofileproresproxy* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1715:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresproxy" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreslt):
  when 1 is static:
    const
      Ffprofileproreslt* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1716:9
  else:
    let Ffprofileproreslt* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1716:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreslt" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresstandard):
  when 2 is static:
    const
      Ffprofileproresstandard* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1717:9
  else:
    let Ffprofileproresstandard* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1717:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresstandard" &
        " already exists, not redeclaring")
when not declared(Ffprofileproreshq):
  when 3 is static:
    const
      Ffprofileproreshq* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1718:9
  else:
    let Ffprofileproreshq* = 3 ## Generated based on /usr/include/libavcodec/avcodec.h:1718:9
else:
  static :
    hint("Declaration of " & "Ffprofileproreshq" &
        " already exists, not redeclaring")
when not declared(Ffprofileprores4444):
  when 4 is static:
    const
      Ffprofileprores4444* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1719:9
  else:
    let Ffprofileprores4444* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1719:9
else:
  static :
    hint("Declaration of " & "Ffprofileprores4444" &
        " already exists, not redeclaring")
when not declared(Ffprofileproresxq):
  when 5 is static:
    const
      Ffprofileproresxq* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1720:9
  else:
    let Ffprofileproresxq* = 5 ## Generated based on /usr/include/libavcodec/avcodec.h:1720:9
else:
  static :
    hint("Declaration of " & "Ffprofileproresxq" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilea):
  when 0 is static:
    const
      Ffprofilearibprofilea* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1722:9
  else:
    let Ffprofilearibprofilea* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1722:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilea" &
        " already exists, not redeclaring")
when not declared(Ffprofilearibprofilec):
  when 1 is static:
    const
      Ffprofilearibprofilec* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1723:9
  else:
    let Ffprofilearibprofilec* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1723:9
else:
  static :
    hint("Declaration of " & "Ffprofilearibprofilec" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvasync):
  when 0 is static:
    const
      Ffprofileklvasync* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1725:9
  else:
    let Ffprofileklvasync* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1725:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileklvaasync):
  when 1 is static:
    const
      Ffprofileklvaasync* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1726:9
  else:
    let Ffprofileklvaasync* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1726:9
else:
  static :
    hint("Declaration of " & "Ffprofileklvaasync" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcbaseline):
  when 0 is static:
    const
      Ffprofileevcbaseline* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1728:9
  else:
    let Ffprofileevcbaseline* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1728:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcbaseline" &
        " already exists, not redeclaring")
when not declared(Ffprofileevcmain):
  when 1 is static:
    const
      Ffprofileevcmain* = 1  ## Generated based on /usr/include/libavcodec/avcodec.h:1729:9
  else:
    let Ffprofileevcmain* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1729:9
else:
  static :
    hint("Declaration of " & "Ffprofileevcmain" &
        " already exists, not redeclaring")
when not declared(Fflevelunknown):
  when -99 is static:
    const
      Fflevelunknown* = -99  ## Generated based on /usr/include/libavcodec/avcodec.h:1744:9
  else:
    let Fflevelunknown* = -99 ## Generated based on /usr/include/libavcodec/avcodec.h:1744:9
else:
  static :
    hint("Declaration of " & "Fflevelunknown" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodedonothing):
  when -1 is static:
    const
      Ffsubcharencmodedonothing* = -1 ## Generated based on /usr/include/libavcodec/avcodec.h:1850:9
  else:
    let Ffsubcharencmodedonothing* = -1 ## Generated based on /usr/include/libavcodec/avcodec.h:1850:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodedonothing" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeautomatic):
  when 0 is static:
    const
      Ffsubcharencmodeautomatic* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1851:9
  else:
    let Ffsubcharencmodeautomatic* = 0 ## Generated based on /usr/include/libavcodec/avcodec.h:1851:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeautomatic" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodepredecoder):
  when 1 is static:
    const
      Ffsubcharencmodepredecoder* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1852:9
  else:
    let Ffsubcharencmodepredecoder* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1852:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodepredecoder" &
        " already exists, not redeclaring")
when not declared(Ffsubcharencmodeignore):
  when 2 is static:
    const
      Ffsubcharencmodeignore* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1853:9
  else:
    let Ffsubcharencmodeignore* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1853:9
else:
  static :
    hint("Declaration of " & "Ffsubcharencmodeignore" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertylossless):
  when 1 is static:
    const
      Ffcodecpropertylossless* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1905:9
  else:
    let Ffcodecpropertylossless* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:1905:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertylossless" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyclosedcaptions):
  when 2 is static:
    const
      Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1906:9
  else:
    let Ffcodecpropertyclosedcaptions* = 2 ## Generated based on /usr/include/libavcodec/avcodec.h:1906:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyclosedcaptions" &
        " already exists, not redeclaring")
when not declared(Ffcodecpropertyfilmgrain):
  when 4 is static:
    const
      Ffcodecpropertyfilmgrain* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1907:9
  else:
    let Ffcodecpropertyfilmgrain* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:1907:9
else:
  static :
    hint("Declaration of " & "Ffcodecpropertyfilmgrain" &
        " already exists, not redeclaring")
when not declared(Avhwaccelcodeccapexperimental):
  when 512 is static:
    const
      Avhwaccelcodeccapexperimental* = 512 ## Generated based on /usr/include/libavcodec/avcodec.h:2169:9
  else:
    let Avhwaccelcodeccapexperimental* = 512 ## Generated based on /usr/include/libavcodec/avcodec.h:2169:9
else:
  static :
    hint("Declaration of " & "Avhwaccelcodeccapexperimental" &
        " already exists, not redeclaring")
when not declared(Avsubtitleflagforced):
  when 1 is static:
    const
      Avsubtitleflagforced* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:2239:9
  else:
    let Avsubtitleflagforced* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:2239:9
else:
  static :
    hint("Declaration of " & "Avsubtitleflagforced" &
        " already exists, not redeclaring")
when not declared(Avparserptsnb):
  when 4 is static:
    const
      Avparserptsnb* = 4     ## Generated based on /usr/include/libavcodec/avcodec.h:2801:9
  else:
    let Avparserptsnb* = 4   ## Generated based on /usr/include/libavcodec/avcodec.h:2801:9
else:
  static :
    hint("Declaration of " & "Avparserptsnb" &
        " already exists, not redeclaring")
when not declared(Parserflagcompleteframes):
  when 1 is static:
    const
      Parserflagcompleteframes* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:2808:9
  else:
    let Parserflagcompleteframes* = 1 ## Generated based on /usr/include/libavcodec/avcodec.h:2808:9
else:
  static :
    hint("Declaration of " & "Parserflagcompleteframes" &
        " already exists, not redeclaring")
when not declared(Parserflagonce):
  when 2 is static:
    const
      Parserflagonce* = 2    ## Generated based on /usr/include/libavcodec/avcodec.h:2809:9
  else:
    let Parserflagonce* = 2  ## Generated based on /usr/include/libavcodec/avcodec.h:2809:9
else:
  static :
    hint("Declaration of " & "Parserflagonce" &
        " already exists, not redeclaring")
when not declared(Parserflagfetchedoffset):
  when 4 is static:
    const
      Parserflagfetchedoffset* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:2811:9
  else:
    let Parserflagfetchedoffset* = 4 ## Generated based on /usr/include/libavcodec/avcodec.h:2811:9
else:
  static :
    hint("Declaration of " & "Parserflagfetchedoffset" &
        " already exists, not redeclaring")
when not declared(Parserflagusecodects):
  when 4096 is static:
    const
      Parserflagusecodects* = 4096 ## Generated based on /usr/include/libavcodec/avcodec.h:2812:9
  else:
    let Parserflagusecodects* = 4096 ## Generated based on /usr/include/libavcodec/avcodec.h:2812:9
else:
  static :
    hint("Declaration of " & "Parserflagusecodects" &
        " already exists, not redeclaring")
when not declared(avcodecgettype):
  proc avcodecgettype*(codecid: enumavcodecid_520094076): enumavmediatype_520094078 {.
      cdecl, importc: "avcodec_get_type".}
else:
  static :
    hint("Declaration of " & "avcodecgettype" &
        " already exists, not redeclaring")
when not declared(avcodecgetname):
  proc avcodecgetname*(id: enumavcodecid_520094076): cstring {.cdecl,
      importc: "avcodec_get_name".}
else:
  static :
    hint("Declaration of " & "avcodecgetname" &
        " already exists, not redeclaring")
when not declared(avgetbitspersample):
  proc avgetbitspersample*(codecid: enumavcodecid_520094076): cint {.cdecl,
      importc: "av_get_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetbitspersample" &
        " already exists, not redeclaring")
when not declared(avgetexactbitspersample):
  proc avgetexactbitspersample*(codecid: enumavcodecid_520094076): cint {.cdecl,
      importc: "av_get_exact_bits_per_sample".}
else:
  static :
    hint("Declaration of " & "avgetexactbitspersample" &
        " already exists, not redeclaring")
when not declared(avcodecprofilename):
  proc avcodecprofilename*(codecid: enumavcodecid_520094076; profile: cint): cstring {.
      cdecl, importc: "avcodec_profile_name".}
else:
  static :
    hint("Declaration of " & "avcodecprofilename" &
        " already exists, not redeclaring")
when not declared(avgetpcmcodec):
  proc avgetpcmcodec*(fmt: enumavsampleformat_520094080; be: cint): enumavcodecid_520094076 {.
      cdecl, importc: "av_get_pcm_codec".}
else:
  static :
    hint("Declaration of " & "avgetpcmcodec" &
        " already exists, not redeclaring")
when not declared(avcodeciterate):
  proc avcodeciterate*(opaque: ptr pointer): ptr Avcodec_520094096 {.cdecl,
      importc: "av_codec_iterate".}
else:
  static :
    hint("Declaration of " & "avcodeciterate" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoder):
  proc avcodecfinddecoder*(id: enumavcodecid_520094076): ptr Avcodec_520094096 {.
      cdecl, importc: "avcodec_find_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoder" &
        " already exists, not redeclaring")
when not declared(avcodecfinddecoderbyname):
  proc avcodecfinddecoderbyname*(name: cstring): ptr Avcodec_520094096 {.cdecl,
      importc: "avcodec_find_decoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfinddecoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoder):
  proc avcodecfindencoder*(id: enumavcodecid_520094076): ptr Avcodec_520094096 {.
      cdecl, importc: "avcodec_find_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoder" &
        " already exists, not redeclaring")
when not declared(avcodecfindencoderbyname):
  proc avcodecfindencoderbyname*(name: cstring): ptr Avcodec_520094096 {.cdecl,
      importc: "avcodec_find_encoder_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecfindencoderbyname" &
        " already exists, not redeclaring")
when not declared(avcodecisencoder):
  proc avcodecisencoder*(codec: ptr Avcodec_520094096): cint {.cdecl,
      importc: "av_codec_is_encoder".}
else:
  static :
    hint("Declaration of " & "avcodecisencoder" &
        " already exists, not redeclaring")
when not declared(avcodecisdecoder):
  proc avcodecisdecoder*(codec: ptr Avcodec_520094096): cint {.cdecl,
      importc: "av_codec_is_decoder".}
else:
  static :
    hint("Declaration of " & "avcodecisdecoder" &
        " already exists, not redeclaring")
when not declared(avgetprofilename):
  proc avgetprofilename*(codec: ptr Avcodec_520094096; profile: cint): cstring {.
      cdecl, importc: "av_get_profile_name".}
else:
  static :
    hint("Declaration of " & "avgetprofilename" &
        " already exists, not redeclaring")
when not declared(avcodecgethwconfig):
  proc avcodecgethwconfig*(codec: ptr Avcodec_520094096; index: cint): ptr Avcodechwconfig_520094102 {.
      cdecl, importc: "avcodec_get_hw_config".}
else:
  static :
    hint("Declaration of " & "avcodecgethwconfig" &
        " already exists, not redeclaring")
when not declared(avcpbpropertiesalloc):
  proc avcpbpropertiesalloc*(size: ptr csize_t): ptr Avcpbproperties_520094116 {.
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
  proc avpacketsidedatanew*(psd: ptr ptr Avpacketsidedata_520094126;
                            pnbsd: ptr cint; typearg: enumavpacketsidedatatype_520094122;
                            size: csize_t; flags: cint): ptr Avpacketsidedata_520094126 {.
      cdecl, importc: "av_packet_side_data_new".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatanew" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataadd):
  proc avpacketsidedataadd*(sd: ptr ptr Avpacketsidedata_520094126;
                            nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094122;
                            data: pointer; size: csize_t; flags: cint): ptr Avpacketsidedata_520094126 {.
      cdecl, importc: "av_packet_side_data_add".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataadd" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataget):
  proc avpacketsidedataget*(sd: ptr Avpacketsidedata_520094126; nbsd: cint;
                            typearg: enumavpacketsidedatatype_520094122): ptr Avpacketsidedata_520094126 {.
      cdecl, importc: "av_packet_side_data_get".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataget" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataremove):
  proc avpacketsidedataremove*(sd: ptr Avpacketsidedata_520094126;
                               nbsd: ptr cint; typearg: enumavpacketsidedatatype_520094122): void {.
      cdecl, importc: "av_packet_side_data_remove".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataremove" &
        " already exists, not redeclaring")
when not declared(avpacketsidedatafree):
  proc avpacketsidedatafree*(sd: ptr ptr Avpacketsidedata_520094126;
                             nbsd: ptr cint): void {.cdecl,
      importc: "av_packet_side_data_free".}
else:
  static :
    hint("Declaration of " & "avpacketsidedatafree" &
        " already exists, not redeclaring")
when not declared(avpacketsidedataname):
  proc avpacketsidedataname*(typearg: enumavpacketsidedatatype_520094122): cstring {.
      cdecl, importc: "av_packet_side_data_name".}
else:
  static :
    hint("Declaration of " & "avpacketsidedataname" &
        " already exists, not redeclaring")
when not declared(avpacketalloc):
  proc avpacketalloc*(): ptr Avpacket_520094132 {.cdecl,
      importc: "av_packet_alloc".}
else:
  static :
    hint("Declaration of " & "avpacketalloc" &
        " already exists, not redeclaring")
when not declared(avpacketclone):
  proc avpacketclone*(src: ptr Avpacket_520094132): ptr Avpacket_520094132 {.
      cdecl, importc: "av_packet_clone".}
else:
  static :
    hint("Declaration of " & "avpacketclone" &
        " already exists, not redeclaring")
when not declared(avpacketfree):
  proc avpacketfree*(pkt: ptr ptr Avpacket_520094132): void {.cdecl,
      importc: "av_packet_free".}
else:
  static :
    hint("Declaration of " & "avpacketfree" & " already exists, not redeclaring")
when not declared(avinitpacket):
  proc avinitpacket*(pkt: ptr Avpacket_520094132): void {.cdecl,
      importc: "av_init_packet".}
else:
  static :
    hint("Declaration of " & "avinitpacket" & " already exists, not redeclaring")
when not declared(avnewpacket):
  proc avnewpacket*(pkt: ptr Avpacket_520094132; size: cint): cint {.cdecl,
      importc: "av_new_packet".}
else:
  static :
    hint("Declaration of " & "avnewpacket" & " already exists, not redeclaring")
when not declared(avshrinkpacket):
  proc avshrinkpacket*(pkt: ptr Avpacket_520094132; size: cint): void {.cdecl,
      importc: "av_shrink_packet".}
else:
  static :
    hint("Declaration of " & "avshrinkpacket" &
        " already exists, not redeclaring")
when not declared(avgrowpacket):
  proc avgrowpacket*(pkt: ptr Avpacket_520094132; growby: cint): cint {.cdecl,
      importc: "av_grow_packet".}
else:
  static :
    hint("Declaration of " & "avgrowpacket" & " already exists, not redeclaring")
when not declared(avpacketfromdata):
  proc avpacketfromdata*(pkt: ptr Avpacket_520094132; data: ptr uint8;
                         size: cint): cint {.cdecl,
      importc: "av_packet_from_data".}
else:
  static :
    hint("Declaration of " & "avpacketfromdata" &
        " already exists, not redeclaring")
when not declared(avpacketnewsidedata):
  proc avpacketnewsidedata*(pkt: ptr Avpacket_520094132;
                            typearg: enumavpacketsidedatatype_520094122;
                            size: csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_new_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketnewsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketaddsidedata):
  proc avpacketaddsidedata*(pkt: ptr Avpacket_520094132;
                            typearg: enumavpacketsidedatatype_520094122;
                            data: ptr uint8; size: csize_t): cint {.cdecl,
      importc: "av_packet_add_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketaddsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketshrinksidedata):
  proc avpacketshrinksidedata*(pkt: ptr Avpacket_520094132;
                               typearg: enumavpacketsidedatatype_520094122;
                               size: csize_t): cint {.cdecl,
      importc: "av_packet_shrink_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketshrinksidedata" &
        " already exists, not redeclaring")
when not declared(avpacketgetsidedata):
  proc avpacketgetsidedata*(pkt: ptr Avpacket_520094132;
                            typearg: enumavpacketsidedatatype_520094122;
                            size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_get_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketgetsidedata" &
        " already exists, not redeclaring")
when not declared(avpacketpackdictionary):
  proc avpacketpackdictionary*(dict: ptr Avdictionary_520094140;
                               size: ptr csize_t): ptr uint8 {.cdecl,
      importc: "av_packet_pack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketunpackdictionary):
  proc avpacketunpackdictionary*(data: ptr uint8; size: csize_t;
                                 dict: ptr ptr Avdictionary_520094140): cint {.
      cdecl, importc: "av_packet_unpack_dictionary".}
else:
  static :
    hint("Declaration of " & "avpacketunpackdictionary" &
        " already exists, not redeclaring")
when not declared(avpacketfreesidedata):
  proc avpacketfreesidedata*(pkt: ptr Avpacket_520094132): void {.cdecl,
      importc: "av_packet_free_side_data".}
else:
  static :
    hint("Declaration of " & "avpacketfreesidedata" &
        " already exists, not redeclaring")
when not declared(avpacketref):
  proc avpacketref*(dst: ptr Avpacket_520094132; src: ptr Avpacket_520094132): cint {.
      cdecl, importc: "av_packet_ref".}
else:
  static :
    hint("Declaration of " & "avpacketref" & " already exists, not redeclaring")
when not declared(avpacketunref):
  proc avpacketunref*(pkt: ptr Avpacket_520094132): void {.cdecl,
      importc: "av_packet_unref".}
else:
  static :
    hint("Declaration of " & "avpacketunref" &
        " already exists, not redeclaring")
when not declared(avpacketmoveref):
  proc avpacketmoveref*(dst: ptr Avpacket_520094132; src: ptr Avpacket_520094132): void {.
      cdecl, importc: "av_packet_move_ref".}
else:
  static :
    hint("Declaration of " & "avpacketmoveref" &
        " already exists, not redeclaring")
when not declared(avpacketcopyprops):
  proc avpacketcopyprops*(dst: ptr Avpacket_520094132; src: ptr Avpacket_520094132): cint {.
      cdecl, importc: "av_packet_copy_props".}
else:
  static :
    hint("Declaration of " & "avpacketcopyprops" &
        " already exists, not redeclaring")
when not declared(avpacketmakerefcounted):
  proc avpacketmakerefcounted*(pkt: ptr Avpacket_520094132): cint {.cdecl,
      importc: "av_packet_make_refcounted".}
else:
  static :
    hint("Declaration of " & "avpacketmakerefcounted" &
        " already exists, not redeclaring")
when not declared(avpacketmakewritable):
  proc avpacketmakewritable*(pkt: ptr Avpacket_520094132): cint {.cdecl,
      importc: "av_packet_make_writable".}
else:
  static :
    hint("Declaration of " & "avpacketmakewritable" &
        " already exists, not redeclaring")
when not declared(avpacketrescalets):
  proc avpacketrescalets*(pkt: ptr Avpacket_520094132; tbsrc: Avrational_520094088;
                          tbdst: Avrational_520094088): void {.cdecl,
      importc: "av_packet_rescale_ts".}
else:
  static :
    hint("Declaration of " & "avpacketrescalets" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorget):
  proc avcodecdescriptorget*(id: enumavcodecid_520094076): ptr Avcodecdescriptor_520094144 {.
      cdecl, importc: "avcodec_descriptor_get".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorget" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptornext):
  proc avcodecdescriptornext*(prev: ptr Avcodecdescriptor_520094144): ptr Avcodecdescriptor_520094144 {.
      cdecl, importc: "avcodec_descriptor_next".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptornext" &
        " already exists, not redeclaring")
when not declared(avcodecdescriptorgetbyname):
  proc avcodecdescriptorgetbyname*(name: cstring): ptr Avcodecdescriptor_520094144 {.
      cdecl, importc: "avcodec_descriptor_get_by_name".}
else:
  static :
    hint("Declaration of " & "avcodecdescriptorgetbyname" &
        " already exists, not redeclaring")
when not declared(avcodecparametersalloc):
  proc avcodecparametersalloc*(): ptr Avcodecparameters_520094165 {.cdecl,
      importc: "avcodec_parameters_alloc".}
else:
  static :
    hint("Declaration of " & "avcodecparametersalloc" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfree):
  proc avcodecparametersfree*(par: ptr ptr Avcodecparameters_520094165): void {.
      cdecl, importc: "avcodec_parameters_free".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfree" &
        " already exists, not redeclaring")
when not declared(avcodecparameterscopy):
  proc avcodecparameterscopy*(dst: ptr Avcodecparameters_520094165;
                              src: ptr Avcodecparameters_520094165): cint {.
      cdecl, importc: "avcodec_parameters_copy".}
else:
  static :
    hint("Declaration of " & "avcodecparameterscopy" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration2):
  proc avgetaudioframeduration2*(par: ptr Avcodecparameters_520094165;
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
  proc avcodecalloccontext3*(codec: ptr Avcodec_520094096): ptr Avcodeccontext_520094177 {.
      cdecl, importc: "avcodec_alloc_context3".}
else:
  static :
    hint("Declaration of " & "avcodecalloccontext3" &
        " already exists, not redeclaring")
when not declared(avcodecfreecontext):
  proc avcodecfreecontext*(avctx: ptr ptr Avcodeccontext_520094177): void {.
      cdecl, importc: "avcodec_free_context".}
else:
  static :
    hint("Declaration of " & "avcodecfreecontext" &
        " already exists, not redeclaring")
when not declared(avcodecgetclass):
  proc avcodecgetclass*(): ptr Avclass_520094092 {.cdecl,
      importc: "avcodec_get_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetclass" &
        " already exists, not redeclaring")
when not declared(avcodecgetsubtitlerectclass):
  proc avcodecgetsubtitlerectclass*(): ptr Avclass_520094092 {.cdecl,
      importc: "avcodec_get_subtitle_rect_class".}
else:
  static :
    hint("Declaration of " & "avcodecgetsubtitlerectclass" &
        " already exists, not redeclaring")
when not declared(avcodecparametersfromcontext):
  proc avcodecparametersfromcontext*(par: ptr structavcodecparameters_520094146;
                                     codec: ptr Avcodeccontext_520094177): cint {.
      cdecl, importc: "avcodec_parameters_from_context".}
else:
  static :
    hint("Declaration of " & "avcodecparametersfromcontext" &
        " already exists, not redeclaring")
when not declared(avcodecparameterstocontext):
  proc avcodecparameterstocontext*(codec: ptr Avcodeccontext_520094177;
                                   par: ptr structavcodecparameters_520094146): cint {.
      cdecl, importc: "avcodec_parameters_to_context".}
else:
  static :
    hint("Declaration of " & "avcodecparameterstocontext" &
        " already exists, not redeclaring")
when not declared(avcodecopen2):
  proc avcodecopen2*(avctx: ptr Avcodeccontext_520094177; codec: ptr Avcodec_520094096;
                     options: ptr ptr Avdictionary_520094140): cint {.cdecl,
      importc: "avcodec_open2".}
else:
  static :
    hint("Declaration of " & "avcodecopen2" & " already exists, not redeclaring")
when not declared(avcodecclose):
  proc avcodecclose*(avctx: ptr Avcodeccontext_520094177): cint {.cdecl,
      importc: "avcodec_close".}
else:
  static :
    hint("Declaration of " & "avcodecclose" & " already exists, not redeclaring")
when not declared(avsubtitlefree):
  proc avsubtitlefree*(sub: ptr Avsubtitle_520094189): void {.cdecl,
      importc: "avsubtitle_free".}
else:
  static :
    hint("Declaration of " & "avsubtitlefree" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetbuffer2):
  proc avcodecdefaultgetbuffer2*(s: ptr Avcodeccontext_520094177;
                                 frame: ptr Avframe_520094173; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_buffer2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetbuffer2" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetencodebuffer):
  proc avcodecdefaultgetencodebuffer*(s: ptr Avcodeccontext_520094177;
                                      pkt: ptr Avpacket_520094132; flags: cint): cint {.
      cdecl, importc: "avcodec_default_get_encode_buffer".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetencodebuffer" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions):
  proc avcodecaligndimensions*(s: ptr Avcodeccontext_520094177; width: ptr cint;
                               height: ptr cint): void {.cdecl,
      importc: "avcodec_align_dimensions".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions" &
        " already exists, not redeclaring")
when not declared(avcodecaligndimensions2):
  proc avcodecaligndimensions2*(s: ptr Avcodeccontext_520094177;
                                width: ptr cint; height: ptr cint;
                                linesizealign: array[8'i64, cint]): void {.
      cdecl, importc: "avcodec_align_dimensions2".}
else:
  static :
    hint("Declaration of " & "avcodecaligndimensions2" &
        " already exists, not redeclaring")
when not declared(avcodecenumtochromapos):
  proc avcodecenumtochromapos*(xpos: ptr cint; ypos: ptr cint;
                               pos: enumavchromalocation_520094163): cint {.
      cdecl, importc: "avcodec_enum_to_chroma_pos".}
else:
  static :
    hint("Declaration of " & "avcodecenumtochromapos" &
        " already exists, not redeclaring")
when not declared(avcodecchromapostoenum):
  proc avcodecchromapostoenum*(xpos: cint; ypos: cint): enumavchromalocation_520094163 {.
      cdecl, importc: "avcodec_chroma_pos_to_enum".}
else:
  static :
    hint("Declaration of " & "avcodecchromapostoenum" &
        " already exists, not redeclaring")
when not declared(avcodecdecodesubtitle2):
  proc avcodecdecodesubtitle2*(avctx: ptr Avcodeccontext_520094177;
                               sub: ptr Avsubtitle_520094189;
                               gotsubptr: ptr cint; avpkt: ptr Avpacket_520094132): cint {.
      cdecl, importc: "avcodec_decode_subtitle2".}
else:
  static :
    hint("Declaration of " & "avcodecdecodesubtitle2" &
        " already exists, not redeclaring")
when not declared(avcodecsendpacket):
  proc avcodecsendpacket*(avctx: ptr Avcodeccontext_520094177;
                          avpkt: ptr Avpacket_520094132): cint {.cdecl,
      importc: "avcodec_send_packet".}
else:
  static :
    hint("Declaration of " & "avcodecsendpacket" &
        " already exists, not redeclaring")
when not declared(avcodecreceiveframe):
  proc avcodecreceiveframe*(avctx: ptr Avcodeccontext_520094177;
                            frame: ptr Avframe_520094173): cint {.cdecl,
      importc: "avcodec_receive_frame".}
else:
  static :
    hint("Declaration of " & "avcodecreceiveframe" &
        " already exists, not redeclaring")
when not declared(avcodecsendframe):
  proc avcodecsendframe*(avctx: ptr Avcodeccontext_520094177; frame: ptr Avframe_520094173): cint {.
      cdecl, importc: "avcodec_send_frame".}
else:
  static :
    hint("Declaration of " & "avcodecsendframe" &
        " already exists, not redeclaring")
when not declared(avcodecreceivepacket):
  proc avcodecreceivepacket*(avctx: ptr Avcodeccontext_520094177;
                             avpkt: ptr Avpacket_520094132): cint {.cdecl,
      importc: "avcodec_receive_packet".}
else:
  static :
    hint("Declaration of " & "avcodecreceivepacket" &
        " already exists, not redeclaring")
when not declared(avcodecgethwframesparameters):
  proc avcodecgethwframesparameters*(avctx: ptr Avcodeccontext_520094177;
                                     deviceref: ptr Avbufferref_520094130;
                                     hwpixfmt: enumavpixelformat_520094090;
                                     outframesref: ptr ptr Avbufferref_520094130): cint {.
      cdecl, importc: "avcodec_get_hw_frames_parameters".}
else:
  static :
    hint("Declaration of " & "avcodecgethwframesparameters" &
        " already exists, not redeclaring")
when not declared(avparseriterate):
  proc avparseriterate*(opaque: ptr pointer): ptr Avcodecparser_520094199 {.
      cdecl, importc: "av_parser_iterate".}
else:
  static :
    hint("Declaration of " & "avparseriterate" &
        " already exists, not redeclaring")
when not declared(avparserinit):
  proc avparserinit*(codecid: cint): ptr Avcodecparsercontext_520094197 {.cdecl,
      importc: "av_parser_init".}
else:
  static :
    hint("Declaration of " & "avparserinit" & " already exists, not redeclaring")
when not declared(avparserparse2):
  proc avparserparse2*(s: ptr Avcodecparsercontext_520094197;
                       avctx: ptr Avcodeccontext_520094177;
                       poutbuf: ptr ptr uint8; poutbufsize: ptr cint;
                       buf: ptr uint8; bufsize: cint; pts: int64; dts: int64;
                       pos: int64): cint {.cdecl, importc: "av_parser_parse2".}
else:
  static :
    hint("Declaration of " & "avparserparse2" &
        " already exists, not redeclaring")
when not declared(avparserclose):
  proc avparserclose*(s: ptr Avcodecparsercontext_520094197): void {.cdecl,
      importc: "av_parser_close".}
else:
  static :
    hint("Declaration of " & "avparserclose" &
        " already exists, not redeclaring")
when not declared(avcodecencodesubtitle):
  proc avcodecencodesubtitle*(avctx: ptr Avcodeccontext_520094177;
                              buf: ptr uint8; bufsize: cint; sub: ptr Avsubtitle_520094189): cint {.
      cdecl, importc: "avcodec_encode_subtitle".}
else:
  static :
    hint("Declaration of " & "avcodecencodesubtitle" &
        " already exists, not redeclaring")
when not declared(avcodecpixfmttocodectag):
  proc avcodecpixfmttocodectag*(pixfmt: enumavpixelformat_520094090): cuint {.
      cdecl, importc: "avcodec_pix_fmt_to_codec_tag".}
else:
  static :
    hint("Declaration of " & "avcodecpixfmttocodectag" &
        " already exists, not redeclaring")
when not declared(avcodecfindbestpixfmtoflist):
  proc avcodecfindbestpixfmtoflist*(pixfmtlist: ptr enumavpixelformat_520094090;
                                    srcpixfmt: enumavpixelformat_520094090;
                                    hasalpha: cint; lossptr: ptr cint): enumavpixelformat_520094090 {.
      cdecl, importc: "avcodec_find_best_pix_fmt_of_list".}
else:
  static :
    hint("Declaration of " & "avcodecfindbestpixfmtoflist" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultgetformat):
  proc avcodecdefaultgetformat*(s: ptr structavcodeccontext_520094171;
                                fmt: ptr enumavpixelformat_520094090): enumavpixelformat_520094090 {.
      cdecl, importc: "avcodec_default_get_format".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultgetformat" &
        " already exists, not redeclaring")
when not declared(avcodecstring):
  proc avcodecstring*(buf: cstring; bufsize: cint; enc: ptr Avcodeccontext_520094177;
                      encode: cint): void {.cdecl, importc: "avcodec_string".}
else:
  static :
    hint("Declaration of " & "avcodecstring" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute):
  proc avcodecdefaultexecute*(c: ptr Avcodeccontext_520094177; funcarg: proc (
      a0: ptr Avcodeccontext_520094177; a1: pointer): cint {.cdecl.};
                              arg: pointer; ret: ptr cint; count: cint;
                              size: cint): cint {.cdecl,
      importc: "avcodec_default_execute".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute" &
        " already exists, not redeclaring")
when not declared(avcodecdefaultexecute2):
  proc avcodecdefaultexecute2*(c: ptr Avcodeccontext_520094177; funcarg: proc (
      a0: ptr Avcodeccontext_520094177; a1: pointer; a2: cint; a3: cint): cint {.
      cdecl.}; arg: pointer; ret: ptr cint; count: cint): cint {.cdecl,
      importc: "avcodec_default_execute2".}
else:
  static :
    hint("Declaration of " & "avcodecdefaultexecute2" &
        " already exists, not redeclaring")
when not declared(avcodecfillaudioframe):
  proc avcodecfillaudioframe*(frame: ptr Avframe_520094173; nbchannels: cint;
                              samplefmt: enumavsampleformat_520094080;
                              buf: ptr uint8; bufsize: cint; align: cint): cint {.
      cdecl, importc: "avcodec_fill_audio_frame".}
else:
  static :
    hint("Declaration of " & "avcodecfillaudioframe" &
        " already exists, not redeclaring")
when not declared(avcodecflushbuffers):
  proc avcodecflushbuffers*(avctx: ptr Avcodeccontext_520094177): void {.cdecl,
      importc: "avcodec_flush_buffers".}
else:
  static :
    hint("Declaration of " & "avcodecflushbuffers" &
        " already exists, not redeclaring")
when not declared(avgetaudioframeduration):
  proc avgetaudioframeduration*(avctx: ptr Avcodeccontext_520094177;
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
  proc avcodecisopen*(s: ptr Avcodeccontext_520094177): cint {.cdecl,
      importc: "avcodec_is_open".}
else:
  static :
    hint("Declaration of " & "avcodecisopen" &
        " already exists, not redeclaring")