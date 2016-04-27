require "./sys/types"
require "./stddef"

lib LibC
  type FILE = Void

  struct FposT
    __pos : OffT
    __state : Void*
  end

  fun printf(format : Char*, ...) : Int
  fun rename(old : Char*, new : Char*) : Int
  fun renameat(oldfd : Int, old : Char*, newfd : Int, new : Char*) : Int
  fun rewind(stream : FILE*) : Void
  fun snprintf(s : Char*, maxlen : SizeT, format : Char*, ...) : Int
end
