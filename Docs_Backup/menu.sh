#!/bin/bash
# (c) J~Net 2020
# jnet.forumotion.com/t1699-lanbackup-2020-by-jnet#2624
#
# ./menu.sh
#
echo "Welcome To J~Net Lan Backup (Docs) App Menu 2020 Pick An Option..."
echo ""
select fname in *.sh;
do
    echo you picked $fname \($REPLY\)
    time ./$fname
    break;
done
bash menu.sh
