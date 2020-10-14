#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  jnet.forumotion.com/t1699-lanbackup-2020-by-jnet#2624
#
# ./backup.sh 10.1.10.100   <<< Example also customise your default ip for eas of use!
#
defaultip="10.1.10.100"
local_username=$(whoami)
echo "Welcome To LanBackup Linux Documents Edition 2020 By J~Net"
remote_location="linux_mint_docs_backup"
if [ "$#" -eq  "0" ]
  then
    read -p "Enter Remote IP [$defaultip]: " ip
else
    ip=$1
fi
#
# $ cp -R <source_folder> <destination_folder>
echo "Type YES To Continue Backup... "
read proceed
if [ $proceed == 'YES' ] || [  $proceed == 'yes'  ]
then
    echo "Ok here we go, Please wait..."
    sudo rm -rf /mnt/docs_backup/Docs
    sudo mkdir /mnt/docs_backup/Docs
    time yes | sudo cp -Rnf /home/$USER/Documents/* /mnt/docs_backup/Docs
    echo "Type Ctrl C To Quit Menu."
else
    echo "Error!"
fi
echo "All Done!"
