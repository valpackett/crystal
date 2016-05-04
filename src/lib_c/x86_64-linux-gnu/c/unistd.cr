require "./sys/types"
require "./stdint"

lib LibC
  F_OK       = 0
  R_OK       = 4
  W_OK       = 2
  X_OK       = 1
  F_LOCK     = 1
  F_TEST     = 3
  F_TLOCK    = 2
  F_ULOCK    = 0
  SC_CLK_TCK = 2

  fun access(name : Char*, type : Int) : Int
  fun chdir(path : Char*) : Int
  fun chown(file : Char*, owner : UidT, group : GidT) : Int
  fun close(fd : Int) : Int
  fun dup2(fd : Int, fd2 : Int) : Int
  fun _exit(status : Int) : NoReturn
  fun execvp(file : Char*, argv : Char**) : Int
  fun faccessat(fd : Int, file : Char*, type : Int, flag : Int) : Int
  fun fchdir(fd : Int) : Int
  fun fchown(fd : Int, owner : UidT, group : GidT) : Int
  fun fchownat(fd : Int, file : Char*, owner : UidT, group : GidT, flag : Int) : Int
  @[ReturnsTwice]
  fun fork : PidT
  fun ftruncate(fd : Int, length : OffT) : Int
  fun getcwd(buf : Char*, size : SizeT) : Char*
  fun getegid : GidT
  fun geteuid : UidT
  fun getgid : GidT
  fun getgroups(size : Int, list : GidT*) : Int
  fun gethostname(name : Char*, len : SizeT) : Int
  fun getlogin_r(name : Char*, name_len : SizeT) : Int
  fun getpgid(pid : PidT) : PidT
  fun getpgrp : PidT
  fun getpid : PidT
  fun getppid : PidT
  fun getsid(pid : PidT) : PidT
  fun getuid : UidT
  fun isatty(fd : Int) : Int
  fun lchown(file : Char*, owner : UidT, group : GidT) : Int
  fun link(from : Char*, to : Char*) : Int
  fun linkat(fromfd : Int, from : Char*, tofd : Int, to : Char*, flags : Int) : Int
  fun lockf(fd : Int, cmd : Int, len : OffT) : Int
  fun lseek(fd : Int, offset : OffT, whence : Int) : OffT
  fun nice(inc : Int) : Int
  fun pipe(pipedes : StaticArray(Int, 2)) : Int
  fun read(fd : Int, buf : Void*, nbytes : SizeT) : SSizeT
  fun readlink(path : Char*, buf : Char*, len : SizeT) : SSizeT
  fun readlinkat(fd : Int, path : Char*, buf : Char*, len : SizeT) : SSizeT
  fun rmdir(path : Char*) : Int
  fun setegid(gid : GidT) : Int
  fun seteuid(uid : UidT) : Int
  fun setgid(gid : GidT) : Int
  fun setpgid(pid : PidT, pgid : PidT) : Int
  fun setregid(rgid : GidT, egid : GidT) : Int
  fun setreuid(ruid : UidT, euid : UidT) : Int
  fun setsid : PidT
  fun setuid(uid : UidT) : Int
  fun symlink(from : Char*, to : Char*) : Int
  fun symlinkat(from : Char*, tofd : Int, to : Char*) : Int
  fun sysconf(name : Int) : Long
  fun ttyname_r(fd : Int, buf : Char*, buflen : SizeT) : Int
  fun unlink(name : Char*) : Int
  fun unlinkat(fd : Int, name : Char*, flag : Int) : Int
  fun write(fd : Int, buf : Void*, n : SizeT) : SSizeT
end
