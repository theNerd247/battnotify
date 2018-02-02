#!/usr/bin/env bash

batlevel="$(acpi | sed -e 's/^.*, \([0-9]*\)%, .*$/\1/g')"

if [[ $(acpi | grep "Discharging") ]]; then

	if [ $batlevel -lt "20" ]; then
		notify-send -u critical -t 60000 "Battery Level Critical - $batlevel" "You should plug-in your laptop"
	#else
		#notify-send -u critical -t 10000 "Bat level: $batlevel" "GOOD JOB"
	fi
fi
