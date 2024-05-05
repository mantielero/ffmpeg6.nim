

# when HAVE_PRCTL:
#   discard

#FIXME
const
  HAVE_PTHREADS = false
  HAVE_W32THREADS = false  
  HAVE_OS2THREADS = false  
#----

when HAVE_PTHREADS or HAVE_W32THREADS or HAVE_OS2THREADS:
  const
    AVMutex* = pthread_mutex_t
    AV_MUTEX_INITIALIZER* = PTHREAD_MUTEX_INITIALIZER
    ff_mutex_init* = pthread_mutex_init
    ff_mutex_lock* = pthread_mutex_lock
    ff_mutex_unlock* = pthread_mutex_unlock
    ff_mutex_destroy* = pthread_mutex_destroy
    AVCond* = pthread_cond_t
    ff_cond_init* = pthread_cond_init
    ff_cond_destroy* = pthread_cond_destroy
    ff_cond_signal* = pthread_cond_signal
    ff_cond_broadcast* = pthread_cond_broadcast
    ff_cond_wait* = pthread_cond_wait
    ff_cond_timedwait* = pthread_cond_timedwait
    AVOnce* = pthread_once_t
    AV_ONCE_INIT* = PTHREAD_ONCE_INIT

  when HAVE_PTHREADS:
    when defined(ASSERT_LEVEL) and ASSERT_LEVEL > 1:
      template ASSERT_PTHREAD_ABORT*(`func`, ret: untyped): void =
        while true:
          var errbuf: array[AV_ERROR_MAX_STRING_SIZE, char]
          av_log(nil, AV_LOG_FATAL, AV_STRINGIFY(`func`),
                 " failed with error: %s\n", av_make_error_string(errbuf,
              AV_ERROR_MAX_STRING_SIZE, AVERROR(ret)))
          abort()
          if not 0:
            break

      template ASSERT_PTHREAD_NORET*(`func`: untyped; xargs: varargs[untyped]): void =
        while true:
          var ret: cint
          if ret:
            ASSERT_PTHREAD_ABORT(`func`, ret)
          if not 0:
            break

      # template ASSERT_PTHREAD*(`func`: untyped; xargs: varargs[untyped]): void =
      #   while true:
      #     ASSERT_PTHREAD_NORET(`func`, __VA_ARGS__)
      #     return 0
      #     if not 0:
      #       break

      proc strict_pthread_join*(thread: pthread_t; value_ptr: ptr pointer): cint {.
          inline.} =
        ASSERT_PTHREAD(pthread_join, thread, value_ptr)

      proc strict_pthread_mutex_init*(mutex: ptr pthread_mutex_t;
                                     attr: ptr pthread_mutexattr_t): cint {.inline.} =
        if attr:
          ASSERT_PTHREAD_NORET(pthread_mutex_init, mutex, attr)
        else:
          var local_attr: pthread_mutexattr_t
          ASSERT_PTHREAD_NORET(pthread_mutexattr_init, addr(local_attr))
          ASSERT_PTHREAD_NORET(pthread_mutexattr_settype, addr(local_attr),
                               PTHREAD_MUTEX_ERRORCHECK)
          ASSERT_PTHREAD_NORET(pthread_mutex_init, mutex, addr(local_attr))
          ASSERT_PTHREAD_NORET(pthread_mutexattr_destroy, addr(local_attr))
        return 0

      proc strict_pthread_mutex_destroy*(mutex: ptr pthread_mutex_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_mutex_destroy, mutex)

      proc strict_pthread_mutex_lock*(mutex: ptr pthread_mutex_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_mutex_lock, mutex)

      proc strict_pthread_mutex_unlock*(mutex: ptr pthread_mutex_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_mutex_unlock, mutex)

      proc strict_pthread_cond_init*(cond: ptr pthread_cond_t;
                                    attr: ptr pthread_condattr_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_cond_init, cond, attr)

      proc strict_pthread_cond_destroy*(cond: ptr pthread_cond_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_cond_destroy, cond)

      proc strict_pthread_cond_signal*(cond: ptr pthread_cond_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_cond_signal, cond)

      proc strict_pthread_cond_broadcast*(cond: ptr pthread_cond_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_cond_broadcast, cond)

      proc strict_pthread_cond_wait*(cond: ptr pthread_cond_t;
                                    mutex: ptr pthread_mutex_t): cint {.inline.} =
        ASSERT_PTHREAD(pthread_cond_wait, cond, mutex)

      proc strict_pthread_cond_timedwait*(cond: ptr pthread_cond_t;
          mutex: ptr pthread_mutex_t; abstime: ptr timespec): cint {.inline.} =
        var ret: cint
        if ret and ret != ETIMEDOUT:
          ASSERT_PTHREAD_ABORT(pthread_cond_timedwait, ret)
        return ret

      proc strict_pthread_once*(once_control: ptr pthread_once_t;
                               init_routine: proc ()): cint {.inline.} =
        ASSERT_PTHREAD(pthread_once, once_control, init_routine)

      const
        pthread_join* = strict_pthread_join
        pthread_mutex_init* = strict_pthread_mutex_init
        pthread_mutex_destroy* = strict_pthread_mutex_destroy
        pthread_mutex_lock* = strict_pthread_mutex_lock
        pthread_mutex_unlock* = strict_pthread_mutex_unlock
        pthread_cond_init* = strict_pthread_cond_init
        pthread_cond_destroy* = strict_pthread_cond_destroy
        pthread_cond_signal* = strict_pthread_cond_signal
        pthread_cond_broadcast* = strict_pthread_cond_broadcast
        pthread_cond_wait* = strict_pthread_cond_wait
        pthread_cond_timedwait* = strict_pthread_cond_timedwait
        pthread_once* = strict_pthread_once
  elif HAVE_OS2THREADS:
    discard
  else:
    discard

  template ff_thread_once*(control, routine: untyped): untyped =
    pthread_once(control, routine)

