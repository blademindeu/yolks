#!/bin/bash
cd /home/blademind

# Make internal Docker IP address available to processes
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Print Dart version
dart --version

# Replace startup variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo ":/home/blademind$ ${MODIFIED_STARTUP}"

# Run the server
eval ${MODIFIED_STARTUP}
