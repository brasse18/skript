#!/bin/bash
# This script rotates the screen and touchscreen input 180 degrees, disables the touchpad, and enables the virtual keyboard
# And rotates screen back if the touchpad was disabled

isEnabled=$(xinput --list-props 'ETPS/2 Elantech Touchpad' | awk '/Device Enabled/{print $NF}')

#if [ -f /dev/sdb1 ];

if [ $isEnabled == 1 ]; 
then
    echo "Screen is turned left"
    #xrandr -o inverted
    xrandr --output eDP1 --dpi 90x90 --rotate left
    sleep 2
    xinput set-prop 'Atmel Atmel maXTouch Digitizer' --type=float 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
    #'ELAN Touchscreen' 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
    xinput disable 'ETPS/2 Elantech Touchpad'
    # Remove hashtag below if you want pop-up the virtual keyboard  
    # onboard &
else
    echo "Screen is turned back to normal"
    xrandr --output eDP1 --dpi 90x90 --rotate normal
    xinput set-prop 'Atmel Atmel maXTouch Digitizer' --type=float 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
    xinput enable 'ETPS/2 Elantech Touchpad'
    # killall onboard 
fi
