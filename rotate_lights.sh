#!/system/bin/sh
#Softkey Rotation helper script
#By St.Matt, modified by Evan McClain

if [ $1 -eq 1 ] #lights in landscape
then
    brightness=`cat /sys/class/leds/button-backlight-portrait/brightness`
    if [ $brightness -ne 0 ]
    then
        echo $brightness > /sys/class/leds/button-backlight-landscape/brightness
        echo 0 > /sys/class/leds/button-backlight-portrait/brightness
    fi
else #lights in portrait
    brightness=`cat /sys/class/leds/button-backlight-landscape/brightness`
    if [ $brightness -ne 0 ]
    then
        echo $brightness > /sys/class/leds/button-backlight-portrait/brightness
        echo 0 > /sys/class/leds/button-backlight-landscape/brightness
    fi
fi
