#!/bin/bash

# Define a variable to store the toggle state
TOGGLE_FILE="$HOME/.config/hypr/.toggle_state"

# Check if the toggle file exists
if [ -f "$TOGGLE_FILE" ]; then
  # Read the current state from the file
  read -r CURRENT_STATE < "$TOGGLE_FILE"
  
  # Toggle the state
  if [ "$CURRENT_STATE" = "on" ]; then
    NEW_STATE="off"
    brightnessctl -d smc::kbd_backlight set 0
  else
    NEW_STATE="on"
    brightnessctl -d smc::kbd_backlight set 255
  fi
else
  # If the file doesn't exist, assume it's off and toggle to on
  NEW_STATE="on"
  brightnessctl -d smc::kbd_backlight set 255
fi

# Save the new state to the toggle file
echo "$NEW_STATE" > "$TOGGLE_FILE"
