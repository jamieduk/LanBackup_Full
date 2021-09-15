#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
# ./run.sh
#
echo "Welcome To LanBackup 2020 Web Edition By J~Net"
#
remote_location="web_server_2020_backup"
if [ "$#" -eq  "0" ]
  then
    echo "Enter Remote IP"
    read ip
else
    ip=$1
fi
echo "You chose $ip"
sudo mkdir /mnt/web_backup
clear
# /etc/fstab
newstring="//$ip/$remote_location /mnt/web_backup        cifs    credentials=/root/.smbcredentials,uid=33,gid=33,rw,nounix,iocharset=utf8,file_mode=0777,dir_mode=0777 0 0"
sudo echo $newstring >> /etc/fstab
#
clear
echo "Put the following text at bottom of the file thats about to open (Then save and close)...."
echo ""
echo $newstring
sudo xed /etc/fstab
echo "Now checking for new lines..."
sudo mount -a
echo "Now listing files..."
cd /mnt/web_backup
ls
echo "Now Ready For Backup / Restore?"
echo "To start Back Or Restore, type ./backup.sh Or ./restore.sh"
