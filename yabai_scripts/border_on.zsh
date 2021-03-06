#!/bin/zsh

# turns a border on (not a toggle)

# only toggle if border is off
if [ $(yabai -m query --windows --window $1 | jq '.border') -eq 0 ]; then
    yabai -m window $1 --toggle border
fi
