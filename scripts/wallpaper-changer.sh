#!/bin/bash
#
# Created by djazz // Dangershy
# Dependencies: feh
#

FOLDER="~/Pictures/Wallpapers"
DELAY=2

# to make it loop over lines instead of spaces in filenames
IFS=$'\n';

while true; do
	LIST=`find "$FOLDER" -type f \( -name '*.jpg' -o -name '*.png' \) | shuf`
	for i in $LIST; do
		echo "$i"
#		gsettings set org.gnome.desktop.background picture-uri "file://$i"
		feh "$i" --bg-fill
#		pcmanfm -w "$i"
		sleep ${DELAY}m
	done
	sleep 1
done

