if [[ "$(tty)" = "/dev/tty1" ]]; then
  exec startx
fi
. $HOME/.local/share/swiftly/env.sh
