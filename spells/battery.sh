#!/bin/bash

vd=0
vc=0
vf=0
vu=0
vw=0
while true;do
        test1="$(</sys/class/power_supply/BAT0/status)"
        test2="$(</sys/class/power_supply/BAT0/capacity)"

        if [[ $test1 == "Discharging" ]] && [[ $vd == 0 ]] && [[ $test2 -lt 100 ]] && [[ "$test2" -gt 20 ]]
        then                                                                                        
                notify-send "Battery Status" "$test1 $test2%"
                ((vd = 1))
                ((vc = 0))
                ((vf = 0))
                ((vu = 0))
                ((vw = 0))
        fi
        if [[ $test1 == "Charging" ]] && [[ $vc == 0 ]] && [[ $test2 -lt 96 ]]
        then
                notify-send "Battery Status" "$test1 $test2%"
                ((vd = 0))
                ((vc = 1))
                ((vf = 0))
                ((vu = 0))
                ((vw = 0))
        fi
        if [[ $test1 == "Charging" ]] || [[ $test1 == "Full" ]] && [[ $vf == 0 ]] && [[ $test2 -gt 95 ]]
        then
                notify-send "Battery Status" "Full $test2%"
                ((vd = 0))
                ((vc = 0))
                ((vf = 1))
                ((vu = 0))
                ((vw = 0))
        fi
        if [[ $test1 == "Unknown" ]] && [[ $vu == 0 ]] && [[ $test2 -gt 95 ]]
        then                                                
                notify-send "Battery Status" "Full $test2%"
                ((vd = 0))
                ((vc = 0))
                ((vf = 0))
                ((vu = 1))
                ((vw = 0))
        fi
        if [[ $test1 == "Discharging" ]] && [[ $vw == 0 ]] && [[ $test2 -lt 21 ]]
        then
                notify-send "Battery Status" "Warning $test2%"                                                        
                ((vd = 1))                                                                          
                ((vc = 0))                                                                          
                ((vf = 0))                                                                          
                ((vu = 0))                                                                          
                ((vw = 1))

	fi
sleep 1m
done
