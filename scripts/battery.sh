#!/bin/bash
capacity=$(cat /sys/class/power_supply/BAT1/capacity)
icon=""
if (( $capacity >= 95)); then
	icon=""
elif (( $capacity >= 90 )); then
	icon=""
elif (( $capacity >= 80 )); then
	icon=""
elif (( $capacity >= 70 )); then
	icon=""
elif (( $capacity >= 60 )); then
	icon=""
elif (( $capacity >= 50 )); then
	icon=""
elif (( $capacity >= 40 )); then
	icon=""
elif (( $capacity >= 30 )); then
	icon=""
elif (( $capacity >= 20 )); then
	icon=""
elif (( $capacity >= 10 )); then
	icon=""
else
	icon=""
fi
echo $icon$capacity
