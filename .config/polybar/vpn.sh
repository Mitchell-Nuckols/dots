#!/bin/bash

VPN=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1 | head -n 1 )

if [[ -n $VPN ]]; then
	echo -e "%{F#81a2be} %{F#c5c8c6}$VPN"
else
	echo -e ""
fi
