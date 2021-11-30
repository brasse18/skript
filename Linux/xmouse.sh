#!/bin/sh

#sudo insmod /lib/modules/3.13.0-19-generic/kernel/drivers/input/joystick/xpad.ko
#sudo modprobe uinput
#sudo modprobe joydev
sudo pkill xboxdrv
sudo xboxdrv --mouse --silent --detach-kernel-driver --deadzone 15% &
