require "./sys/types"
require "./sys/stat"
require "./unistd"

lib LibC
  F_DUPFD         =          0
  F_DUPFD_CLOEXEC =       1030
  F_GETFD         =          1
  F_SETFD         =          2
  F_GETFL         =          3
  F_SETFL         =          4
  F_GETLK         =         12
  F_SETLK         =         13
  F_SETLKW        =         14
  F_GETOWN        =          9
  F_SETOWN        =          8
  FD_CLOEXEC      =          1
  F_RDLCK         =          0
  F_UNLCK         =          2
  F_WRLCK         =          1
  O_CLOEXEC       =  0o2000000
  O_CREAT         =      0o100
  O_DIRECTORY     =   0o200000
  O_EXCL          =      0o200
  O_NOCTTY        =      0o400
  O_NOFOLLOW      =   0o400000
  O_TRUNC         =     0o1000
  O_APPEND        =     0o2000
  O_DSYNC         =    0o10000
  O_NONBLOCK      =     0o4000
  O_SYNC          =  0o4010000
  O_RSYNC         =  0o4010000
  O_PATH          = 0o10000000
  O_EXEC          = LibC::O_PATH
  O_RDONLY        = 0o0
  O_RDWR          = 0o2
  O_SEARCH        = LibC::O_PATH
  O_WRONLY        = 0o1
  O_ACCMODE       = 0o3 | O_SEARCH

  struct Flock
    l_type : Short
    l_whence : Short
    l_start : OffT
    l_len : OffT
    l_pid : PidT
  end

  fun fcntl(x0 : Int, x1 : Int, ...) : Int
  fun open(x0 : Char*, x1 : Int, ...) : Int
  fun openat(x0 : Int, x1 : Char*, x2 : Int, ...) : Int
end
