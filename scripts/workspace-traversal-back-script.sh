#!/usr/bin/env bash

MIN=1
MAX=9

# its fucked by technically it goes 0-9 with the 0 
# workspace id being -1337??? Im too lazy to fix it rn
# but if I come back to this script then do something
# about that... for now it cycles 1-9 then back to 1.
# 10th one doesnt exist cuz its id is -1337


current=$(hyprctl -j activeworkspace | jq -r '.id')

next=$((current - 1))

if [ $next -lt 1 ]; then
    next=$MAX
fi

hyprctl dispatch workspace $next