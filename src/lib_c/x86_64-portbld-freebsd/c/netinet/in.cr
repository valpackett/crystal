require "../sys/socket"
require "../stdint"

lib LibC
  IPPROTO_IP          =   0
  IPPROTO_IPV6        =  41
  IPPROTO_ICMP        =   1
  IPPROTO_RAW         = 255
  IPPROTO_TCP         =   6
  IPPROTO_UDP         =  17
  INADDR_ANY          = UInt32T.new(0x00000000)
  INADDR_BROADCAST    = UInt32T.new(0xffffffff)
  INADDR_NONE         = 0xffffffff
  INADDR_LOOPBACK     = UInt32T.new(0x7f000001)
  INET_ADDRSTRLEN     = 16
  INET6_ADDRSTRLEN    = 46
  IPV6_JOIN_GROUP     = 12
  IPV6_LEAVE_GROUP    = 13
  IPV6_MULTICAST_HOPS = 10
  IPV6_MULTICAST_IF   =  9
  IPV6_MULTICAST_LOOP = 11
  IPV6_UNICAST_HOPS   =  4
  IPV6_V6ONLY         = 27

  alias InPortT = UInt16T
  alias InAddrT = UInt32T

  struct InAddr
    s_addr : InAddrT
  end

  union In6AddrU6Addr
    __u6_addr8 : StaticArray(UInt8T, 16)
    __u6_addr16 : StaticArray(UInt16T, 8)
    __u6_addr32 : StaticArray(UInt32T, 4)
  end

  struct In6Addr
    __u6_addr : In6AddrU6Addr
  end

  struct SockaddrIn
    sin_len : UInt8T
    sin_family : SaFamilyT
    sin_port : InPortT
    sin_addr : InAddr
    sin_zero : StaticArray(Char, 8)
  end

  struct SockaddrIn6
    sin6_len : UInt8T
    sin6_family : SaFamilyT
    sin6_port : InPortT
    sin6_flowinfo : UInt32T
    sin6_addr : In6Addr
    sin6_scope_id : UInt32T
  end
end
