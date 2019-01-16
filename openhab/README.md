

**sample docke run*
    
docker run         \
	--name openhab-2.3.0     --net=host        \
	-v /etc/localtime:/etc/localtime:ro         \
	-v /etc/timezone:/etc/timezone:ro         \
	-v /datavol/openhab/openhab_addons:/openhab/addons         \
	-v /datavol/openhab/openhab_conf:/openhab/conf         \
	-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
	-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin"    \
	-p 8080:8080 -p 9126:9126 -p 9125:9125    \
	-d         --rm         openhab/openhab:2.3.0

docker run         \
	--name openhab-2.4.0     --net=host        \
	-v /etc/localtime:/etc/localtime:ro         \
	-v /etc/timezone:/etc/timezone:ro         \
	-v /datavol/openhab/openhab_addons:/openhab/addons         \
	-v /datavol/openhab/openhab_conf:/openhab/conf         \
	-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
	-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin"    \
	-p 8080:8080 -p 9126:9126 -p 9125:9125    \
	-d         --rm         openhab/openhab:2.4.0

docker run         \
	--name openhab-2.5.0-snapshot  --net=host          \
	-v /etc/localtime:/etc/localtime:ro         \
	-v /etc/timezone:/etc/timezone:ro         \
	-v /datavol/openhab/openhab_addons:/openhab/addons         \
	-v /datavol/openhab/openhab_conf:/openhab/conf         \
	-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
	-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin"    \
	-p 8080:8080 -p 9126:9126 -p 9125:9125    \
	-d         --rm         openhab/openhab:2.5.0-snapshot


