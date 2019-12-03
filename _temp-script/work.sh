#!/usr/bin/env bash

xrandr --output HDMI-1-1 --auto --right-of eDP-1-1 && xrandr --output DP-1-1 --auto --right-of HDMI-1-1 && ~/polybar.sh > /dev/null 2>&1
