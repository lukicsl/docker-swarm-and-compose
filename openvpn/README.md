docker run -v /datavol/openvpn/etc:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN lukics/openvpn:armv7
