#!/usr/bin/env bash

color=$(gpick -p -o -s)
echo -e $color | xclip -selection c
notify-send $color
