#!bin/bash
figlet "Normal IP Scanning"
cowsay "cnmap"
echo "***OPTIONS***"
echo "[1]IP Scanning"
echo "[2]IP Tracing"
echo "[99]Exit"
read nis

if [ $nis -eq 1 ]
then
echo "IP Scanning"
echo "Enter IP: "
read ip
echo "Enter (filename with Extension): "
read ext
echo "Scanning Started Take a Break"
echo "Take A Break Have a Coffee"
cd $HOME
cd cnmap
cd output
nmap $ip > $ext
cd $HOME
cd cnmap
cd nis
bash nis.sh

elif [ $nis -eq 2 ]
then
echo "IP Tracing"
echo "Enter IP: "
read ip
echo "Enter (filename with Extesion): "
read ext
cd $HOME
cd cnmap
cd output
echo "Scanning Started Take a Coffee Break"
echo "Hacker Loves Coffee,By The Way Do You Love Coffee"
curl -LO https://ipinfo.io/$ip > $ext
cd $HOME
cd cnmap
cd nis
bash nis.sh

elif [ $nis -eq 99 ]
then
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
sleep 1
exit

else
echo "Please Enter Valid Option(1 or 2) From Menu"
sleep 3
cd $HOME
cd cnmap
cd nis
bash nis.sh

fi
