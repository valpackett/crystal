require "./types"
require "../signal"

lib LibC
  WCONTINUED =          8
  WNOHANG    =          1
  WUNTRACED  =          2
  WEXITED    =          4
  WNOWAIT    = 0x01000000
  WSTOPPED   =          2

  fun waitpid(pid : PidT, stat_loc : Int*, options : Int) : PidT
end
