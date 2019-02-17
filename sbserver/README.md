           docker run -d \
                      -p 9000:9000 \
                      --net=host \
                      -p 3483:3483 \
                      -p 3483:3483/udp \
                      -v /datavol/sbserver/setings:/srv/squeezebox \
                      -v /datavol/sbserver/music:/srv/music \
                      lukics/sb-server:armv7
