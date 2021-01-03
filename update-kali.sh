#!/bin/bash 
dpkg --configure -a
apt update -y
apt upgrade -y
apt install -y
apt clean
apt autoclean
apt autoremove -y