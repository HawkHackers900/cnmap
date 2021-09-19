#!bin/bash
#Foreground
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
cyan="\e[36m"
stop="\e[0m"
#Banner
printf "$red"
figlet Web-Scanning
printf "$stop"
printf "$red"
cowsay "Web-Scanning This Modules Will Scan Web-Servers and Analyse"
printf "$stop"
#IMPORTANT NOTE
printf "$red"
echo "ALL THE RESULTS AND OUTPUT ARE IN output DIRECTORYS"
printf "$stop"
#Options
#1.Normal IP Scanning
printf "$red"
echo "Normal IP-Scanning"
echo "[1]IP-Scanning"
#2.Scan Types
echo "Scanning Types"
echo "[2]Version Scanning"
echo "[3]Probe Scanning"
echo "[4]SYN Scan"
echo "[5]TCP Scan"
echo "[6]UDP Scan"
echo "[7]Flag Scan"
#3.Target Ports
echo "Target Ports"
echo "[8]Fragscan"
echo "[9]Port Range Scanner"
#4.Probing Options
echo "Probing Options"
echo "[10]Probe Scan"
echo "[11]Default Probe Scan"
echo "[12]Portlist Scanner"
echo "[13]ICMP Scan"
#5.Misc Options
echo "Misc Options"
echo "[14]Reverse IP Scan"
echo "[15]IPv6 Scan"
echo "[16]Aggresive Scan(-A)"
#6.Timing Options
echo "Timing Options"
echo "[17]Paranoid Scan"
echo "[18]Sneaky Scan"
echo "[19]Polite Scan"
echo "[20]Normal Scan"
echo "[21]Aggressive Scan"
echo "[22]Insane Scan"
echo "[99]Exit"
printf "$stop"
printf "$yellow"
echo "wscan(cnmap) "
printf "$stop"
read wscan

if [ $wscan -eq 1 ]
then
printf "$yellow"
echo "IP-Scanning"
printf "$stop"
echo "Enter WebIP: "
read webip
echo "Enter (filename With Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 2 ]
then
echo "Version Scan"
echo "NOTE!:This Will Scan The Version of Webserver and it Websites"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -sV $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 3 ]
then
echo "Probe Scan"
echo "NOTE!:This Will Only Dicover Hosts and it will not scan ports"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -sn $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 4 ]
then
echo "SYN Scan"
echo "NOTE!:SYN Scan Handshake Scan"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension)"
read ext
cd $HOME
cd cnmap
cd output
nmap -sS $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 5 ]
then
echo "TCP(Transmission Control Protocal) Scan"
echo "NOTE!:This is TCP Scanner"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -sT $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 6 ]
then
echo "UDP Scan"
echo "NOTE!:Scan For UDP"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -sU $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 7 ]
then
echo "FLAG Scan"
echo "NOTE!:Custom List of TCP in anyorder"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap --scanflags $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 8 ]
then
echo "Fragscan"
echo "NOTE!:Scan 100 Most Popular Ports"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -F $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 9 ]
then
echo "Port Range Scanner"
echo "NOTE!:Scan For ports Range"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
echo "Enter Port Ranges p1: "
read p1
echo "Enter Port Ranges p2: "
read p2
cd $HOME
cd cnmap
cd output
nmap -p $p1 $p2 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 10 ]
then
echo "Probe Scan"
echo "NOTE!:This Will Assume All The Hosts Up"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extention): "
read ext
cd $HOME
cd cnmap
cd output
nmap -Pn $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 11 ]
then
echo "Default Scan"
echo "NOTE!Thsi Will Scan Default Probe(TCP 80,445 & ICMP)"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -PB $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 12 ]
then
echo "Portlist Scanner"
echo "NOTE!:Check Whether Targets Are Up by Probing TCP"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -PS $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 13 ]
then
echo "ICMP Scan"
echo "NOTE!:ICMP is Ping Typed Scan"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -PE $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 14 ]
then
echo "Reverse IP Scan"
echo "NOTE!:It Disables Reverse IP Address Lookup"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -n $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 15 ]
then
echo "IPv6 Scan"
echo "NOTE!:Scan For IPv6 Address and Look For Host Status adn Reports back"
echo "Enter IPv6 Address: "
read ipv6
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -6  $ipv6 > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 16 ]
then
echo "Aggressive Scan(-A)"
echo "NOTE!:This Will Scan For OS Detection,Version Detection,Script Scanning and Traceroute and Resourceful stuff"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -A $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 17 ]
then
echo "Paranoid Scan"
echo "NOTE!:Paranoid Scan Very Slow But Its For Evasion"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T0 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 18 ]
then
echo "Sneaky Scan"
echo "NOTE!:Quite Slow Used as Evasion and Infiltration In Network Servers"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T1 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 19 ]
then
echo "Polite Scan"
echo "NOTE!:Slows Down to consume less Bandwidth runs 10 times slower than default"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T2 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 20 ]
then
echo "Normal Scan"
echo "NOTE!:Default Scan Mode"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T3 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 21 ]
then
echo "Aggressive Scan"
echo "Note!:fast and Reliable Scanning,But It Takes Resources"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T4 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 22 ]
then
echo "Insane Scan"
echo "NOTE!:Insane Scan Very Aggressive Scan likely overwhelm targets or miss open ports"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
nmap -T5 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $wscan -eq 99 ]
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
exit
printf "$stop"
fi


