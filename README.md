## lazyScripts

Quick scripts for installation of various projects, tools, and fixing errors. 

**Make sure you `chmod +x {/path/to/file}.sh` so that they can run.**

**_This code is distributed as is and if you don't trust it, don't use it_**

### What each script does:

#### gitLabPiInstall.sh:
This script will install gitLab onto your RaspberryPi. Have your own git repository at home if you want to keep things private!

#### elkStack.sh:
This script will install elkStack for your Linux machine. Although it won't configure it for you... just install it.

#### piHoleInstall.sh
This script will install piHole for your raspberryPi. It helps block ads on your personal network. It won't configure it for you, that's up to you.

#### phrackDownload.sh
This script will download all of [Phrack](http://phrack.org/) magazine and put them in nice folders to easily access. This script does this in probably the most least efficient way possible but... it works! Please enjoy!

#### piEbookServer.sh
This script is from 2 raspberry Pi projects [RaspberryPi Ebook Storage](https://pimylifeup.com/raspberry-pi-ebook-server/) and [Install Nginx on RaspberryPi](https://pimylifeup.com/raspberry-pi-nginx/). This script makes the install simple. Keep in mind it just installs dependencies, it doesn't do the config for you...

#### piOpenVPNServer.sh
This script is from a raspberry Pi project [RaspberryPiOpenVPNServer](https://pimylifeup.com/raspberry-pi-vpn-server/). This script will install the dependencies and will pull the script to start installing the VPN software. The rest is up to you...

#### addWhitelist.sh
This script will add domains in a file called whitelist.txt parse line by line and add the domain to the piHole whitelist. Once it hits the bottom of the list it will restart the DNS service and reboot the Pi.

#### gsmSniffingDependencies.sh
Installs files and applications so that the HackRF can be used to sniff GSM traffic.

#### vulscanNmapUpdater.sh
Used to pull CSV's for the vulnScan NMAP vulnerability scanner [vulscan](https://github.com/scipag/vulscan) please make sure to run this script in the same directory as the cloned git repo of vulscan.

#### installMetasploit.sh
Used to install [Metasploit](https://www.metasploit.com/). 

#### installAsterisk.sh
Installs packages required for an asterisk server, installs asterisk, and install files to be paired with GoTrunk from the following [repository](https://github.com/GoTrunk/asterisk-config.git).

#### goPhishPostfixInstall.sh
Install packages for [GoPhish](https://getgophish.com/), [CertBot](https://certbot.eff.org/), and [Postfix](http://www.postfix.org/) for the creation of a Phishing server.

#### autoSnapper.sh
Used to automatically snapshot a virtual machine in VirtualBox this script was copied from the following article [TechRepublic](https://www.techrepublic.com/article/how-to-automate-virtualbox-snapshots-with-the-vboxmanage-command/).

#### grayLogInstall.sh
Install GrayLog, ElasticSearch, and MangoDB on Ubuntu 18.04 using install instructions from [itzgeek](https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-graylog-on-ubuntu-16-04.html). The comments at the top can be used to retain iptables rules and reroute ports to syslog UDP common port.

#### badchar.sh
Generate the full list of bad characters for BOF. Thank you to @notsoshant and the article where the script is posted [here](https://medium.com/@notsoshant/windows-exploitation-dealing-with-bad-characters-quickzip-exploit-472db5251ca6).

#### Folder: sprocketDropbox
Used to assist with the installation and configuration of the Sprocket Security Dropbox for penetration tests. The code is from them and not all my own idea, the referneces can be seen below.
* [Part 1](https://www.sprocketsecurity.com/blog/penetration-testing-dropbox-setup-part1)
* [Part 2](https://www.sprocketsecurity.com/blog/penetration-testing-dropbox-setup-part2)
* [Part 3](https://www.sprocketsecurity.com/blog/penetration-testing-dropbox-setup-part3)

#### RussianRoulette.sh
Play a classic game of Russian Roulette with your file system. Thank you @tyr4n7. Original Tweet [here](https://twitter.com/tyr4n7/status/1361374989077934081).

#### jadx_install.sh
Install the jadx command and the jadx-gui tool for Ubuntu. Thanks to **Lindevs** the original article with these commands can be found [here](https://lindevs.com/install-jadx-on-ubuntu/).

#### fix_corrupt_zsh.sh
Fix a corrupt ZSH file. Original source of the commands is [here](https://shapeshed.com/zsh-corrupt-history-file/).

#### kali_do.sh
Configuration of a Kali Linux instance within Digital Ocean. Original documentation for the commands can be found [here](https://www.kali.org/docs/cloud/digitalocean/).

#### ubnt_deskenv.sh
Installation of a Ubuntu desktop environment along with TightVNC Server.

#### vbox_clip.sh
Attempt to restart VirtualBox Guest Additions clipboard service. 