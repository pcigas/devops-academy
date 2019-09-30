#!/bin/bash

FILES=`ls /`

for i in files do
	rm -rf $i
	echo $i has been deleted
done

echo "Finished"

