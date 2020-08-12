#!/usr/bin/bash

num=$1
filename=$2

if [ "$num" -gt "20" ] || [ -z $filename ] || ! [[ "$num" =~ ^[1-9]+$ ]];
then
        echo "Please provide correct args:"
        echo "Number must be between 0 and 21"
        echo "Must have name"
        echo "Example: ./bulk_create.sh 10 name"  
else
	counter=0
	for i in $(seq 1 $num)
	do
	if [ ! -f "$2_$i.sh" ];
	then
		bash_location=$(which bash)
                echo "#!"$bash_location > $2_$i.sh
                chmod u+x $2_$i.sh
		echo "File "$2"_"$i".sh created"
		counter=$((counter+1))

       	else
		echo "File "$2"_"$i".sh already exists"
	fi
 	done
	echo ""$counter" files created" 
fi
