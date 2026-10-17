#!/bin/bash
hyprctl switchxkblayout all next
lang=$(hyprctl devices -j | python3 -c "import sys,json; d=json.load(sys.stdin); print(d['keyboards'][0]['active_keymap'])" 2>/dev/null)
notify-send "Keyboard Layout" "$lang"
