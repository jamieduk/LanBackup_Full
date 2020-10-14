#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
# ./perms_restore.sh
#
# https://www.linux.com/training-tutorials/how-easily-back-and-restore-linux-file-permissions/#:~:text=To%20do%2C%20follow%20these%20steps%3A%201%20Open%20up,in%20fact%2C%20returned%20to%20their%20original%20state.%20
#sudo apt update
#sudo apt install -y getfacl
sudo cp /mnt/web_backup/permissions.txt /home/$USER/Documents/Scripts/LanBackup_Full/Web_backup/permissions.txt
sudo getfacl -R /var/www/ > permissions.txt
# 8 lines of cache maybe taken for each cache record when sudo is used to stop cache pickups
# You can take out sudo from perms files!
