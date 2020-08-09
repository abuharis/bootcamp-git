#!/usr/bin/bash
#
# Fulfilling the assignment
#
# Storing variables
NAME="Janis";
SURNAME="Kulless";
SCRIPTNAME="$0";
# Display assignment taker
echo -e "Made by: $NAME $SURNAME\n";
# Calculation
echo -e "Value of 1 + 2 * 5 is $[ 1 + 2 * 5]\n";

# Displaying a loop with increment
echo "Next, to dispaly loop 1-10 with increment of 2:";
for i in $(seq 1 2 10);
do
	echo $i;
done
echo -e "\n";

# Looping through passed arguments and counting them
for a in "$@";
do
	echo "You've asked for: $a";
done
echo -e "Fully there are $# passed arguments.\n";

# Returning script name
echo "You are running $SCRIPTNAME";
