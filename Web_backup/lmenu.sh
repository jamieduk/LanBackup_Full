#!/bin/bash
# (c) J~Net 2020
# jnet.sytes.net
#
#  https://jnet.forumotion.com/t1699-lanbackup-2020-by-jnet
#
# sudo chmod +x *.sh
# ./menu.sh
#
echo "Welcome To J~Net Lan Backup (Web) App Menu 2020 Pick An Option..."
echo ""
select fname in *.sh;
do
    echo you picked $fname \($REPLY\)
    ./$fname
    break;
done
bash menu.sh
