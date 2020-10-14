#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
# ./setup.sh 192.168.1.100
#
#Create a file /root/.smbcredentials with the following content.
#Command Line
#username=winuser
#password=winpass
sudo apt update
sudo apt install -y getfacl
sudo chmod +x *.sh
echo "Welcome To LanBackup 2020 Web Edition By J~Net"
echo ""
echo "Remote Credentails Required..."
echo ""
echo "Enter Username"
read username
echo "Enter Password"
read -s password
sudo echo username=$username > .smbcredentials
sudo echo password=$password >> .smbcredentials
sudo mv .smbcredentials /root/.smbcredentials
sudo chmod 700 /root/.smbcredentials
echo "Setup Complete, Now Run ./run.sh"
sudo chown -R $USER /home/$USER/Documents/Scripts/
