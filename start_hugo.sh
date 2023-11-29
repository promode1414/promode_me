#!/bin/bash

if [ "$1" == "prod" ]; then
    # Run Hugo server for production environment
    nohup hugo server -D --renderToDisk --baseURL=https://promode.me --appendPort=false &
    echo "Hugo server started for production environment."
elif [ "$1" == "dev" ]; then
    # Run Hugo server for development environment
    hugo server -D 
    echo "Hugo server started for development environment."
else
    echo "Invalid environment. Please use 'prod' or 'dev'."
    exit 1
fi
