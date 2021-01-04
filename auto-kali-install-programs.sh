#!/bin/bash

echo ""
echo "This script will auto install all your programs. View the README file to see what gets installed."

echo ""
#updates system ready for packages download
echo "getting system ready for packages to be installed"
dpkg --configure -a
apt update -y
apt upgrade -y
apt install -f
apt clean
apt autoclean

#these packages install from universe and kali's normal repo's
#libwxbase3.0-0v5 & libwxgtk3.0-gtk3-0v5 are packages for veracrypt

apt install mat2 bleachbit curl deluge docker.io filezilla gufw git gimp gparted htop libreoffice-writer libwxbase3.0-0v5 libwxgtk3.0-gtk3-0v5 openvpn rkhunter snap snapd synaptic tilix virtualbox vlc unrar wget zip dialog python3-pip python3-setuptools zsh gnupg apt-transport-https -y

#install kali's top tools some of these are included by default
echo "installing kali default other tools. Some of these are included by default"
apt install kali-linux-default kali-tools-top10 -y

#enables and starts both the snapd and the snapd.apparmor services with the following command
systemctl enable --now snapd apparmor
systemctl enable docker --now
#add yourself to the docker group
usermod -aG docker $USER

#install veracrypt, you will need to change link for newer version
echo ""
echo "installing veraCrypt. PLEASE CHECK FOR NEW VERSION BEFORE INSTALLING."
wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Debian-10-amd64.deb
dpkg -i veracrypt*.deb
rm veracrypt*.deb

echo""
#install nordpass
echo "Installing snap packages"
snap install nordpass

#allows nordpass snap to connect to browsers
snap connect nordpass:password-manager-service

#install deju dup backup tool
echo "Installing Deja Dup Backup"
snap install deja-dup --classic

#install visual studio code
echo "Installing Visual Studio Code"
wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb
dpkg -i code*.deb
rm code*.deb

#automatically gets my other script's
echo "Grabbing other scripts: auto-update, rkhunter-check, kali-pentest-files"

wget https://raw.githubusercontent.com/AmirIqbal1/kali-pentest-files/main/kali-pentest-files.sh https://raw.githubusercontent.com/AmirIqbal1/auto-update-ubuntu-script/master/update.sh https://raw.githubusercontent.com/AmirIqbal1/rkhunter-script/master/rkhunter-check.sh

#automatically chmods above scripts
echo "chmodding those scripts"
chmod +x kali-pentest-files.sh update.sh rkhunter-check.sh

#install dangerzone
echo "installing dangerzone"
apt update -y
curl -L https://packagecloud.io/firstlookmedia/code/gpgkey | sudo apt-key add -

#change below link if you have different OS. Debain repo works with kali linux, just install docker with it (included above)
echo "deb https://packagecloud.io/firstlookmedia/code/debian/ buster main" | sudo tee -a /etc/apt/sources.list.d/firstlookmedia_code.list
apt update -y
apt install dangerzone -y

#fixes any errors and auto cleans packages downloaded/ not needed anymore
echo "auto cleaning now, and fixing any errors."
dpkg --configure -a
apt install -f
apt clean
apt autoclean
apt autoremove -y

echo ""
echo -e "\e[42mrkhunter has been installed, please configure it using link in README.md file."

echo ""
echo "All done! You can check above to see if any errors occured. A system reboot is recommended."
