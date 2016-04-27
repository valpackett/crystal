require "./stddef"
require "./sys/wait"

lib LibC
  EXIT_FAILURE = 1
  EXIT_SUCCESS = 0

  struct DivT
    quot : Int
    rem : Int
  end

  fun atof(x0 : Char*) : Double
  fun div(x0 : Int, x1 : Int) : DivT
  fun exit(x0 : Int) : NoReturn
  fun free(x0 : Void*) : Void
  fun getenv(x0 : Char*) : Char*
  fun malloc(x0 : SizeT) : Void*
  fun mkstemp(x0 : Char*) : Int
  fun putenv(x0 : Char*) : Int
  fun realloc(x0 : Void*, x1 : SizeT) : Void*
  fun realpath(x0 : Char*, x1 : Char*) : Char*
  fun setenv(x0 : Char*, x1 : Char*, x2 : Int) : Int
  fun strtof(x0 : Char*, x1 : Char**) : Float
  fun system(x0 : Char*) : Int
  fun unsetenv(x0 : Char*) : Int
end
