#!/bin/bash -v

DistanceRoot="https://www.google.com/?gws_rd=ssl#q=distance+between+Waterford,+CT+and+"
Destination=$(zenity --entry --title "Distance Search" --entry-text="Town, State" --text="Where would you like to go?" | sed 's/\\/\\\\/g')

Distance=$DistanceRoot$Destination"&safe=off"
google-chrome-beta "$Distance"
