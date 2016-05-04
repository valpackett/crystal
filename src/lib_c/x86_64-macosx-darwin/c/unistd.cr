require "./sys/types"
require "./stdint"

lib LibC
  F_OK       = 0
  R_OK       = 1 << 2
  W_OK       = 1 << 1
  X_OK       = 1 << 0
  F_LOCK     = 1
  F_TEST     = 3
  F_TLOCK    = 2
  F_ULOCK    = 0
  SC_CLK_TCK = 3

  fun access(x0 : Char*, x1 : Int) : Int
  fun chdir(x0 : Char*) : Int
  fun chown(x0 : Char*, x1 : UidT, x2 : GidT) : Int
  fun close(x0 : Int) : Int
  fun dup2(x0 : Int, x1 : Int) : Int
  fun _exit(x0 : Int) : NoReturn
  fun execvp(x0 : Char*, x1 : Char**) : Int
  fun fchdir(x0 : Int) : Int
  fun fchown(x0 : Int, x1 : UidT, x2 : GidT) : Int
  @[ReturnsTwice]
  fun fork : PidT
  fun ftruncate(x0 : Int, x1 : OffT) : Int
  fun getcwd(x0 : Char*, x1 : SizeT) : Char*
  fun getegid : GidT
  fun geteuid : UidT
  fun getgid : GidT
  fun getgroups(x0 : Int, x1 : GidT*) : Int
  fun gethostname(x0 : Char*, x1 : SizeT) : Int
  fun getlogin_r(x0 : Char*, x1 : SizeT) : Int
  fun getpgid(x0 : PidT) : PidT
  fun getpgrp : PidT
  fun getpid : PidT
  fun getppid : PidT
  fun getsid(x0 : PidT) : PidT
  fun getuid : UidT
  fun isatty(x0 : Int) : Int
  fun lchown(x0 : Char*, x1 : UidT, x2 : GidT) : Int
  fun link(x0 : Char*, x1 : Char*) : Int
  fun lockf(x0 : Int, x1 : Int, x2 : OffT) : Int
  fun lseek(x0 : Int, x1 : OffT, x2 : Int) : OffT
  fun nice(x0 : Int) : Int
  fun pipe(x0 : StaticArray(Int, 2)) : Int
  fun read(x0 : Int, x1 : Void*, x2 : SizeT) : SSizeT
  fun readlink(x0 : Char*, x1 : Char*, x2 : SizeT) : SSizeT
  fun rmdir(x0 : Char*) : Int
  fun setegid(x0 : GidT) : Int
  fun seteuid(x0 : UidT) : Int
  fun setgid(x0 : GidT) : Int
  fun setpgid(x0 : PidT, x1 : PidT) : Int
  fun setregid(x0 : GidT, x1 : GidT) : Int
  fun setreuid(x0 : UidT, x1 : UidT) : Int
  fun setsid : PidT
  fun setuid(x0 : UidT) : Int
  fun symlink(x0 : Char*, x1 : Char*) : Int
  fun sysconf(x0 : Int) : Long
  fun ttyname_r(x0 : Int, x1 : Char*, x2 : SizeT) : Int
  fun unlink(x0 : Char*) : Int
  fun write(x0 : Int, x1 : Void*, x2 : SizeT) : SSizeT
end
