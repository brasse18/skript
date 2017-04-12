#!/bin/bash
sudo pkill xboxdrv
sudo xboxdrv --deadzone-trigger 15% --trigger-as-button --mimic-xpad --dbus session --timeout 5 --silent &
