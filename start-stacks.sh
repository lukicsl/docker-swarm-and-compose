docker stack deploy -c docker-flow/docker-flow-proxy.yml proxy
docker stack deploy -c sbserver/sbserver.yml sbserver
docker stack deploy -c grafana/grafana.yml grafana
docker stack deploy -c influxdb/influxdb.yml influxdb
docker stack deploy -c mosquitto/mqtt.yml mosquitto
docker stack deploy -c ebusd/ebusd.yml ebusd
docker stack deploy -c landroid/landroid.yml landroid
docker stack deploy -c openhab/openhab-2.4.0.yml openhab
