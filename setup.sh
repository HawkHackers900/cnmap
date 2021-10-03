#!bin/bash
stop="\e[0m"
apt update && apt upgrade -y
apt install figlet -y
apt install cowsay -y
apt install ruby -y
gem install lolcat -y
apt install man -y
echo -e "\e[34m All The Required Packages Installed"
printf "$stop"
figlet "DONE"
