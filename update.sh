#!bin/bash
#THIS WILL UPDATE THE SCRIPT AND ALSO IT WILL SAVE THE SCANS IN HOME
figlet "Updating"
cowsay "Starting Script Update"
echo "***Please Confirm Below Statement***"
echo "The Scan Results Will Be Saved In Home Directory"
echo "[1]Yes"
echo "[2]No"
sleep 1
echo "<Confirm>"
read confirm

if [ $confirm -eq 1 ]
then
echo "Done Your Notes Will Be Saved As output named file directory in HOME"
cd $HOME
cd cnmap
cp output $HOME
cd $HOME
rm -fr cnmap
git clone https://github.com/HawkHackers900/cnmap.git
cd cnmap
chmod +x *
bash cnmap.sh

elif [ $confirm -eq 2 ]
then
echo "Notes Will Be Deleted :) "
echo "Thankyou for Confirmation"
cd $HOME
rm -fr cnmap
git clone https://github.com/HawkHackers900/cnmap.git
cd cnmap
chmod +x *
bash cnmap.sh

fi

