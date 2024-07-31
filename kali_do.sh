# Configure Kali Linux for DigitalOcean
# Source: https://www.kali.org/docs/cloud/digitalocean/
sudo apt update -y
sudo apt full-upgrade -y
sudo apt install cloud-init -y 
sudo sh -c "echo 'datasource_list: [ ConfigDrive, DigitalOcean, NoCloud, None ]' > /etc/cloud/cloud.cfg.d/99_digitalocean.cfg"
sudo systemctl enable cloud-init --now
sudo apt install -y openssh-server
sudo systemctl enable ssh.service --now
passwd -d root
mkdir -p /root/.ssh/
sudo apt autoremove -y
sudo apt autoclean -y
rm -rf /var/log/*
history -c
poweroff