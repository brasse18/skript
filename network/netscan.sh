#!/bin/sh

sudo fing -n 192.168.0.31/24 -r 1 -o table,text,/skript/fing-scan.txt
cat /skript/fing-scan.txt

