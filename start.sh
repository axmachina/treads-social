#!/bin/bash

# Source the environment variables
. .local/env.sh

# Start npm and send it to the background, redirecting output to npm.log
nohup npm start > npm.log 2>&1 &

# Get the PID of the last background process
PID=$!

# Save the PID to a file
echo $PID > npm.pid

disown

echo "npm started with PID $PID, output redirected to npm.log"

# tail -f npm.log
# ./log.sh