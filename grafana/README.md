# Grafana

**MSC**

    !! IMPORTANT !!
    set environment variable 
    DOMAIN=vevedock
    before deplying stack
    
**MSC**
    
http://docs.grafana.org/installation/docker/

    Default Paths
    The following settings are hard-coded when launching the Grafana Docker container and can only be overridden using environment variables, not in conf/grafana.ini.

    Setting	Default value
    GF_PATHS_CONFIG	/etc/grafana/grafana.ini
    GF_PATHS_DATA	/var/lib/grafana
    GF_PATHS_HOME	/usr/share/grafana
    GF_PATHS_LOGS	/var/log/grafana
    GF_PATHS_PLUGINS	/var/lib/grafana/plugins
    GF_PATHS_PROVISIONING	/etc/grafana/provisioning
    
**sample docke run*
    
	docker run \
	--name grafana     --net=host        \
	-v /datavol/grafana/etc:/etc/grafana        \
	-v /datavol/grafana/lib://var/lib/grafana        \
	-p 3000:3000     \
	-d --rm lukics/grafana:5.4.2


