#!/bin/bash

if [ ! -d "input" ]
then
	echo "input directory not found, creating one"
	mkdir input
fi

if [ ! -d "output" ]
then
	echo "output directory not found, creating one"
	mkdir output
fi

if [ "$(ls -A "input")" ] 
then

	for i in input/*; 
	do 
		filename=$(basename "$i")
		./ffmpegAMV -i "$i" -f amv -s 128x128 -r 16 -ac 1 -ar 22050 -qmin 3 -qmax 3 output/"${filename%.*}".amv

	done;
else
	echo "input directory is empty :("
fi
