#!/bin/bash
cd /home/blademind

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e ":/home/blademind$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}
