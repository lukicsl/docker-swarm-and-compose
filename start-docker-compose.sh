docker-compose -f  openvpn/docker-compose.yml up -d
docker-compose -f  sbserver/docker-compose.yml up -d
docker-compose -f  grafana/docker-compose.yml up -d
docker-compose -f  influxdb/docker-compose.yml up -d
docker-compose -f  mosquitto/docker-compose.yml up -d
docker-compose -f  ebusd/docker-compose.yml up -d
docker-compose -f  landroid/docker-compose.yml up -d
export HOSTNAME
export OH_VERSION="2.5.0.M2"
docker-compose -f openhab-all-compose.yml up -d
docker ps
 
