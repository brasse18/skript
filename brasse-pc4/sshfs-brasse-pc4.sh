#!/bin/bash

IP="$(arp -a | grep 08:60:6e:15:2b:f3 | sed 's/^.*(/(/' | grep -Eo '.*?[)]' | sed 's/[()]//g')"
MOUNT=":/ /home/brasse/brasse-pc4/"
sshfs ${IP}$MOUNT
#ssh "brasse@${IP}"
