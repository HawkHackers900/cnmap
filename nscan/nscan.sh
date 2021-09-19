#!bin/bash
#MAIN PART OF CNMAP TOOL AND THIS IS MODULE-3
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
stop="\e[0m"
printf "$red"
figlet "Network-Scan"
printf "$stop"
printf "$red"
cowsay "Guys This is GUIDE for Nmap Not Like a Book It Will Give Basic Idea Dont Worry!"
printf "$stop"
printf "$yellow"
echo "***OPTIONS***"
echo "help [To Get Help And What This Module Does]"
echo "[1]Basic Syntax"
echo "[2]Target Specification"
echo "[3]Target Port"
echo "[4]Probing Options"
echo "[5]Scan Types"
echo "[6]Timing Options"
echo "[7]Output Formats"
echo "[8]Misc Options"
echo "[99]Exit"
printf "$stop"
echo "<Network-Scan(cnmap)> "
read ns
if [ $ns -eq 1 ] #1Basic-Syntax
then
echo "Enter Options Only"
printf "$blue"
echo " nmap [ScanTypes] [Options] [Target]"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 2 ] #2Target-Specification
then
printf "$blue"
echo "This is Just Like a Manual Guide"
echo "IPv4:127.0.0.1"
echo "IPv6:ABCD:CCDD::FF%eth0"
echo "Hostname:www.example.com"
echo "Ip address ranging 192.168.0-255.0-255"
echo "CIBR Blocks: 192.168.20.12/56 This Will Scan untill last number be 56"
echo "if you want to scan A Big List Use this switch"
echo "nmap -iL (filename) here -iL stand for list"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 3 ] #3Target-Ports
then
printf "$blue"
echo "-F Scan 100 Most Popular Ports"
echo "-p<port-1> -> <port-2> Specific port Ranges"
echo "-r Scan Linear"
echo "--top-ports <n> Scan Most Popular Ports for open ports and Filtered ports"
echo "-p <Specific ports>"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 4 ] #4Probing Options
then
printf "$blue"
echo "Probing Options Guide In Nmap"
echo "-Pn Condiders All Host are up"
echo "-PB Default Probes For (TCP 80 ICMP)"
echo "-Ps <Portlist>"
echo "-Pe ICMP request"
echo "-Pp Timestamp Request"
echo "-Pm ICMP Netmask"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 5 ] #5Scan Types
then
printf "$blue"
echo "Scanning Types Guide"
echo "-sn Probe Scan"
echo "-sS SYN Scan First Handshake"
echo "-sT TCP Scan"
echo "-sU UDP Scan"
echo "-sV Version Scan For Servers"
echo "-O Operating System Detection Of The Service or Server"
echo "--scanflags Scan For Flag in CTF"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 6 ]
then
printf "$blue"
echo "Timing Options Guide"
echo "-T0 (paranoid Scan) Very Slow Scan for IDS Evasions"
echo "-T1 (Quite Slow) IDS Evasion"
echo "-T2 (Polite Scan) 10 Times Slower But effective to infiltrate network and Servers"
echo "-T3 (Default Scan) mention or Not Doesnt matter is Normal"
echo "-T4 (Aggressive) Fast Scan May Overwhelm Target and Sometimes Server detect and Blocks"
echo "-T5 (Insane Scan) Very Resource Consuming"
echo "-vv 1 -> 4 Verbosity Scan As You Decrease Time The More You Get Caught and Blocked"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 7 ]
then
printf "$blue"
echo "Output Formats and Methods Guide For Nmap"
echo "-oN Standard Output"
echo "-oG Grappable Format"
echo "-oX XML format"
echo "-oA (Grappable XML txt etc) "
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 8 ]
then
printf "$blue"
echo "Misc Options"
echo "-n Disable Reverse IP"
echo "-6 IPv6 Scan"
echo "-A Use Services OS,Version Detection,Traceroute etc (Fast Too)"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
elif [ $ns -eq 99 ]
then
printf "$green"
echo "Exit Sequence Started"
echo "exit [#____]"
sleep 1
echo "exit [##___]"
sleep 1
echo "exit [###__]"
sleep 1
echo "exit [####_]"
sleep 1
echo "exit [#####]"
printf "$stop"
exit
else
printf "$red"
echo ">>HELP<<"
echo "1.Guys This Is A Guide For Nmap it Contains All Switches"
echo "2.Dont Worry guys This is Not Like a Book its is Simple Reference guide"
echo "3.You Can Watch Complete Guide On C-Nmap Tool In My Vimeo Video"
echo "4.Guys See If You Want to Scan Then can see other options in cnmap tool Main Menu"
echo "5.I Hope This Helped"
printf "$stop"
cd $HOME
cd cnmap
cd nscan
bash nscan.sh
fi
