#!/bin/bash
cd /home/blademind

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
echo -e ":/home/blademind$ ${MODIFIED_STARTUP}"

# Print Elixir Version
elixir -e 'IO.puts "Elixir " <> System.version()'

# Run the Server
eval ${MODIFIED_STARTUP}
