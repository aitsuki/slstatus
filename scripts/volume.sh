#!/bin/bash
toggle=$(amixer sget Master | grep -m 1 '%' | awk '{gsub(/[][%]/, "", $NF);print $NF}')
volume=$(amixer sget Master | grep -m 1 '%' | awk '{gsub(/[][%]/, "", $(NF-2));print $(NF-2)}')


if [ $toggle = 'off' ]; then
	icon="婢"
else
	if (( volume > 70 )); then
		icon="墳"
	elif (( volume > 30 )); then
		icon="奔"
	else
		icon="奄"
	fi
fi
echo $icon$volume
