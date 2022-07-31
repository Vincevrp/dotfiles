#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u "$(id -u)" -x polybar >/dev/null; do sleep 0.1; done

# Launch bars
polybar main &

 if [ "$AUTORANDR_CURRENT_PROFILE" = 'mobile' ]; then
    MONITOR="eDP1"  polybar main &
    MONITOR="HDMI-1" polybar secondary &
    MONITOR="HDMI-2" polybar secondary &
else
    MONITOR="DP-1-1" polybar main &
    MONITOR="DP-1-2" polybar secondary &
    MONITOR="DP-1-3" polybar secondary &
fi

echo "Bars launched..."
