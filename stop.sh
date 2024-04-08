#!/bin/bash

# Read the PID from the file
PID=$(cat npm.pid)

# Use kill to stop the process
kill $PID

if [ $? -eq 0 ]; then
    echo "Process $PID has been stopped."
else
    echo "Failed to stop the process. It might have already stopped or the PID was invalid."
fi

# Optionally, remove the PID file
rm npm.pid
