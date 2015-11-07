#!/bin/sh
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# swap colon and semicolon
exec xmodmap -e "keycode 47 = colon semicolon" &

# start xbindkeys
exec xbindkeys -f ~/.config/xbindkeys/xbindkeysrc &

# enable compositing
exec compton -CGb &

# enable wallpaper
exec feh --bg-fill ~/documents/backgrounds/abstract.png &

# start i3
exec i3
