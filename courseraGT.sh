#!/bin/bash

# This script downloads Graph theory course content from Coursera.
# Create a directory, say GT, and run the script.
# Creates a directory for each lecture. A directory has Video, its srt and slides.

for i in {1..48}
do
mkdir $i
cd $i
wget https://class.coursera.org/gametheory-004/lecture/download.mp4?lecture_id=$((i*2+1)) -O Lecture$i
wget https://class.coursera.org/gametheory-004/lecture/subtitles?q=$((2*i+1))\_en\&format=srt -O Lecture$i.srt
cd ../
done
