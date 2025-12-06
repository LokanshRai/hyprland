#!/usr/bin/env bash

MIN=1
MAX=5

current=$(hyprctl -j activeworkspace | jq -r '.id')

next=$((current + 1))

if [ $next -gt $MAX ]; then
    next=$MIN
fi

hyprctl dispatch workspace $next