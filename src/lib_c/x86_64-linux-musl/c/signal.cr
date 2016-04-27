require "./sys/types"
require "./time"

lib LibC
  SIGHUP       = 1
  SIGINT       = 2
  SIGQUIT      = 3
  SIGILL       = 4
  SIGTRAP      = 5
  SIGIOT       = LibC::SIGABRT
  SIGABRT      =  6
  SIGFPE       =  8
  SIGKILL      =  9
  SIGBUS       =  7
  SIGSEGV      = 11
  SIGSYS       = 31
  SIGPIPE      = 13
  SIGALRM      = 14
  SIGTERM      = 15
  SIGURG       = 23
  SIGSTOP      = 19
  SIGTSTP      = 20
  SIGCONT      = 18
  SIGCHLD      = 17
  SIGTTIN      = 21
  SIGTTOU      = 22
  SIGIO        = 29
  SIGXCPU      = 24
  SIGXFSZ      = 25
  SIGVTALRM    = 26
  SIGUSR1      = 10
  SIGUSR2      = 12
  SIGWINCH     = 28
  SIGPWR       = 30
  SIGSTKFLT    = 16
  SIGUNUSED    = LibC::SIGSYS
  SA_NOCLDSTOP =          1
  SA_ONSTACK   = 0x08000000
  SA_RESETHAND = 0x80000000
  SA_RESTART   = 0x10000000
  SA_SIGINFO   =          4
  SA_NOCLDWAIT =          2
  SA_NODEFER   = 0x40000000
  MINSIGSTKSZ  =       2048
  SIGSTKSZ     =       8192

  fun kill(x0 : PidT, x1 : Int) : Int
  fun killpg(x0 : PidT, x1 : Int) : Int
  fun signal(x0 : Int, x1 : Int -> Void) : Int -> Void
end
