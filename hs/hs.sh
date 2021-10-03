#!bin/bash
#SS7 HeartBleed Scanner
figlet "HeartBleed scanner"
echo "This Will Scan For HeartBleed Vulnerability"
echo "***OPTIONS***"
echo "[1]HeartBleed[What is This?]"
echo "[2]Scanner"
echo "[3]Exit"
echo "<HS_Scanner->Cnamp"
read opt

if [ $opt -eq 2 ]
then
echo "Enter WebIP: "
read webip
echo "Enter (filename with extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take A Break"
echo "Tip:Sharpen Skills In 127.0.0.1"
nmap -sV -p 443 --script=ssl-heartbleed $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $opt -eq 1 ]
then
echo "You Can Learn More About HeartBleed Attack Or SSL HeartBleed Vulnerability"
echo "https://heartbleed.com"
echo "The Above Site"
echo "No Worries Its Safe.Not Believeing Use VPN Hackers Style......"

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
echo "Please Check Menu"
cd $HOME
cd cnmap
cd hs
bash hs.sh
fi

