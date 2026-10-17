#!/bin/bash
FILE=~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png
grim -g "$(slurp)" "$FILE" || exit 0
wl-copy < "$FILE"
ACTION=$(notify-send "Screenshot Saved" "$FILE" --action="open=Open")
if [ "$ACTION" = "open" ]; then
    loupe "$FILE"
fi
