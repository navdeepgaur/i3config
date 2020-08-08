#!/bin/sh

TOGGLE=$HOME/.toggles/screenExtend


if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xrandr --output VGA-0 --off --output eDP --primary --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-0 --off
else
    [ -f $TOGGLE ] && rm $TOGGLE
    xrandr --output VGA-0 --off --output eDP --primary --mode 1366x768 --pos 0x440 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 1368x0 --rotate normal
fi


feh --randomize --bg-fill ~/Pictures/walls/*

