#!bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[36m"
stop="\e[0m"

printf "$green"
figlet "Scanner"
printf "$stop"
echo -e "\e[41mScanning \e[46mCombinations"
printf "$stop"

printf "$red"
echo "Here We Have Two Options Basic and Advance Scanning"
echo "1.Basic Scanning:Normal and Single Type Scanning Available"
echo "2.Advance:Maximum Possible Combinations With Switches and Options and ScanTypes"
echo "[1]Basic"
echo "[2]Advance"
echo "[99]Exit"
printf "$stop"
read scanner

if [ $scanner -eq 1 ]
then
printf "$green"
echo "Basic Scanning Type"
printf "$stop"
cd $HOME
cd cnmap
cd wscan
bash wscan.sh

elif [ $scanner -eq 2 ]
then
printf "$green"
echo "Advance Combinations"
printf "$stop"
cd $HOME
cd cnmap
cd scanm2
bash scanm2.sh

fi

