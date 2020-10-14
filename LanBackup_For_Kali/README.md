LanBackup 2020 By J~Net (Linux Documents Edition)

git clone https://github.com/jamieduk/LanBackup_Full


YT Project Link:
https://youtu.be/Qsc22cuTVW4

Forum Link:
https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet#2624

Website:
jnet.sytes.net



Welcome To LanBackup 2020 By J~Net

Step 1.

run this command to setup the program.

./setup.sh

enter password and goto Step 2.


Step 2.

Now run this to test it is all setup correct with remote share. 

./run.sh

Then (after in setup instructions for mounting).

Step 3.

either backup.sh or restore.sh file.



Notes for Backup file

this assumes that a: you have a share on the remote host called 

linux_mint_docs_backup

and b) that the share has the correct credentails as used in the setup process.



Running backup or restore example

./backup.sh ip

Where ip is the ip of the remote host.


Please Note:
After restarting you may need to run ./run.sh before the backup.sh / restore.sh file!


Time the Backup with the following...

time ./backup.sh ip

time ./restore.sh ip





and b) that the share has the correct credentails as used in the setup process.



Running backup or restore example

./backup.sh ip

Where ip is the ip of the remote host.








