@echo off
echo [%time%] [WSL2] Find DCHP IPAddress...
wsl ip addr show eth0 | grep -oP "(?<=inet\s)\d+(\.\d+){3}" > ./wsl.ip.tmp
SET /P WSLIP=<./wsl.ip.tmp
SETX WSLIP "%WSLIP%" >nul
echo [%time%] [WSL2] Rancher Desktop WSL IP: %WSLIP%

netsh interface portproxy add v4tov4 listenport=6443 listenaddress=0.0.0.0 connectport=6443 connectaddress=%WSLIP% >nul
netsh interface portproxy add v4tov4 listenport=443 listenaddress=0.0.0.0 connectport=443 connectaddress=%WSLIP% >nul
netsh interface portproxy add v4tov4 listenport=80 listenaddress=0.0.0.0 connectport=80 connectaddress=%WSLIP% >nul

curl -k --resolve %WSLIP%:6443:127.0.0.1  https://100.101.41.10:6443/ping