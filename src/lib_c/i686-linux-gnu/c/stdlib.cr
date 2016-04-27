require "./stddef"
require "./sys/wait"

lib LibC
  EXIT_FAILURE = 1
  EXIT_SUCCESS = 0

  struct DivT
    quot : Int
    rem : Int
  end

  fun atof(nptr : Char*) : Double
  fun div(numer : Int, denom : Int) : DivT
  fun exit(status : Int) : NoReturn
  fun free(ptr : Void*) : Void
  fun getenv(name : Char*) : Char*
  fun malloc(size : SizeT) : Void*
  fun mkstemp(template : Char*) : Int
  fun putenv(string : Char*) : Int
  fun realloc(ptr : Void*, size : SizeT) : Void*
  fun realpath(name : Char*, resolved : Char*) : Char*
  fun setenv(name : Char*, value : Char*, replace : Int) : Int
  fun strtof(nptr : Char*, endptr : Char**) : Float
  fun system(command : Char*) : Int
  fun unsetenv(name : Char*) : Int
end