else:
  type
    AVMUtex* = char
  const
    #AVMutex* = char
    AV_MUTEX_INITIALIZER* = false
  proc ff_mutex_init*(mutex: ptr AVMutex; attr: pointer): cint {.inline.} =
    return 0

  proc ff_mutex_lock*(mutex: ptr AVMutex): cint {.inline.} =
    return 0

  proc ff_mutex_unlock*(mutex: ptr AVMutex): cint {.inline.} =
    return 0

  proc ff_mutex_destroy*(mutex: ptr AVMutex): cint {.inline.} =
    return 0

  type
    AVCond* = char
  proc ff_cond_init*(cond: ptr AVCond; attr: pointer): cint {.inline.} =
    return 0

  proc ff_cond_destroy*(cond: ptr AVCond): cint {.inline.} =
    return 0

  proc ff_cond_signal*(cond: ptr AVCond): cint {.inline.} =
    return 0

  proc ff_cond_broadcast*(cond: ptr AVCond): cint {.inline.} =
    return 0

  proc ff_cond_wait*(cond: ptr AVCond; mutex: ptr AVMutex): cint {.inline.} =
    return 0

  proc ff_cond_timedwait*(cond: ptr AVCond; mutex: ptr AVMutex; abstime: pointer): cint {.
      inline.} =
    return 0

  type
    AVOnce* = char
  const

    AV_ONCE_INIT* = 0
  # proc ff_thread_once*(control: cstring; routine: proc ()): cint {.inline.} =
  #   if not control[]:
  #     routine()
  #     control[] = 1
  #   return 0

# proc ff_thread_setname*(name: cstring): cint {.inline.} =
#   when HAVE_PRCTL:
#     return AVERROR(prctl(PR_SET_NAME, name))
#   return AVERROR(ENOSYS)
