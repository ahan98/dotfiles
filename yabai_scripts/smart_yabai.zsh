#!/bin/zsh
# Only have borders/gaps/padding if there is >1 VISIBLE window

YABAI="/Users/alex/.config/yabai_scripts"

count=0
while read -r line ; do
    if [ $(yabai -m query --windows --window $line | jq -r ".visible") -eq 1 ]; then
        count=$((count + 1))
    fi
done < <(yabai -m query --spaces --space | jq '.windows | .[]')

# echo $count

if [ "$count" -eq 1 ]; then
    # turn off borders
    yabai -m query --spaces --space | jq '.windows | .[]' | xargs -n1 $YABAI/border_off.zsh
    # turn off gaps and padding
    yabai -m space --padding abs:0:0:0:0; yabai -m space --gap abs:0
elif [ "$count" -ge 2 ]; then
    # turn on borders, gaps, and padding for each window
    yabai -m query --spaces --space | jq '.windows | .[]' | xargs -n1 $YABAI/border_on.zsh
    yabai -m space --padding abs:20:20:20:20; yabai -m space --gap abs:10
fi
