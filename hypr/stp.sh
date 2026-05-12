#!/bin/bash

# Define the process name
PROCESS_NAME="kitty"
hyprctl dispatch killactive
# Check if the process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    hyprctl dispatch killactive
    killall kitty
    kitty
else
    hyprctl dispatch killactive
fi

