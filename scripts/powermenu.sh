#!/bin/bash
chosen=$(echo -e "󰌾  Lock\n󰍃  Logout\n󰒲  Suspend\n󰜉  Reboot\n⏻  Shutdown" | rofi -dmenu -p "Power" -theme ~/.config/rofi/powermenu/config.rasi)

case $chosen in
    *Lock) hyprlock ;;
    *Logout) hyprctl dispatch 'hl.dsp.exit()' ;;
    *Suspend) systemctl suspend ;;
    *Reboot) systemctl reboot ;;
    *Shutdown) systemctl poweroff ;;
esac
