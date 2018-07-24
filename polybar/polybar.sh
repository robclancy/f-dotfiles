#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
SCREEN=eDP-1-1 polybar top &
TRAY=right SCREEN=eDP-1-1 polybar bottom &
# SCREEN=DP-2-1 polybar top &
# TRAY=right SCREEN=DP-2-1 polybar bottom &
#SCREEN=DP-1-1 polybar top &
#SCREEN=DP-1-1 polybar bottom &

echo "Bars launched..."
