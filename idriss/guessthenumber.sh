#!/bin/bash

RAND=$((1 + RANDOM % 10))

echo "Guess a number between 1 and 10:"

while :
do
	read guess

	if [ $guess -eq $RAND ]
	then
		echo "You guessed right! The number was $RAND"
		break
	elif [ $guess -lt $RAND ]
	then
		echo "Too low..."
	elif [ $guess -gt $RAND ]
	then
		echo "Too high..."
	echo "try again:"
	fi
done	
