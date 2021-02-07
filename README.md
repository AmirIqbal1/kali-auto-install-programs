# kali-auto-install-programs
This bash script will auto install selected desktop programs for Kali Linux.

"chmod +x auto-kali-install-programs.sh" the file before starting, and make sure you run as root!

Get's my other scripts's (pentest-files.sh)

Installs: mat2, bleachbit, curl, dangerzone, deluge, deja-dup (backup), docker.io, filezilla, gufw, git, gimp, gparted, htop, libreoffice-writer, libwxbase3.0-0v5, libwxgtk3.0-gtk3-0v5, nordpass, openvpn, rkhunter, snap, snapd, synaptic, tilix, virtualbox, vlc, unrar, wget, zip, dialog python3-pip, python3-setuptools, visual studio code, veracrypt, zsh.

############################

Installs rkhunter (a rootkit hunter) which can be configured with the below link:

https://kifarunix.com/how-to-install-rkhunter-rootkit-hunter-on-ubuntu-18-04/

########################################################

To remove vscode errors when using "apt update", go to "/etc/apt/sources.list.d/vscode.list" file and change to "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main"

############################

Remember to setup zsh! and add this to your alias(nano /root/.zshrc) & in your user home folder!

CHANGE $USER TO YOUR USERNAME.

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias aptupdate='dpkg --configure -a && apt update && apt upgrade -y && apt install -f && apt clean && apt autoclean && apt autoremove -y'
alias lscript='source /home/amir/programs/lscript/l' 
alias sudo='sudo -s' 
alias sherlock='python3 /home/amir/programs/sherlock/sherlock/sherlock.py' 
alias servicestat='service --status-all'
alias sublister='python3 /home/amir/programs/Sublist3r/sublist3r.py'

then (source ~/.zshrc) & (source /home/$USER/.zshrc) to apply changes. Don't forget to change "$USER" to your username.
