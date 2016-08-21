#!/bin/bash

fileName="thisLogo.png"

directories=("h" "m" "xh" "xxh" "xxxh")
size=("72" "48" "98" "144" "192")

for ((i=0; i < 5; i++))
do
	cd "mipmap-"${directories[$i]}"dpi"
	cp ../$fileName ic_launcher.png
	convert -resize $size"x"$size ic_launcher.png ic_launcher.png
	cd ..
done
