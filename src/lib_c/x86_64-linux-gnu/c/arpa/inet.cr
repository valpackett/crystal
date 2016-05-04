require "../netinet/in"
require "../stdint"

lib LibC
  fun htonl(hostlong : UInt32T) : UInt32T
  fun htons(hostshort : UInt16T) : UInt16T
  fun ntohl(netlong : UInt32T) : UInt32T
  fun ntohs(netshort : UInt16T) : UInt16T
  fun inet_addr(cp : Char*) : InAddrT
  fun inet_ntoa(in : InAddr) : Char*
  fun inet_ntop(af : Int, cp : Void*, buf : Char*, len : SocklenT) : Char*
  fun inet_pton(af : Int, cp : Char*, buf : Void*) : Int
end
