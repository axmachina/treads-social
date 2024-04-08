#!/bin/bash

# Check if a port number is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <port>"
  exit 1
fi

PORT=$1

# Use lsof to check if the port is in use and list the processes
PROCESS_INFO=$(lsof -i :$PORT)

if [ -z "$PROCESS_INFO" ]; then
  echo "Port $PORT is not in use."
else
  echo "Port $PORT is in use by the following process(es):"
  echo "$PROCESS_INFO"
fi
