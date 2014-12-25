#!/bin/bash

for i in input/*; 
do 
	filename=$(basename "$i")
	./ffmpegAMV -i "$i" -f amv -s 128x128 -r 16 -ac 1 -ar 22050 -qmin 3 -qmax 3 output/"${filename%.*}".amv

done;

