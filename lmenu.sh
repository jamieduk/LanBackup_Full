#!/bin/bash
# (c) J~Net 2020
# jnet.forumotion.com/t1699-lanbackup-2020-by-jnet#2624
#
# ./menu.sh
#
#path="/home/$USER/Documents/Scripts/LanBackup_Full"
#
#
echo "Welcome To J~Net Lan Backup App Main Menu 2020 Pick An Option..."
path="/home/$USER/Documents/Scripts/LanBackup_Full" # .
select fname in $path/*; #.sh
do
    echo you picked $fname \($REPLY\)
    cd $fname
    bash menu.sh
    break;
done
bash menu.sh
