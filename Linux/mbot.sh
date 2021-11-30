#!/bin/sh

INPUT=$1           #"https://www.youtube.com/watch?v=I53HDr0-Qew"
CACHE="2048"       #4096 #8192
NEXT_SONG=""
TEMP_SONG_LIST="list.txt"
SONG_LIST=""

#for file in $(<$TEMP_SONG_LIST)
#do
#   echo "$i"
#done

for file in $(cat list.txt)
do INPUT="$file"
youtube-dl -q -o- $INPUT | mplayer -cache $CACHE -
done

#youtube-dl -q -o- $INPUT | mplayer -cache $CACHE -
