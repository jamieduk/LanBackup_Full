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
sudo mv LanBackup.desktop /home/$usf/Desktop/LanBackup.desktop
sudo chown $usf /home/$usf/Desktop/LanBackup.desktop
#
echo "
#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Menu
Comment=menu starter
Terminal=true
Icon=cinnamon-panel-launcher
Type=Application
Name[en_GB]=Menu"  > Menu.desktop
echo "Exec=gnome-terminal -x /home/$usf/Documents/Scripts/LanBackup_Full/Web_backup/menu.sh" >> Menu.desktop
#
sudo chown $usf Menu.desktop
