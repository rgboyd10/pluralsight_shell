#!/bin/bash

#Script to run weekly on Sunday afternoon
#to decide if its recycling week

binweek=$[ $(date + %V) % 2 ] # Determine ISO week number and get remainder of %2 (mod)

#If no remainder, it's an even ISO week.  Recycling bins go out on even weeks
if [ $binweek -eq 0 ] ; then
    echo "Recycling bins...." | mail -s "Recycling Bins" rgboyd10@gmail.com
else
    echo "Normal bins...." | mail -s "Normal Bins " rgboyd10@gmail.com
fi
