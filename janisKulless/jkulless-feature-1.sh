#!/usr/bin/bash
#
# Evaluates who has access
#
# Store integer
CHECKINT='^[0-9]+$'
# Store input as PIN
for PIN in "$*";
do
	# Person must enter something
	if [ -z $PIN ]; then
		echo "Error: Must contain value!"; <&2; exit 1
	
	# Asks for integer
	elif ! [[ $PIN =~ $CHECKINT ]]; then
	       echo "Error: Must be a number!" <&2; exit 1	
	
	# Compares PIN with regular access
	elif [ $PIN -eq 1234 ]; then
		echo "You've been granted access!";
		echo "Thank you, that's all for now.";	
		echo "Exitcode: $?";

	
	# Compares pin with highest level access
	elif [ $PIN -eq 1369 ]; then
		echo "Highest level access!";
		touch secretfiles.log;
		echo "Will be destroyed after reading!" >> secretfiles.log;
		echo "Contents of secret files:" >> secretfiles.log;
		echo "This info is poorly secured.." >> secretfiles.log;
		echo "exitcode: $?" >> secretfiles.log;	
		cat secretfiles.log;
		rm secretfiles.log;


	# Chases away intruder!
	else
		echo "Sorry, you don't belong here!"
	fi
done

