#!/usr/bin/bash

# Check if rpi is up and connected to the internet.
ping -c 1 rpi.local > /dev/null 2>&1
rc=$?
if [[ $rc -eq 0 ]]; then
	# Check if service is running.
	data=$(curl -s rpi.local:3000)
	curlrc=$?
	if [[ $curlrc -eq 0 ]]; then
		last_update=$(echo "$data" | jq -r '.date')
		echo "Updated ${last_update}"
	else
		echo "%{F#EC7875}Service down%{F-}"
	fi
else
	echo "%{F#EC7875}RPI down%{F-}"
fi
