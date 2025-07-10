#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config


$(polybar --reload $HOSTNAME || polybar --reload top1) & 

if [ -n "$monitor2" ]; then
	polybar --reload top2 &
fi
if [ -n "$monitor3" ]; then
	polybar --reload top3 &
fi

echo "Polybar launched..."
