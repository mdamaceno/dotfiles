#!/bin/sh

KBD_THINKPAD_TRACKPOINT="Thinkpad with Trackpoint selected"
KBD_THINKPAD_E14="Thinkpad E14 selected"
KBD_CRONOS="Cronos keyboard selected"

notify()
{
    sudo -u mdamaceno DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send $1
}

setCronosKeyboard()
{
    setxkbmap -layout us -variant altgr-intl -option compose:rctrl -option caps:swapescape
    echo "$KBD_CRONOS" >> /tmp/usb.log
    notify "$KBD_CRONOS"
}

setThinkpadKeyboard()
{
    setxkbmap -layout us -variant altgr-intl -model thinkpad60 -option caps:swapescape
    echo "$KBD_THINKPAD_TRACKPOINT" >> /tmp/usb.log
    notify "$KBD_THINKPAD_TRACKPOINT"
}

setThinkpadE14Keyboard()
{
    setxkbmap -layout br -variant thinkpad -model thinkpad60 -option caps:swapescape
    echo "$KBD_THINKPAD_E14" >> /tmp/usb.log
    notify "$KBD_THINKPAD_E14"
}

if [[ $(lsusb) =~ "Lenovo ThinkPad Compact Keyboard with TrackPoint" ]]; then
    setThinkpadKeyboard
fi
