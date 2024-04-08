
#!/bin/bash

PID_FILE="npm.pid"

# Check if the PID file exists
if [ ! -f "$PID_FILE" ]; then
    echo "PID file not found: $PID_FILE"
    exit 1
fi

# Read the PID from the file
PID=$(cat "$PID_FILE")

# Check if this PID is running
if ps -p $PID > /dev/null 2>&1; then
    echo "Process $PID is running."
    # Display some information about the process
    ps -f -p $PID
else
    echo "Process $PID not found. It may have stopped or crashed."
fi
