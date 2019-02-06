- setup server -
docker run -v /datavol/openvpn/etc:/etc/openvpn --log-driver=none --rm lukics/openvpn:armv7 ovpn_genconfig -u udp://lukic.ch:3000
docker run -v /datavol/openvpn/etc:/etc/openvpn --log-driver=none --rm -it lukics/openvpn:armv7 ovpn_initpki

- run server -
docker run -v /datavol/openvpn/etc:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN lukics/openvpn:armv7

- create user, extract cerificate -
docker run -v /datavol/openvpn/etc:/etc/openvpn --log-driver=none --rm -it lukics/openvpn:armv7 easyrsa build-client-full lukics nopass
docker run -v /datavol/openvpn/etc:/etc/openvpn --log-driver=none --rm lukics/openvpn:armv7 ovpn_getclient lukics > lukics.ovpn
