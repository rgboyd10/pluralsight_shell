#!/bin/bash

echo "Helm, prepare for warp speed. On my mark..."
sleep 2

countdown=10
until [ $countdown -le 0 ] ; do
    echo $countdown
    let countdown=$countdown-1
    sleep 1
done

echo "Engage! >>>>>" 
