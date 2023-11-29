#!/bin/bash

# Find Hugo server processes and extract their PIDs
hugo_pids=$(ps -eaf | grep "hugo server" | grep -v grep | awk '{print $2}')

# Check if any Hugo server processes are running
if [ -n "$hugo_pids" ]; then
    echo "Killing Hugo server processes..."
    
    # Kill each Hugo server process
    for pid in $hugo_pids; do
        kill $pid
    done
    
    echo "Hugo server processes killed."
else
    echo "No Hugo server processes found."
fi
