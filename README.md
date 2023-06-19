# aide-pi

```bash
sudo apt update && sudo apt upgrade -y
```

### Install docker & docker-compose
```bash
nano /boot/cmdline.txt
# cgroup_enable=memory swapaccount=1 cgroup_memory=1 cgroup_enable=cpuset
ssh-keygen -t ed25519
git clone git@github.com:dvgamerr/k3s.aide.git aide
DOCKER_COMPOSE_VERSION="2.17.2"
DOCKER_COMPOSE_ARCH="aarch64"
sudo curl -L "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-${DOCKER_COMPOSE_ARCH}" \
  -o /usr/bin/docker-compose
```
### Disabled Firewall in RasPi
```bash
sudo iptables -F
sudo iptables -X
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo reboot
```

### Install AdGuardHome
```bash
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -v
sudo ln -s /opt/AdGuardHome/AdGuardHome /usr/bin/adguard

# check status
adguard -s status

# Check
host doubleclick.net
# Excpect Result
# > doubleclick.net has address 0.0.0.0
```

```bash
docker run -d --name influxdb -p 8086:8086 -v /data/db-influx:/var/lib/influxdb2 influxdb:alpine
```
# aide-opc
