#!/usr/bin/env bash

set -e

# setxkbmap -layout $1 -variant $2

if [[ -z $1 ]]; then
  echo 'No arguments supplied!'
  exit 1
fi

if [[ -z $2 ]]; then
  setxkbmap -layout $1
  echo "Keyboard layout modified: $1"
  exit 1
fi

setxkbmap -layout $1 -variant $2
echo "Keyboard layout modified: $1 $2"
exit 1