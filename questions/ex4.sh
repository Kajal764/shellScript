#!/bin/bash -x

file=`find . -type f -newermt "2019-11-2" \! -newermt "2019-12-26"`
for file in $file;
do
        mv $file /home/admin1/Documents/questions/backup
        echo "done"
done

