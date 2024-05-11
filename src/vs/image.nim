#[
int WriteJPEG (AVCodecContext *pCodecCtx, AVFrame *pFrame, int FrameNo){
  AVCodecContext *pOCodecCtx;
  AVCodec *pOCodec;
  uint8_t *Buffer;
  int BufSiz;
  int BufSizActual;
  int ImgFmt = PIX_FMT_YUVJ420P; //for the
  newer ffmpeg version, this int to pixelformat
  FILE *JPEGFile;
  char JPEGFName[256];

  BufSiz = avpicture_get_size (
  ImgFmt,pCodecCtx->width,pCodecCtx->height );

  Buffer = (uint8_t *)malloc ( BufSiz );
  if ( Buffer == NULL )
  return ( 0 );
  memset ( Buffer, 0, BufSiz );

  pOCodecCtx = avcodec_alloc_context ( );
  if ( !pOCodecCtx ) {
  free ( Buffer );
  return ( 0 );
  }

  pOCodecCtx->bit_rate = pCodecCtx->bit_rate;
  pOCodecCtx->width = pCodecCtx->width;
  pOCodecCtx->height = pCodecCtx->height;
  pOCodecCtx->pix_fmt = ImgFmt;
  pOCodecCtx->codec_id = CODEC_ID_MJPEG;
  pOCodecCtx->codec_type = CODEC_TYPE_VIDEO;
  pOCodecCtx->time_base.num = pCodecCtx->time_base.num;
  pOCodecCtx->time_base.den = pCodecCtx->time_base.den;

  pOCodec = avcodec_find_encoder ( pOCodecCtx->codec_id );
  if ( !pOCodec ) {
  free ( Buffer );
  return ( 0 );
  }
  if ( avcodec_open ( pOCodecCtx, pOCodec ) < 0 ) {
  free ( Buffer );
  return ( 0 );
  }

  pOCodecCtx->mb_lmin = pOCodecCtx->lmin =
  pOCodecCtx->qmin * FF_QP2LAMBDA;
  pOCodecCtx->mb_lmax = pOCodecCtx->lmax =
  pOCodecCtx->qmax * FF_QP2LAMBDA;
  pOCodecCtx->flags = CODEC_FLAG_QSCALE;
  pOCodecCtx->global_quality = pOCodecCtx->qmin * FF_QP2LAMBDA;

  pFrame->pts = 1;
  pFrame->quality = pOCodecCtx->global_quality;
  BufSizActual = avcodec_encode_video(
  pOCodecCtx,Buffer,BufSiz,pFrame );

  sprintf ( JPEGFName, "%06d.jpg", FrameNo );
  JPEGFile = fopen ( JPEGFName, "wb" );
  fwrite ( Buffer, 1, BufSizActual, JPEGFile );
  fclose ( JPEGFile );

  avcodec_close ( pOCodecCtx );
  free ( Buffer );
  return ( BufSizActual );
}
]#