require "./types"
require "../signal"

lib LibC
  WCONTINUED = 0x00000010
  WNOHANG    = 0x00000001
  WUNTRACED  = 0x00000002
  WEXITED    = 0x00000004
  WNOWAIT    = 0x00000020
  WSTOPPED   = 0x00000008

  fun waitpid(x0 : PidT, x1 : Int*, x2 : Int) : PidT
end
