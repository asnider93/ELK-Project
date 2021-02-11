#! /bin/bash

fav_states=( "califonia" "washington" "colorado" "wyoming" "maine" )

for fav in ${fav_states}
do
	if [ $fav_states = "hawaii" ]
	then
		echo "Hawaii is the best!"
	else
		echo "I'm not that fond of Hawaii"
	fi
done
