#!/bin/bash

LOG_FILE="npm.log"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Tail the log file
tail -f "$LOG_FILE"
