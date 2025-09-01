#!/bin/bash

# Define options
options="Laptop Only\nExternal Only\nMirror\nExtend"

# Use Tofi to choose
choice=$(echo -e "$options" | tofi)

case "$choice" in
"Laptop Only")
  hyprctl dispatch dpms off HDMI-A-1
  hyprctl dispatch dpms on eDP-1
  hyprctl keyword monitor "eDP-1,preferred,0x0,1"
  hyprctl keyword monitor "DP-1,disable"
  ;;
"External Only")
  hyprctl dispatch dpms off eDP-1
  hyprctl dispatch dpms on DP-1
  hyprctl keyword monitor "DP-1,preferred,0x0,1"
  hyprctl keyword monitor "eDP-1,disable"
  ;;
"Mirror")
  hyprctl keyword monitor "eDP-1,preferred,0x0,1"
  hyprctl keyword monitor "DP-1,preferred,0x0,1"
  ;;
"Extend")
  hyprctl keyword monitor "eDP-1,preferred,1920x0,1"
  hyprctl keyword monitor "DP-1,preferred,0x0,1"
  ;;
*)
  echo "No valid option selected."
  ;;
esac
