#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

$HOME/proj/scripts/setkeyboard pt
/usr/bin/setxkbmap -option "caps:swapescape"
/usr/bin/setxkbmap -option "compose:rctrl"

export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11

session=${1:-gnome}

case $session in
    i3|i3wm           ) exec i3;;
    xfce|xfce4        ) exec startxfce4;;
    gnome             ) exec gnome-session;;
    firefox           ) exec firefox;;
    chromium          ) exec chromium;;
    brave             ) exec brave;;
    terminal          ) exec alacritty;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
