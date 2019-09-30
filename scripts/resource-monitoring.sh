#!/bin/bash


if [[ "`df -h | awk '{if ($5/1 > 80 ) {print}}' | wc -l`" -gt 0 ]]
then
	echo "Warning! FS usage reached critical treshold!"
	df -h | awk '{if ($5/1 > 80 ) {print}}'
fi
