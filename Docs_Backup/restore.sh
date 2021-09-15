#!/bin/bash
#
#  ./backup.sh 192.168.1.100  <<< Example also customise your default ip for eas of use!
#
#
defaultip="192.168.1.100"
echo "Welcome To LanBackup 2020 By J~Net"
remote_location="linux_mint_docs_backup"
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
    yes | sudo cp -Rnf /mnt/docs_backup/Docs/* /home/$USER/Documents/
    sudo chown -R $USER /home/$USER/Documents/Scripts/
else
    echo "Error!"
fi
echo "All Done!"
