require "./sys/types"
require "./time"

lib LibC
  SIGHUP       = 1
  SIGINT       = 2
  SIGQUIT      = 3
  SIGILL       = 4
  SIGTRAP      = 5
  SIGIOT       = LibC::SIGABRT
  SIGABRT      =      6
  SIGFPE       =      8
  SIGKILL      =      9
  SIGBUS       =     10
  SIGSEGV      =     11
  SIGSYS       =     12
  SIGPIPE      =     13
  SIGALRM      =     14
  SIGTERM      =     15
  SIGURG       =     16
  SIGSTOP      =     17
  SIGTSTP      =     18
  SIGCONT      =     19
  SIGCHLD      =     20
  SIGTTIN      =     21
  SIGTTOU      =     22
  SIGIO        =     23
  SIGXCPU      =     24
  SIGXFSZ      =     25
  SIGVTALRM    =     26
  SIGUSR1      =     30
  SIGUSR2      =     31
  SIGEMT       =      7
  SIGINFO      =     29
  SIGWINCH     =     28
  SA_NOCLDSTOP = 0x0008
  SA_ONSTACK   = 0x0001
  SA_RESETHAND = 0x0004
  SA_RESTART   = 0x0002
  SA_SIGINFO   = 0x0040
  SA_NOCLDWAIT = 0x0020
  SA_NODEFER   = 0x0010

  fun kill(x0 : PidT, x1 : Int) : Int
  fun killpg(x0 : PidT, x1 : Int) : Int
  fun signal(x0 : Int, x1 : Int -> Void) : Int -> Void
end
