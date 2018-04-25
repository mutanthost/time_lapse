#!/bin/bash
NIGHT=$PWD
mkdir $NIGHT.night
echo "moving 01 am to 4am and 8pm to midnight to PWD.night folder"
mv 01 02 03 04 21 22 23 $NIGHT.night/
sleep 2
echo "moving that folder up a level"
mv $NIGHT.night ../ 
