#!/bin/bash
#
#  ./backup.sh 192.168.1.30
#
#
echo "Welcome To LanBackup 2020 By J~Net"
#
remote_location="linux_mint_docs_backup"
# 192.168.1.30
if [ "$#" -eq  "0" ]
  then
    echo "Enter Remote IP"
    read ip
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
    yes | sudo cp -Rnf /mnt/docs_backup/Docs/* /home/$local_username/Documents/
    sudo chown -R $local_username/home/$local_username/Documents/
else
    echo "Error!"
fi
echo "All Done!"
