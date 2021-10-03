#!bin/bash
#THIS IS MAC ADDRESS SPOOFING SCRIPT.....
#cnmap PROPERTY......
#IF YOU CHANGE THIS SCIPT...THEN YOU ARE A SCRIPT KIDDEE..
figlet "MAC_Spoofing"

echo "Mac Spoofing Scan,This Will Scan With Other MAC Address Which You Provide.."
echo "If You Dont Have a MAC Address Then Dont Worry Select Random MAC Option"
echo "***OPTIONS***"
echo "[1]Custom MAC-Address"
echo "[2]Random MAC-Address"
echo "[3]exit"
read opt

if [ $opt -eq 1 ]
then
echo "Enter WebIP: "
read webip
echo "Enter (filename with extension): "
read ext
echo "Custom MAC-Address"
echo "Buddy Enter The Desired MAC-Address"
echo "Enter You Desired MAC: "
read mac
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Break"
echo "Tip:Hacker Loves Coffee :) "
nmap --spoof-mac $mac $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $opt -eq 2 ]
then
echo "Random MAC"
echo "Enter WebIP: "
read webip
echo "Enter (filename with extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Break"
echo "Tip:Hacker Love To Read Books"
nmap --spoof-mac 0 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $opt -eq 3 ]
then
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
exit

else
echo "Just Check Menu"
cd $HOME
cd cnmap
cd mac
bash mac.sh

fi

