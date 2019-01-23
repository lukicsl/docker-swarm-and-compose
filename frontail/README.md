

**sample docke run*
    
	docker run \
	--name frontail     --net=host        \
	-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
	-p 9001:9001     \
	-d --rm lukics/frontail:linux-arm32v7-latest \
	/openhab/userdata/logs/events.log  /openhab/userdata/logs/openhab.log

