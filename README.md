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
    docker network create --config-only --subnet 192.168.3.0/24 --gateway 192.168.3.1 --ip-range 192.168.3.168/32 -o parent=eth0  oh-config
    docker network create --config-only --subnet 192.168.3.0/24 --gateway 192.168.3.1 --ip-range 192.168.3.169/32 -o parent=eth0  sb-config
   
    Removing /var/lib/docker/network/files/local-kv.db and restarting docker fixes the issue.
    
    docker run  --name samba-${HOSTNAME} -p 139:139 -p 445:445 -v /datavol:/datavol -d --rm lukics/samba:armv7 -s  "mount-vevedock-09;/datavol;yes;no;no" -u "lukics;.Techno." -p -n

**Utilities*
    
    https://jsonformatter.org/yaml-formatter#Sample
    
    https://www.shellcheck.net/
    
    http://www.csgnetwork.com/ipinfocalc.html
    
    https://stackedit.io/app#

   docker service create \
       --name portainer \
       --publish 9000:9000 \
       --replicas=1 \
       --constraint 'node.role == manager' \
       --mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock \
       --mount type=bind,src=//datavol/portainer,dst=/data \
       portainer/portainer \
       -H unix:///var/run/docker.sock
