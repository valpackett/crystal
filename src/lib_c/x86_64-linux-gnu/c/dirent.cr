require "./sys/types"

lib LibC
  type DIR = Void

  struct Dirent
    d_ino : InoT
    d_off : Long
    d_reclen : UShort
    d_type : Char
    d_name : StaticArray(Char, 256)
  end

  fun closedir(dirp : DIR*) : Int
  fun opendir(name : Char*) : DIR*
  fun readdir(dirp : DIR*) : Dirent*
  fun readdir_r(dirp : DIR*, entry : Dirent*, result : Dirent**) : Int
  fun rewinddir(dirp : DIR*) : Void
end
