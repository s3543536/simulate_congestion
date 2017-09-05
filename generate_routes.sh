#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "$0 <name> "
	exit
fi

python $(echo "$SUDO_HOME/tools/randomTrips.py") -n "$1.net.xml" -r "$1.rou.xml" -e 2600 -l
