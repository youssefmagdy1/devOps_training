#! /bin/bash


tail -Fn0 logfile.log | \
while read line ; do
        echo $line 
        echo "$line" | grep  -q "Error"
        if [ $? = 0 ]
        then
                echo "we found error"
        fi
done

# tail -f logfile.log | grep -C2 "Error"


