require "./types"
require "../signal"

lib LibC
  WCONTINUED =         8
  WNOHANG    =         1
  WUNTRACED  =         2
  WEXITED    =         4
  WNOWAIT    = 0x1000000
  WSTOPPED   =         2

  fun waitpid(x0 : PidT, x1 : Int*, x2 : Int) : PidT
end
