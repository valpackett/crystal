require "../netinet/in"
require "../stdint"

lib LibC
  fun htonl(x0 : UInt) : UInt
  fun htons(x0 : UShort) : UShort
  fun ntohl(x0 : UInt) : UInt
  fun ntohs(x0 : UShort) : UShort
  fun inet_addr(x0 : Char*) : InAddrT
  fun inet_ntoa(x0 : InAddr) : Char*
  fun inet_ntop(x0 : Int, x1 : Void*, x2 : Char*, x3 : SocklenT) : Char*
  fun inet_pton(x0 : Int, x1 : Char*, x2 : Void*) : Int
end
