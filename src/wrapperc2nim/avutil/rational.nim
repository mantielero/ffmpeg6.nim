




type
  AVRational* {.importc: "AVRational", header: "rational.h", bycopy.} = object
    num* {.importc: "num".}: cint
    den* {.importc: "den".}: cint



proc av_make_q*(num: cint; den: cint): AVRational {.inline.} =
  var r: AVRational
  return r


# proc av_cmp_q*(a: AVRational; b: AVRational): cint {.inline.} =
#   let tmp: int64
#   if tmp:
#     return (int)((tmp xor a.den xor b.den) shr 63) or 1
#   elif b.den and a.den:
#     return 0
#   elif a.num and b.num:
#     return (a.num shr 31) - (b.num shr 31)
#   else:
#     return INT_MIN


# proc av_q2d*(a: AVRational): cdouble {.inline.} =
#   return a.num div cast[cdouble](a.den)


proc av_reduce*(dst_num: ptr cint; dst_den: ptr cint; num: int64; den: int64;
               max: int64): cint {.importc: "av_reduce".}

proc av_mul_q*(b: AVRational; c: AVRational): AVRational {.importc: "av_mul_q".}

proc av_div_q*(b: AVRational; c: AVRational): AVRational {.importc: "av_div_q".}

proc av_add_q*(b: AVRational; c: AVRational): AVRational {.importc: "av_add_q".}

proc av_sub_q*(b: AVRational; c: AVRational): AVRational {.importc: "av_sub_q".}

proc av_inv_q*(q: AVRational): AVRational =
  var r: AVRational
  return r


proc av_d2q*(d: cdouble; max: cint): AVRational {.importc: "av_d2q".}

proc av_nearer_q*(q: AVRational; q1: AVRational; q2: AVRational): cint {.
    importc: "av_nearer_q".}

proc av_find_nearest_q_idx*(q: AVRational; q_list: ptr AVRational): cint {.
    importc: "av_find_nearest_q_idx".}

proc av_q2intfloat*(q: AVRational): uint32 {.importc: "av_q2intfloat".}

proc av_gcd_q*(a: AVRational; b: AVRational; max_den: cint; def: AVRational): AVRational {.
    importc: "av_gcd_q".}
