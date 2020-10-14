#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
#
# ./shortcut.sh  then trust and run!
#
usf="$USER"
echo "Correct Username? $USER Enter for yes or type a username..."
read us
if [ -z "$us" ]
then
    usf="$USER"
else
    usf=$us          
fi
echo "
[Desktop Entry]
Name=LanBackup
Exec=nemo /home/$usf/Documents/Scripts/LanBackup_Full/
Comment=
Terminal=false
Icon=cinnamon-panel-launcher
Type=Application" > LanBackup.desktop

echo " Selected!"
sudo chown $usf LanBackup.desktop
echo "Now Make Trusted By Double Clicking New Icon"
sudo cp LanBackup.desktop /home/$usf/Desktop/LanBackup.desktop
sudo chown $usf /home/$usf/Desktop/LanBackup.desktop
