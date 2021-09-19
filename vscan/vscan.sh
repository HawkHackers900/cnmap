#!bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e34m"
stop="\e[0m"

printf "$green"
figlet "Vulerability-Scanner"
cowsay "This Module Will Scan For Vulerabilities From A Website."
printf "$stop"

printf "$green"
echo "***OPTIONS***"
printf "$stop"
printf "$yellow"
echo "[1]VulnScan"
echo "[2]VulnScan + Paranoid Scan + Output"
echo "[3]Vulnscan + Portscan + Output"
echo "[4]Vulnscan + Version Scan + Output"
echo "[5]Vulnscan + Sneaky Scan + Output"
echo "[6]Vulnscan + Polite Scan + Output"
echo "[7]Vulnscan + Insane Scan + Output"
echo "[8]Vulnscan + Aggressive Scan + Output"
echo "[9]Vulnscan + Verbosity Scan + Scantype + Timing Options +Output"
echo "[99]Exit"
echo "<vscan(cnmap)>"
printf "$stop"
read vscan
printf "$yellow"
echo "<vscan(cnmap)>"
read vscan

if [ $vscan -eq 1 ]
then
echo "Vulnscan"
echo "Vuln Script With Nmap"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take A Coffee Break"
echo "Security Tip:Lock Your Terminal Just In Case"
nmap --script=vuln $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 2 ]
then
echo "Vulnscan + Paranoid Scan + Output"
echo "Paranoid Scan very Slow Used IDS Evasion"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Close Your Webcam Just in case"
nmap --script=vuln -T0 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 3 ]
then
echo "Vulnscan + Portscan + Output"
echo "Portscan will scan for Vulnerability in Specific Port"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
echo "Enter Port(Number): "
read port
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Close Your Webcam Just in case"
nmap --script=vuln $port $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 4 ]
then
echo "Vulnscan + Version Scan + Output"
echo "Version Scan and Vulnerability Scan Too."
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Use VPN for Anonymity"
nmap --script=vuln -sV $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 5 ]
then
echo "Vulnscan + Sneaky Scan + Output"
echo "Sneaky Scan IDS Evasion and Undetectable Scan"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Use Proxychains For Scanning hmmmm"
nmap --script=vuln -T1 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 6 ]
then
echo "Vulnscan + Polite Scan + Output"
echo "Polite Scan Consume Less Bandwidth runs 10 times slower"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Change Password Regularly"
nmap --script=vuln -T2 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 7 ]
then
echo "Vulnscan + Insane Scan + Output"
echo "Insane Scan Very Aggressive But It may Overwhelm targets"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Hey Hacker Loves Coffee :) "
nmap --script=vuln -T5 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 8 ]
then
echo "Vulnscan + Aggressive Scan + Output"
echo "Aggressive Scan Will Overwhelm Targets and Can get caught"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:Close Your Webcam Just in case"
nmap --script=vuln -T4 $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 9 ]
then
echo "Vulnscan + Verbosity Scan + ScanType + Timing Options + Output"
echo "Paranoid Scan very Slow Used IDS Evasion"
echo "Enter WebIP: "
read webip
echo "Enter (filename with Extension): "
read ext
echo "Enter Verbosity level(-vv1,2,3,4,5): "
read verbosity
echo "Enter Scantype (-sS,-sT,-sV): "
read scantype
echo "Enter Timing Options: "
read timing
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Security tip:By The Way Do You Love Coffee"
nmap --script=vuln $verbosity $scantype $timing $webip > $ext
cd $HOME
cd cnmap
bash cnmap.sh

elif [ $vscan -eq 99 ]
then
printf "$red"
echo "Exit Sequence Started"
sleep 1
echo "Exit[#____]"
sleep 1
echo "Exit[##___]"
sleep 1
echo "Exit[###__]"
sleep 1
echo "Exit[####_]"
sleep 1
echo "Exit[#####]"
printf "$stop"
sleep 1
exit

else
echo "Invalid Entry Please Check Options and Enter Perfectly" 
cd $HOME
cd cnmap
cd vscan
bash vscan.sh
fi

