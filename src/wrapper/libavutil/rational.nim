
from macros import hint

type
  structavrational_520094166 {.pure, inheritable, bycopy.} = object
    num*: cint               ## Generated based on /usr/include/libavutil/rational.h:58:16
    den*: cint

  Avrational_520094168 = structavrational_520094167 ## Generated based on /usr/include/libavutil/rational.h:61:3
  structavrational_520094167 = (when declared(structavrational):
    structavrational
   else:
    structavrational_520094166)
  Avrational_520094169 = (when declared(Avrational):
    Avrational
   else:
    Avrational_520094168)
when not declared(structavrational):
  type
    structavrational* = structavrational_520094166
else:
  static :
    hint("Declaration of " & "structavrational" &
        " already exists, not redeclaring")
when not declared(Avrational):
  type
    Avrational* = Avrational_520094168
else:
  static :
    hint("Declaration of " & "Avrational" & " already exists, not redeclaring")
when not declared(avreduce):
  proc avreduce*(dstnum: ptr cint; dstden: ptr cint; num: int64; den: int64;
                 max: int64): cint {.cdecl, importc: "av_reduce".}
else:
  static :
    hint("Declaration of " & "avreduce" & " already exists, not redeclaring")
when not declared(avmulq):
  proc avmulq*(b: Avrational_520094169; c: Avrational_520094169): Avrational_520094169 {.
      cdecl, importc: "av_mul_q".}
else:
  static :
    hint("Declaration of " & "avmulq" & " already exists, not redeclaring")
when not declared(avdivq):
  proc avdivq*(b: Avrational_520094169; c: Avrational_520094169): Avrational_520094169 {.
      cdecl, importc: "av_div_q".}
else:
  static :
    hint("Declaration of " & "avdivq" & " already exists, not redeclaring")
when not declared(avaddq):
  proc avaddq*(b: Avrational_520094169; c: Avrational_520094169): Avrational_520094169 {.
      cdecl, importc: "av_add_q".}
else:
  static :
    hint("Declaration of " & "avaddq" & " already exists, not redeclaring")
when not declared(avsubq):
  proc avsubq*(b: Avrational_520094169; c: Avrational_520094169): Avrational_520094169 {.
      cdecl, importc: "av_sub_q".}
else:
  static :
    hint("Declaration of " & "avsubq" & " already exists, not redeclaring")
when not declared(avd2q):
  proc avd2q*(d: cdouble; max: cint): Avrational_520094169 {.cdecl,
      importc: "av_d2q".}
else:
  static :
    hint("Declaration of " & "avd2q" & " already exists, not redeclaring")
when not declared(avnearerq):
  proc avnearerq*(q: Avrational_520094169; q1: Avrational_520094169;
                  q2: Avrational_520094169): cint {.cdecl,
      importc: "av_nearer_q".}
else:
  static :
    hint("Declaration of " & "avnearerq" & " already exists, not redeclaring")
when not declared(avfindnearestqidx):
  proc avfindnearestqidx*(q: Avrational_520094169; qlist: ptr Avrational_520094169): cint {.
      cdecl, importc: "av_find_nearest_q_idx".}
else:
  static :
    hint("Declaration of " & "avfindnearestqidx" &
        " already exists, not redeclaring")
when not declared(avq2intfloat):
  proc avq2intfloat*(q: Avrational_520094169): uint32 {.cdecl,
      importc: "av_q2intfloat".}
else:
  static :
    hint("Declaration of " & "avq2intfloat" & " already exists, not redeclaring")
when not declared(avgcdq):
  proc avgcdq*(a: Avrational_520094169; b: Avrational_520094169; maxden: cint;
               def: Avrational_520094169): Avrational_520094169 {.cdecl,
      importc: "av_gcd_q".}
else:
  static :
    hint("Declaration of " & "avgcdq" & " already exists, not redeclaring")