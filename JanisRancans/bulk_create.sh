#!/usr/bin/bash

counter=$1
filename=$2

if [ "$counter" -gt "20" ] || [ -z $filename ] || ! [[ "$counter" =~ ^[0-9]+$ ]];
then
        echo "Please provide correct args:"
        echo "Number must be smaller than 20"
        echo "Must have name"
        echo "Example: ./bulk_create.sh 10 name"  
else
	for i in $(seq 0 $counter);
        do
		bash_location=$(which bash)
                echo "#!"$bash_location > $2_$i.sh
                chmod u+x $2_$i.sh
        done
fi
