#!/bin/bash

# Define the process name
PROCESS_NAME="expo.sh"

# Check if the process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    notify-send "Expo is Off"
    pkill -x "$PROCESS_NAME"  # Kill the process
else
    notify-send "Expo is On"
    ~/.config/hypr/expo.sh &  # Start the process in the background
fi

