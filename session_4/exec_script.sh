#! /bin/bash

touch notify.txt

tail -Fn0 logfile.log | \
while read line ; do
        echo "$line" | grep  -q "Error"
        if [ $? = 0 ]
        then
            echo "$(date) error found  $line" >> notify.txt 
        fi
done

# tail -f logfile.log | grep -C2 "Error"



