require "./sys/types"

lib LibC
  CLOCKS_PER_SEC = 1000000

  struct Tm
    tm_sec : Int
    tm_min : Int
    tm_hour : Int
    tm_mday : Int
    tm_mon : Int
    tm_year : Int
    tm_wday : Int
    tm_yday : Int
    tm_isdst : Int
    tm_gmtoff : Long
    tm_zone : Char*
  end

  struct Timespec
    tv_sec : TimeT
    tv_nsec : Long
  end

  fun clock : ClockT
  fun gmtime_r(x0 : TimeT*, x1 : Tm*) : Tm*
  fun localtime_r(x0 : TimeT*, x1 : Tm*) : Tm*
  fun mktime(x0 : Tm*) : TimeT
  fun time(x0 : TimeT*) : TimeT
  fun tzset : Void
  fun timegm(x0 : Tm*) : TimeT

  $daylight : Int
  $timezone : Long
  $tzname : Char**
end
