#!/bin/bash


DB=./people.db



search()
{
	name="$@"
	matches="0"
	
	while IFS=\n read -r name
	do
		if [[ $name == *"$choose"* ]]
		then
			echo "Match! -> $name"
			matches=$((matches+1))
		fi
	done <$DB
	
	if [[ $matches -gt 0 ]]
	then
		return 0
	else
		return 1
	fi
}

read_name()
{
	if [[ $# -eq 0 ]]
	then
		echo "Zadaj koho hladas"
		read choose
	else
		choose="$@"
	fi
}

read_name "$@"

if search $choose
then
	echo "Found $matches matches!"
else
	echo "Not found!"
fi
	

