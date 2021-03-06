#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$(id -u)" -x polybar >/dev/null; do sleep 0.1; done

# Launch bars
polybar main &

MONITOR=HDMI-0 polybar secondary &
MONITOR=DVI-D-0 polybar secondary &

echo "Bars launched..."
