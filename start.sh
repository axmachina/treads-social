#!/bin/bash

# Source the environment variables
. .local/env.sh

# Start npm and send it to the background
npm start &

# Get the PID of the last background process
PID=$!

# Save the PID to a file
echo $PID > npm.pid

echo "npm started with PID $PID"
