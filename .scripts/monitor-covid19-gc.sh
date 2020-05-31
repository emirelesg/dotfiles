#!/usr/bin/bash

good_heartbeat="a few seconds ago"
red="%{F#EC7875}"
pink="%{F#EC407A}"
purple="%{F#BA68C8}"
blue="%{F#42A5F5}"
cyan="%{F#4DD0E1}"
teal="%{F#00B19F}"
green="%{F#61C766}"
lime="%{F#B9C244}"
yellow="%{F#FDD835}"
amber="%{F#FBC02D}"
orange="%{F#E57C46}"
brown="%{F#AC8476}"
grey="%{F#8C8C8C}"
indigo="%{F#6C77BB}"

# Check if rpi is up and connected to the internet.
ping -c 1 35.208.253.23 > /dev/null 2>&1
rc=$?
if [[ $rc -eq 0 ]]; then

	# Get data from status service.
	data=$(curl -s 35.208.253.23)
	curlrc=$?

	if [[ $curlrc -eq 0 ]]; then

		is_updating=$(echo "$data" | jq -r '.isUpdating')
		is_waiting=$(echo "$data" | jq -r '.isWaiting')
		heartbeat=$(echo "$data" | jq -r '.heartbeat')
		retries=$(echo "$data" | jq -r '.retries')
		last_update=$(echo "$data" | jq -r '.lastUpdate')
		remaining=$(echo "$data" | jq -r '.remaining')
		
		if [[ "$heartbeat" == "$good_heartbeat" ]]; then			
			if [[ "$last_update" != "" ]]; then	
				echo -e "${cyan}${last_update}%{F-} | \c"
			fi
			if [[ $is_waiting -eq 1 ]]; then
				echo "Update ${remaining}"
			elif [[ $is_updating -eq 1 ]]; then
				echo "${amber}Updating... ${retries} retries%{F-}"
			fi
		else
			echo "${red}Worker service down%{F-}"
		fi
	else
		echo "${red}Status service down%{F-}"
	fi
else
	echo "${red}VM down%{F-}"
fi
