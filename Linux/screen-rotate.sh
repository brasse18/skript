    #!/bin/bash
    # This script rotates the screen and touchscreen input 180 degrees, disables the touchpad, and enables the virtual keyboard
    xrandr --output eDP1 --rotate left
    xinput --set-prop 'Atmel Atmel maXTouch Digitizer' --type=float 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
    #xinput set-prop 'ELAN Touchscreen' 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
    #xinput disable 'SynPS/2 Synaptics TouchPad'
    #onboard &
