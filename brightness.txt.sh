#!/bin/bash
#created on: Tue Feb 11 00:06:37 IST 2020

#funtion checks if input is in required range
function checkInput() { 
	if [ $1 -le $2 ]
		then
			if [ $1 -ge 0 ]
				then 
					return 1
				else
					return 0
			fi
		else
			return 0
	fi
}

#script starts here
MAX_B_F="/sys/class/backlight/intel_backlight/max_brightness"
CUR_B_F="/sys/class/backlight/intel_backlight/brightness"
MAX_B_V=`cat $MAX_B_F` #max brightness value

echo "------------------"
printf "current brightness: "
#more /sys/class/backlight/intel_backlight/brightness
cat $CUR_B_F
#echo "------------------"
echo "make sure you have super user access!!!";
echo "------------------";

printf "change brightness[range:0-`cat $MAX_B_F`]: "
read BRIGHTNESS
checkInput $BRIGHTNESS $MAX_B_V

if [ $? -eq 1 ] 
	then 
		echo $BRIGHTNESS > $CUR_B_F
		exit 0
	else
		echo "Warnning: input is out of range" 1>&2
fi
