#!/bin/bash
#
#
#
# https://www.linux.com/training-tutorials/how-easily-back-and-restore-linux-file-permissions/#:~:text=To%20do%2C%20follow%20these%20steps%3A%201%20Open%20up,in%20fact%2C%20returned%20to%20their%20original%20state.%20
path="/var/www"
sudo apt update
sudo apt install -y getfacl
getfacl -R $path > permissions.txt
echo "Saving Permissions For $path..."
cat permissions.txt

