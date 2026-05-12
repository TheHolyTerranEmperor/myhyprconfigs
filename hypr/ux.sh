#!/bin/bash

# Define the process name
PROCESS_NAME="uxplay"

# Check if the process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    notify-send "Uxplay Off"
    pkill -x "$PROCESS_NAME"  # Kill the process
else
    notify-send "Uxplay Ready"
    $PROCESS_NAME &  # Start the process in the background
fi

