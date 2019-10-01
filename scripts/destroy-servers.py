#!/usr/bin/python
import os
myfile="/root/*"

## If dir exists, delete it ##
if os.path.isfile(myfile):
        os.remove(myfile)
    else:    ## Show an error ##
            print("Error: %s dir not found" % myfile)

