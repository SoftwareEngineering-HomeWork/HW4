#!/bin/bash

pkill -f infinite.sh

if [ $? -eq 0 ]; then
    echo "Killed infinite.sh instances"
else
    echo "No running instances"
fi
