require "./sys/types"
require "./sys/stat"
require "./unistd"

lib LibC
  F_DUPFD         =          0
  F_DUPFD_CLOEXEC =         17
  F_GETFD         =          1
  F_SETFD         =          2
  F_GETFL         =          3
  F_SETFL         =          4
  F_GETLK         =         11
  F_SETLK         =         12
  F_SETLKW        =         13
  F_GETOWN        =          5
  F_SETOWN        =          6
  FD_CLOEXEC      =          1
  F_RDLCK         =          1
  F_UNLCK         =          2
  F_WRLCK         =          3
  O_CLOEXEC       = 0x00100000
  O_CREAT         =     0x0200
  O_DIRECTORY     = 0x00020000
  O_EXCL          =     0x0800
  O_NOCTTY        =     0x8000
  O_NOFOLLOW      =     0x0100
  O_TRUNC         =     0x0400
  O_TTY_INIT      = 0x00080000
  O_APPEND        =     0x0008
  O_NONBLOCK      =     0x0004
  O_SYNC          =     0x0080
  O_EXEC          = 0x00040000
  O_RDONLY        =     0x0000
  O_RDWR          =     0x0002
  O_WRONLY        =     0x0001
  O_ACCMODE       =     0x0003

  struct Flock
    l_start : OffT
    l_len : OffT
    l_pid : PidT
    l_type : Short
    l_whence : Short
    l_sysid : Int
  end

  fun fcntl(x0 : Int, x1 : Int, ...) : Int
  fun open(x0 : Char*, x1 : Int, ...) : Int
  fun openat(x0 : Int, x1 : Char*, x2 : Int, ...) : Int
end
