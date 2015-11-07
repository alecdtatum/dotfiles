#!/bin/sh

i3status --config ~/.config/i3/i3status.conf | while :
do
    read line
    playing=$(mpc -h 10.0.0.16 current)
    echo "$playing | $line" || exit 1
done
