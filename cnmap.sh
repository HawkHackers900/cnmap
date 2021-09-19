#!bin/bash
#Foreground
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
stop="\e[0m"
#------------------------------------------------------------------------------------
#Background
redb="\e[41m"
greenb="\e[42m"
yellowb="\e[43m"
blueb="\e[44m"
#------------------------------------------------------------------------------------
#Banner Coding
printf "$stop"
printf "$green"
echo "==========================================================================="
printf "$stop"
printf "$red"
figlet "C-Nmap"
printf "$stop"
printf "$yellow"
echo "Version [1.0]"
printf "$stop"
echo -e "By \e[41mHawk \e[42mHackers"
printf "$stop"
printf "$blue"
echo "==========================================================================="
printf "$stop"
#------------------------------------------------------------------------------------
#Options and Switches
printf "$red"
echo "***OPTIONS***"
echo "[1]Install Nmap"
echo "[2]Nmap Fundamentals"
echo "[3]Network Scanning {GUIDE}"
echo "[4]Web Scanning"
echo "[5]Scanner[Basic]&[Advance]"
echo "[6]Normal IP Scans"
echo "[7]Script Scans[In Progress]"
echo "[8]Vulnerability Scanning"
echo "[9]Exploiting Vunerabilities[In Progress]"
echo "[10]About"
echo "[11]help"
echo "[99]exit"
printf "$stop"
#-------------------------------------------------------------------------------------
#Input Taking
printf "$redb"
echo "Enter Only Option"
printf "$stop"
printf "$blue"
echo "<cnmap> "
printf "$stop"
read opt
#-------------------------------------------------------------------------------------
#if-else-elif

if [ $opt -eq 1 ]
then
echo "Installing Nmap"
cd $HOME
apt install nmap -y
cd cnmap
bash cnmap.sh

elif [ $opt -eq 2 ]
then
echo "Nmap Fundamental"
echo "just type q to exit from manual"
sleep 5
cd $HOME
man nmap
cd cnmap
bash cnmap.sh

elif [ $opt -eq 3 ]
then
echo "Network Scanning"
echo "All Available Nmap Scanning Types Guide"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh

elif [ $opt -eq 4 ]
then
echo "Web Scanning"
cd $HOME
cd cnmap
cd wscan
bash wscan.sh

elif [ $opt -eq 6 ]
then
echo "Normal IP Scanning"
cd $HOME
cd cnmap
cd nis
bash nis.sh

elif [ $opt -eq 8 ]
then
cd $HOME
cd cnmap
cd vscan
bash vscan.sh

elif [ $opt -eq 10 ]
then
printf "$green"
figlet "ABOUT"
printf "$stop"
printf "$green"
echo "Script By"
printf "$stop"
printf "$redb"
echo "HawkHackers"
printf "$stop"
printf "$blue"
echo "This Script Is Based On Bash Based Tool Or Script Which Will Use Nmap Switches and All The Possible and Always used Combinations,of Switches and Scanning Types for Evasion,Penetration,Aggressive etc..."
echo "This Tool is The Automation of Nmap -> Custom Nmap (cnmap)"
echo "if You Are Facing Problem We Are Making Tutorial In Vimeo"
echo "You Can Contact Us At Telegram"
echo "Telgram ID: @HawkHackers"
printf "$stop"

elif [ $opt -eq 11 ]
then
printf "$red"
echo "We Are Uploading Tutorials In Vimeo We will Update Soon Please Checkout in out Github Page for More Update and manual and Stuff..."

elif [ $opt -eq 99 ]
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
sleep 1
printf "$stop"
exit

elif [ $opt -eq 5 ]
then
cd $HOME
cd cnmap
cd scanner
bash scanner.sh

fi
