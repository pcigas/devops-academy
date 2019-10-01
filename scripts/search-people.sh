#!/bin/bash

PEOPLE=("Jozko Mrkvicka" "Bruno Banani" "Milan Rufus")

echo "Zadaj koho hladas"
read choose

for name in ${PEOPLE[*]}
do
	if [[ $name == "*$choose*" ]]
	then
		echo Match!
		exit 0
	fi
done

echo "No match"
exit 1