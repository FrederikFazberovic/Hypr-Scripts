#!/bin/bash
# Touchpad toggle script for Hyprland

DEVICE="$(hyprctl devices | rg touchpad | xargs)"
LOCK_FILE="/tmp/touchpad.lock"
echo $DEVICE
if [ -f "$LOCK_FILE" ]; then
  hyprctl eval "hl.device({ name = '$DEVICE', enabled = true })"
  rm "$LOCK_FILE"
  notify-send "Touchpad" "enabled" -t 2000
else
  hyprctl eval "hl.device({ name = '$DEVICE', enabled = false })"
  touch "$LOCK_FILE"
  notify-send "Touchpad" "disabled" -t 2000
fi
