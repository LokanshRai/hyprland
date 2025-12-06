#!/usr/bin/env bash

MIN=1
MAX=5

current=$(hyprctl -j activeworkspace | jq -r '.id')

next=$((current - 1))

if [ $next -lt $MIN ]; then
    next=$MAX
fi

hyprctl dispatch workspace $next