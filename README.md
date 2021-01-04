# kali-auto-install-programs
This bash script will auto install selected desktop programs for Kali Linux.

"chmod +x auto-kali-install-programs.sh" the file before starting, and make sure you run as root!

Get's my other scripts's (update.sh, pentest-files.sh)

Installs: mat2, bleachbit, curl, dangerzone, deluge, deja-dup (backup), docker.io, filezilla, gufw, git, gimp, gparted, htop, libreoffice-writer, libwxbase3.0-0v5, libwxgtk3.0-gtk3-0v5, nordpass, openvpn, rkhunter, snap, snapd, synaptic, tilix, virtualbox, vlc, unrar, wget, zip, dialog python3-pip, python3-setuptools, visual studio code, veracrypt, zsh.

Installs rkhunter (a rootkit hunter) which can be configured with the below link:

https://kifarunix.com/how-to-install-rkhunter-rootkit-hunter-on-ubuntu-18-04/

To remove vscode errors when using "apt update", go to "/etc/apt/sources.list.d/vscode.list" file and change to "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main"

Remember to setup zsh! and add this to your alias(nano /root/.zshrc)

alias lal='ls -al' alias update.sh=' dpkg --configure -a && apt update && apt upgrade -y && apt install -f && apt clean && apt autoclean && apt autoremove -y ' 

then (source /root/.zshrc) to apply changes.
