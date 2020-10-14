#!/bin/bash
select fname in *.sh;
do
    echo you picked $fname \($REPLY\)
    time ./$fname
    break;
done
bash menu.sh
