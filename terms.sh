#!bin/bash
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
cyan="\e[36m"
stop="\e[0m"

printf "$red"
echo "TERMS AND CONDITIONS"
printf "$stop"

printf "$green"
echo "We Are Not Responsible For The Act Or Damage you caused by This Tool to Any Organisation nor any company website"
echo "This Tool is For Educational Purpose Only Use This Tool For Testing Purpose Not To harm or cause any trouble to website or Organisation without permission of the Owner"
echo "This Tool Will Update Oftenly And Try To Get Updated.New Combinations and More Stuff In Progress just Wait To Get The Best Combo Scan"
echo "More Importantly This Tool Is Scripted by HawkHackers"
echo "DONT COPY THE CODE NOR IDEA IF YOU ARE A SCRIPT KIDEE THEN LEARN TO CODE NEVER COPY OR PASTE STUFF,IF YOU ARE NOT THE TRUE OWNER"
echo "If You Started Using This Tool Without Agreeing Terms and Conditions then We Will Consider You Agree With It.. Since You Are Using This Tool"
printf "$stop"

#Confirm This
printf "$yellow"
echo "Enter"
echo "[1]Yes"
echo "[2]No"
read opt

if [ $opt -eq 1 ]
then
cd $HOME
cd cnmap
echo "Yes I Agree For The Terms and Conditions" > terms.txt

else
echo "If You Not Agree For Agreement Or Terms then Dont Use This Tool" > warn.txt

fi


