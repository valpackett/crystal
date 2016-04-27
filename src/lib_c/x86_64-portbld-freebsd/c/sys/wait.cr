require "./types"
require "../signal"

lib LibC
  WCONTINUED =  4
  WNOHANG    =  1
  WUNTRACED  =  2
  WEXITED    = 16
  WNOWAIT    =  8
  WSTOPPED   = LibC::WUNTRACED

  fun waitpid(x0 : PidT, x1 : Int*, x2 : Int) : PidT
end
