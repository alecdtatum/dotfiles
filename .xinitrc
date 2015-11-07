#!/bin/sh
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# swap colon and semicolon
xmodmap -e "keycode 47 = colon semicolon" &

# modify print screen
xmodmap -e "keycode 107 = XF86AudioPrev XF86Launch1" &

# modify scroll lock
xmodmap -e "keycode 78 = XF86AudioPlay XF86Launch2" &

# modify pause break
xmodmap -e "keycode 127 = XF86AudioNext XF86Launch3" &

# set background
exec feh --bg-fill /mnt/files/documents/backgrounds/abstract.png &

# enable compositing
exec compton -CGbf &

xrdb ~/.Xresources

# start i3
exec i3
