#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo apt-get install acl
# sudo chmod +x *.sh
# ./perms_backup.sh
#
# https://www.linux.com/training-tutorials/how-easily-back-and-restore-linux-file-permissions/#:~:text=To%20do%2C%20follow%20these%20steps%3A%201%20Open%20up,in%20fact%2C%20returned%20to%20their%20original%20state.%20
path="/var/www"
sudo rm /mnt/web_backup/permissions.txt
#sudo apt update
#sudo apt install -y getfacl
sudo getfacl -R $path > permissions.txt # sudo if you want every file!
echo "Saving Permissions For $path..."
sed 's+var+/var+g' test.txt > new.txt
mv new.txt permissions.txt
cat permissions.txt
sudo cp permissions.txt /mnt/web_backup/permissions.txt
# 8 lines of cache maybe taken for each cache record when sudo is used to stop cache pickups
# You can take out sudo from perms files!
