#!/bin/sh

adb shell screencap /sdcard/$1.png
adb pull /sdcard/$1.png

if [ $# == 2 ]
then
	mv $1.png $2
fi
