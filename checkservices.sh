#!/bin/bash

# List of services to check
services=("radarr" "sonarr" "lidarr" "bazarr" "sabnzbdplus" "tautulli" "ombi")

# Function to check if a service is running
check_service() {
    service_name=$1
    if systemctl is-active --quiet $service_name ; then
        echo "$service_name is running."
    else
        echo "$service_name is not running."
    fi
}

# Iterate through each service in the list
for service in "${services[@]}"; do
    check_service $service
done