#!bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
cyan"\e[36m"
stop="\e[0m"

printf "$yellow"
figlet "ADVANCED"
echo "ADVANCE COMBINATIONS SCANNING TYPES AND STUFF"
printf "$stop"

echo "[1]Vulnscan Combinations"
echo "[2]Firewall Evasion Combinations"
echo "[3]Misc Combinations"
echo "[99]Exit"
read scanm2

if [ $scanm2 -eq 1 ]
then
printf "$cyan"
echo "Vulnscan Combinations"
printf "$stop"
cd $HOME
cd cnmap
cd vscan
bash vscan.sh

elif [ $scanm2 -eq 2 ]
then
printf "$cyan"
echo "Enter WebIP: "
read webip
echo "Enter (filename with extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T0 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $scanm2 -eq 3 ]
then
printf "$cyan"
echo "IPv6 Scanning"
echo "Enter IPv6: "
read ipv6
echo "Enter (filename with Extensions): "
read ext
cd $HOME
cd cnmap
cd output
nmap -6 $ipv6 > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $scanm2 -eq 99 ]
then
printf "$red"
echo "Exit Sequence Started"
echo "Exit[#____]"
sleep 1
echo "Exit[##___]"
sleep 1
echo "Exit[###__]"
sleep 1
echo "Exit[####_]"
sleep 1
echo "Exit[#####]"
sleep
exit
fi





