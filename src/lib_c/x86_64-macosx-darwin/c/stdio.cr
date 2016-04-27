require "./sys/types"
require "./stddef"

lib LibC
  type FILE = Void
  alias FposT = LongLong

  fun printf(x0 : Char*, ...) : Int
  fun rename(x0 : Char*, x1 : Char*) : Int
  fun rewind(x0 : FILE*) : Void
  fun snprintf(x0 : Char*, x1 : SizeT, x2 : Char*, ...) : Int
end
