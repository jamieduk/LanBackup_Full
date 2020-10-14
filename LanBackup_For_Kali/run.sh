#!/bin/bash
echo "Welcome To LanBackup Linux Documents Edition 2020 By J~Net"
#
remote_location="linux_mint_docs_backup"
echo "LanBackup 2020 By J~Net"
# 192.168.1.30
if [ "$#" -eq  "0" ]
  then
    echo "Enter Remote IP"
    read ip
else
    ip=$1
fi
#
#cd smb://$ip/$remote_location/
#ls
sudo mkdir /mnt/docs_backup
clear
# /etc/fstab
newstring="//$ip/$remote_location /mnt/docs_backup       cifs    credentials=/root/.smbcredentials,uid=33,gid=33,rw,nounix,iocharset=utf8,file_mode=0777,dir_mode=0777 0 0"
sudo echo $newstring >> /etc/fstab
#
clear
echo "Put the following text at bottom of the file thats about to open (Then save and close)...."
echo ""
echo $newstring
sudo gedit /etc/fstab
echo "Now checking for new lines..."
sudo mount -a
echo "Now listing files..."
cd /mnt/docs_backup
ls
echo "Now Ready For Backup / Restore?"
echo "To start Back Or Restore, type ./backup.sh Or ./restore.sh"
