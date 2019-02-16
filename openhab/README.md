

**sample docke run*
    
	docker run         \
		--name openhab-2.3.0     --net=host        \
		-v /etc/localtime:/etc/localtime:ro         \
		-v /etc/timezone:/etc/timezone:ro         \
		-v /datavol/openhab/openhab_addons:/openhab/addons         \
		-v /datavol/openhab/openhab_conf:/openhab/conf         \
		-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
		-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin -Xms400m -Xmx650m"    \
		-e "CRYPTO_POLICY=unlimited"    \
		-p 8080:8080 -p 9126:9126 -p 9125:9125    \
		-d         --rm         openhab/openhab:2.3.0

	docker run         \
		--name openhab-2.4.0     --net=host        \
		-v /etc/localtime:/etc/localtime:ro         \
		-v /etc/timezone:/etc/timezone:ro         \
		-v /datavol/openhab-2.4.0/openhab_addons:/openhab/addons         \
		-v /datavol/openhab-2.4.0/openhab_conf:/openhab/conf         \
		-v /datavol/openhab-2.4.0/openhab_userdata:/openhab/userdata         \
		-e "CRYPTO_POLICY=unlimited"    \
		-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin -Xms400m -Xmx650m"    \
		-p 8080:8080 -p 9126:9126 -p 9125:9125    \
		-d         --rm         openhab/openhab:2.4.0

	docker run         \
		--name openhab-2.5.0      --net=host      \
		-v /etc/localtime:/etc/localtime:ro         \
		-v /etc/timezone:/etc/timezone:ro         \
		-v /datavol/openhab-2.5.0/openhab_addons:/openhab/addons         \
		-v /datavol/openhab-2.5.0/openhab_conf:/openhab/conf         \
		-v /datavol/openhab-2.5.0/openhab_userdata:/openhab/userdata         \
		-e "CRYPTO_POLICY=unlimited"    \
		-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin -Xms400m -Xmx650m"    \
		-p 8080:8080 -p 9126:9126 -p 9125:9125    \
		-d         --rm         openhab/openhab:2.5.0-snapshot
		
	docker run         \
		--name openhab-2.5.0      --net=host      \
		-v /etc/localtime:/etc/localtime:ro         \
		-v /etc/timezone:/etc/timezone:ro         \
		-v /datavol/openhab-2.5.0.M1/openhab_addons:/openhab/addons         \
		-v /datavol/openhab-2.5.0.M1/openhab_conf:/openhab/conf         \
		-v /datavol/openhab-2.5.0.M1/openhab_userdata:/openhab/userdata         \
		-e "CRYPTO_POLICY=unlimited"    \
		-e "EXTRA_JAVA_OPTS=-Duser.timezone=Europe/Berlin -Xms400m -Xmx650m"    \
		-p 8080:8080 -p 9126:9126 -p 9125:9125    \
		-d         --rm         openhab/openhab:2.5.0.M1


