



when not defined(M_E):
  const
    M_E* = 2.7182818284590452354
when not defined(M_Ef):
  const
    M_Ef* = 2.7182818284590452354f
when not defined(M_LN2):
  const
    M_LN2* = 0.69314718055994530942
when not defined(M_LN2f):
  const
    M_LN2f* = 0.69314718055994530942f
when not defined(M_LN10):
  const
    M_LN10* = 2.30258509299404568402
when not defined(M_LN10f):
  const
    M_LN10f* = 2.30258509299404568402f
when not defined(M_LOG2_10):
  const
    M_LOG2_10* = 3.32192809488736234787
when not defined(M_LOG2_10f):
  const
    M_LOG2_10f* = 3.32192809488736234787f
when not defined(M_PHI):
  const
    M_PHI* = 1.61803398874989484820
when not defined(M_PHIf):
  const
    M_PHIf* = 1.61803398874989484820f
when not defined(M_PI):
  const
    M_PI* = 3.14159265358979323846
when not defined(M_PIf):
  const
    M_PIf* = 3.14159265358979323846f
when not defined(M_PI_2):
  const
    M_PI_2* = 1.57079632679489661923
when not defined(M_PI_2f):
  const
    M_PI_2f* = 1.57079632679489661923f
when not defined(M_PI_4):
  const
    M_PI_4* = 0.78539816339744830962
when not defined(M_PI_4f):
  const
    M_PI_4f* = 0.78539816339744830962f
when not defined(M_1_PI):
  const
    M_1_PI* = 0.31830988618379067154
when not defined(M_1_PIf):
  const
    M_1_PIf* = 0.31830988618379067154f
when not defined(M_2_PI):
  const
    M_2_PI* = 0.63661977236758134308
when not defined(M_2_PIf):
  const
    M_2_PIf* = 0.63661977236758134308f
when not defined(M_2_SQRTPI):
  const
    M_2_SQRTPI* = 1.12837916709551257390
when not defined(M_2_SQRTPIf):
  const
    M_2_SQRTPIf* = 1.12837916709551257390f
when not defined(M_SQRT1_2):
  const
    M_SQRT1_2* = 0.70710678118654752440
when not defined(M_SQRT1_2f):
  const
    M_SQRT1_2f* = 0.70710678118654752440f
when not defined(M_SQRT2):
  const
    M_SQRT2* = 1.41421356237309504880
when not defined(M_SQRT2f):
  const
    M_SQRT2f* = 1.41421356237309504880f
# when not defined(NAN):
#   const
#     NAN* = av_int2float(0x7fc00000)
# when not defined(INFINITY):
#   const
#     INFINITY* = av_int2float(0x7f800000)

type
  AVRounding* {.size: sizeof(cint).} = enum
    AV_ROUND_ZERO = 0, AV_ROUND_INF = 1, AV_ROUND_DOWN = 2, AV_ROUND_UP = 3,
    AV_ROUND_NEAR_INF = 5, AV_ROUND_PASS_MINMAX = 8192



proc av_gcd*(a: int64; b: int64): int64 {.importc: "av_gcd".}

proc av_rescale*(a: int64; b: int64; c: int64): int64 {.
    importc: "av_rescale".}

proc av_rescale_rnd*(a: int64; b: int64; c: int64; rnd: AVRounding): int64 {.
    importc: "av_rescale_rnd".}

proc av_rescale_q*(a: int64; bq: AVRational; cq: AVRational): int64 {.
    importc: "av_rescale_q".}

proc av_rescale_q_rnd*(a: int64; bq: AVRational; cq: AVRational;
                       rnd: AVRounding): int64 {.importc: "av_rescale_q_rnd".}

proc av_compare_ts*(ts_a: int64; tb_a: AVRational; ts_b: int64;
                    tb_b: AVRational): cint {.importc: "av_compare_ts".}

proc av_compare_mod*(a: uint64; b: uint64; `mod`: uint64): int64 {.
    importc: "av_compare_mod".}

proc av_rescale_delta*(in_tb: AVRational; in_ts: int64; fs_tb: AVRational;
                       duration: cint; last: ptr int64; out_tb: AVRational): int64 {.
    importc: "av_rescale_delta".}

proc av_add_stable*(ts_tb: AVRational; ts: int64; inc_tb: AVRational;
                    inc: int64): int64 {.importc: "av_add_stable".}

proc av_bessel_i0*(x: cdouble): cdouble {.importc: "av_bessel_i0".}
