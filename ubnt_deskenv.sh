# Install Ubuntu Desktop
sudo apt update -y 
sudo apt upgrade -y 
sudo apt dist-upgrade -y 
sudo apt install slim -y
sudo apt install ubuntu-desktop -y
sudo apt install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal -y
sudo apt install tightvncserver -y
sudo apt autoremove -y 
sudo apt autoclean -y
sudo reboot --
