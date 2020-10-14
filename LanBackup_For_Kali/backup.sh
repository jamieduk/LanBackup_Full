#!/bin/bash
#
#  ./backup.sh 10.10.1.1
#
#
local_username=$(whoami)
echo "Welcome To LanBackup Linux Documents Edition 2020 By J~Net"
#
remote_location="linux_mint_docs_backup"
if [ "$#" -eq  "0" ]
  then
    echo "Enter Remote IP"
    read ip
else
    ip=$1
fi
echo "Type YES To Continue Backup... "
read proceed
if [ $proceed == 'YES' ] || [  $proceed == 'yes'  ]
then
    echo "Ok here we go, Please wait..."
    sudo rmdir --ignore-fail-on-non-empty /mnt/docs_backup/Docs
    sudo mkdir /mnt/docs_backup/Docs
    yes | sudo cp -Rnf /home/$local_username/Documents/* /mnt/docs_backup/Docs
else
    echo "Error!"
fi
echo "All Done!"
