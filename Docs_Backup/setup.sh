#!/bin/bash
#Create a file /root/.smbcredentials with the following content.
#Command Line
#username=winuser
#password=winpass
sudo chmod +x *.sh
echo "Welcome To LanBackup Linux Documents Edition 2020 By J~Net"
echo ""
echo "Remote Credentails Required..."
echo ""
echo "Enter Username"
read username
echo "Enter Password"
read password
sudo echo username=$username > .smbcredentials
sudo echo password=$password >> .smbcredentials
sudo mv .smbcredentials /root/.smbcredentials
sudo chmod 700 /root/.smbcredentials
echo "Setup Complete, Now Run ./run.sh"
sudo chown -R $USER /home/$USER/Documents/Scripts/
