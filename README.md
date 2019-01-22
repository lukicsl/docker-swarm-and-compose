# docker-swarm

**Initiate networks**
    
    docker network create -d overlay --attachable monitor
    docker network create -d overlay --attachable proxy
    docker network create -d overlay --attachable glsnet
    
    docker network create  --config-only --subnet="192.168.3.0/24" --ip-range="192.168.3.2/24" -o parent=eth0 conf_net
    docker network create -d macvlan --scope swarm --config-from conf_net oh_vlan

**Utilities*
    
    https://jsonformatter.org/yaml-formatter#Sample
    
    https://www.shellcheck.net/
    
    http://www.csgnetwork.com/ipinfocalc.html
    
    https://stackedit.io/app#

