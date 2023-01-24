#!/bin/bash
# Install jadx/jadx-gui on Ubuntu

echo ""

# Verify we are root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo "[+] Updating the system"
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt autoclean -y

echo "[+] Install zip and java"
apt install zip default-jdk -y

echo "[+] Pulling the most recent version of JADX"
JADX_VERSION=$(curl -s "https://api.github.com/repos/skylot/jadx/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo jadx.zip "https://github.com/skylot/jadx/releases/latest/download/jadx-${JADX_VERSION}.zip"

echo "[+] Extracting archive..."
unzip jadx.zip -d jadx-temp
echo "[+] Creating directory for executable"
sudo mkdir -p /opt/jadx/bin

echo "[+] Moving files where needed..."
sudo mv jadx-temp/bin/jadx /opt/jadx/bin
sudo mv jadx-temp/bin/jadx-gui /opt/jadx/bin
sudo mv jadx-temp/lib /opt/jadx

echo "[+] Creating command by setting PATH variable"
echo 'export PATH=$PATH:/opt/jadx/bin' | sudo tee -a /etc/profile
source /etc/profile

echo "[+] Checking jadx version... Press ENTER to continue"
jadx --version
read INPUT

echo "[+] Deleting downloaded files and directory"
rm -rf jadx.zip
rm -rf jadx-temp

echo "[+] Done :)"