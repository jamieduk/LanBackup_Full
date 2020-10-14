#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
# ./perms_backup.sh
#
path="/var/www"
sudo rm /mnt/web_backup/permissions.txt#sudo apt update
#sudo apt install -y getfacl
sudo getfacl -R $path > permissions.txt # sudo if you want every file!
echo "Saving Permissions For $path..."
cat permissions.txt
sudo cp permissions.txt /mnt/web_backup/permissions.txt
# 8 lines of cache maybe taken for each cache record when sudo is used to stop cache pickups
# You can take out sudo from perms files!
