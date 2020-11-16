#!/bin/bash
test1="$(</sys/class/power_supply/BAT0/status)"
test2="$(</sys/class/power_supply/BAT0/capacity)"

if [[ $test1 == "Discharging" ]] && [[ $test2 -lt 100 ]] && [[ "$test2" -gt 20 ]]
then                                                                                        
        spotify-now -i " %title - %artist" -p " $test1 $test2%" -e " $test1 $test2%"
fi
if [[ $test1 == "Charging" ]] && [[ $test2 -lt 96 ]]
then
        spotify-now -i " %title - %artist" -p " $test1 $test2%" -e " $test1 $test2%"
fi
if [[ $test1 == "Charging" ]] || [[ $test1 == "Full" ]] && [[ $test2 -gt 95 ]]
then
        spotify-now -i " %title - %artist" -p " Full $test2%" -e " Full $test2%"
fi
if [[ $test1 == "Unknown" ]] && [[ $test2 -gt 95 ]]
then                                                
        spotify-now -i " %title - %artist" -p " Full $test2%" -e " Full $test2%"
fi
if [[ $test1 == "Discharging" ]] && [[ $test2 -lt 21 ]]
then
        spotify-now -i " %title - %artist" -p " Warning $test2%" -e " Warning $test2%"
fi
