#!/bin/bash

echo "Self-desctruct sequence initiated.  Escape pods launched..."
sleep 2

for i in 10 9 8 7 6 5 4 3 2 1 "detonating the core" ; do
    if [ "$1" = "express" ] ; then
	continue
    fi
    echo $i
    sleep 1
done
