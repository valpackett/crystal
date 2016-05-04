require "./sys/types"
require "./stddef"

lib LibC
  type FILE = Void

  union FposT
    __opaque : StaticArray(Char, 16)
    __align : Double
  end

  fun printf(x0 : Char*, ...) : Int
  fun rename(x0 : Char*, x1 : Char*) : Int
  fun renameat(x0 : Int, x1 : Char*, x2 : Int, x3 : Char*) : Int
  fun rewind(x0 : FILE*) : Void
  fun snprintf(x0 : Char*, x1 : SizeT, x2 : Char*, ...) : Int
end
