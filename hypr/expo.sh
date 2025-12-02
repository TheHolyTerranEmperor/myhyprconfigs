#!/bin/bash
while true; do
	if [[ $(hyprctl cursorpos) == '0, 1079' ]]; then
		hyprctl dispatch hyprexpo:expo on
	fi
done
