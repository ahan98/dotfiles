#!/bin/zsh

# turns a border off (not a toggle)

# only toggle if border is on
if [ $(yabai -m query --windows --window | jq '.border') -eq 1 ]; then
    yabai -m window $1 --toggle border
fi
