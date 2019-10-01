#!/bin/bash

PEOPLE=("Jozko Mrkvicka" \
"Bruno Banani" \
"Milan Rufus")

search()
{
	name="$@"
	local matches="0"
	for name in "${PEOPLE[@]}"
	do
		if [[ $name == *"$choose"* ]]
		then
			echo "Match! -> $name"
			matches=$((matches+1))
		fi
	done
	
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
	echo "Found!"
else
	echo "Not found!"
fi
	

