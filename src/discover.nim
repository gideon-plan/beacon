## discover.nim -- mDNS/DNS-SD service discovery. Re-export module.
{.experimental: "strict_funcs".}
import discover/[mdns, dnssd, browse, announce]
export mdns, dnssd, browse, announce
