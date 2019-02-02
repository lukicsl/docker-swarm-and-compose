# docker-swarm

**Initiate networks**
    
    docker network create -d overlay --attachable monitor
    docker network create -d overlay --attachable proxy
     
    docker network create --config-only --subnet 192.168.3.0/24 --gateway 192.168.3.1 --ip-range 192.168.3.168/32 -o parent=eth0  oh-config
    docker network create --config-only --subnet 192.168.3.0/24 --gateway 192.168.3.1 --ip-range 192.168.3.169/32 -o parent=eth0  sb-config

    docker network create -d macvlan  --scope swarm --config-from oh-config oh-macvlan
    docker network create -d macvlan  --scope swarm --config-from sb-config sb-macvlan    
    
    error during run, eth0, etc:
    sudo rm /var/lib/docker/network/files/local-kv.db
    sudo systemctl restart  docker.service
    
    Removing /var/lib/docker/network/files/local-kv.db and restarting docker fixes the issue.

**Utilities*
    
    https://jsonformatter.org/yaml-formatter#Sample
    
    https://www.shellcheck.net/
    
    http://www.csgnetwork.com/ipinfocalc.html
    
    https://stackedit.io/app#

