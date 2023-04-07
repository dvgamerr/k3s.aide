# k3s.aide-pi

```bash
nano /boot/cmdline.txt
# cgroup_enable=memory swapaccount=1 cgroup_memory=1 cgroup_enable=cpuset
ssh-keygen -t ed25519
git clone git@github.com:dvgamerr/k3s.aide-pi.git aide
DOCKER_COMPOSE_VERSION="2.17.2"
DOCKER_COMPOSE_ARCH="aarch64"
sudo curl -L "https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-${DOCKER_COMPOSE_ARCH}" \
  -o /usr/bin/docker-compose
  
sudo iptables -F
sudo iptables -X
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo reboot
```
