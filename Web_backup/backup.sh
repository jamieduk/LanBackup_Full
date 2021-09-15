#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  jnet.forumotion.com/t1699-lanbackup-2020-by-jnet#2624
#
# ./backup.sh 10.1.10.100   <<< Example also customise your default ip for eas of use!
#
defaultip="10.1.10.100"
echo "Welcome To LanBackup 2020 Web Edition By J~Net"
remote_location="web_server_backup"
if [ "$#" -eq  "0" ]
  then
    read -p "Enter Remote IP [$defaultip]: " ip
else
    ip=$1
fi
echo "You chose $ip"
echo "Type YES To Continue Backup... "
read proceed
if [ $proceed == 'YES' ] || [  $proceed == 'yes'  ]
then
    echo "Ok here we go, Please wait..."
    sudo rm -rf /mnt/web_backup/html/
    sudo rm -rf /mnt/web_backup/radio/
    #sudo rmdir -r --ignore-fail-on-non-empty /mnt/web_backup/
    time yes | sudo cp -Rnf /var/www/* /mnt/web_backup
    echo "Type Ctrl C To Quit Menu."
else
    echo "Error!"
fi
echo "All Done!"
