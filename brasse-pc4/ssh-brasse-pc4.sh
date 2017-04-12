#!/bin/bash

BROD="$(ip address show $DEV | grep 'inet .* brd ' | head -1 | sed -e 's/^.* brd \([0-9\.]*\) .*$/\1/')"

ping -c 1 -b "${BROD}"

IP="$(arp -a | grep 08:60:6e:15:2b:f3 | sed 's/^.*(/(/' | grep -Eo '.*?[)]' | sed 's/[()]//g')"
ssh "brasse@${IP}"

