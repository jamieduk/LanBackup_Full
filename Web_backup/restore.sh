#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# ./restore.sh 10.1.10.100   <<< Example also customise your default ip for eas of use!
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
echo "Type YES To Continue Restore... "
read proceed
if [ $proceed == 'YES' ] || [  $proceed == 'yes'  ]
then
    echo "Ok here we go, Please wait..."
    time sudo cp -Rnf /mnt/web_backup/2020/* /var/www
    sudo chown -R www-data /var/www
else
    echo "Error!"
fi
echo "All Done!"
