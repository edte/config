#!/bin/bash

while true; do
	find ~/.config/i3/wallpaper/pictures  -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-scale
	sleep 15m
done

