#!/bin/bash
cd /home/blademind

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Print the Muble server version
echo -e "Mumble release version:"
cat /usr/local/share/mumble/latest_tag.txt

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e $(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g'))
echo -e ":/home/blademind$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}