#!/bin/bash
# Yes, I know that this thread is over a year old. I've been using this for over 2 years though, and it works great with 10,000+ images:

# 1080p@24fps, no sound

# ls -1v | grep JPG > files.txt
# mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 -o DAY1.avi -mf type=jpeg:fps=15 mf://@files.txt -vf scale=1920:1080

# 4k@90fps, no sound

# ls -1v | grep JPG > files.txt
# mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 -o DAY1.avi -mf type=jpeg:fps=90 mf://@files.txt -vf scale=3840:2160
# trying ffmpeg
echo "setting FATDIR=$PWD"
FATDIR=$PWD
echo "flattening folder"
find $FATDIR/ -mindepth 2 -type f -exec mv -i '{}' $FATDIR/ ';'
sleep 5
echo "cleaning empty directories"
find ./ -depth -type d -exec rmdir {} +
sleep 2
echo "find and clean empty files"
find ./ -type f -size 0 {} +
echo "creating list of descending files"
ls -1v |grep jpg > files.txt
# echo "trying out ffmpeg"
# echo "output file should be $PWD.mp4"
# ffmpeg -f 20171125_ -pattern_type glob -i '*.jpg' -c:v libx264 1125.mp4
# The libx265 is hvec and non handbrakeable but very small in size so we will use h264
# ffmpeg -f image2 -pattern_type glob -i '*.jpg' -c:v libx265 -r 15 $FATDIR.mp4
# this is h264
# ffmpeg -f image2 -pattern_type glob -i '*.jpg' -c:v libx264 -r 15 $FATDIR.mp4
echo "let's try mencoder instead of ffmpeg"
# mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 -o DAY1.avi -mf type=jpeg:fps=90 mf://@files.txt -vf scale=3840:2160
echo "output should be $PWD.avi"
mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=21600000 -o $FATDIR.avi -mf type=jpeg:fps=15 mf://@files.txt -vf scale=1920:1080
