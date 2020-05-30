#!/usr/bin/bash

# Check if rpi is up and connected to the internet.
ping -c 1 35.208.253.23 > /dev/null 2>&1
rc=$?
if [[ $rc -eq 0 ]]; then
	# Check if service is running.
	data=$(curl -s 35.208.253.23)
	curlrc=$?
	if [[ $curlrc -eq 0 ]]; then
		last_update=$(echo "$data" | jq -r '.date')
		echo "Updated ${last_update}"
	else
		echo "%{F#EC7875}Service down%{F-}"
	fi
else
	echo "%{F#EC7875}VM down%{F-}"
fi
