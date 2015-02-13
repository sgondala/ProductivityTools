#!/bin/bash

# This script downloads Andrew NG's Machine learning course content from Coursera.
# Create a directory say ML and run the script.
# Creates a folder for each lecture. A folder has Video, its srt and slides.

for i in {1..114}
do
mkdir $i
cd $i
wget https://class.coursera.org/ml-005/lecture/download.mp4?lecture_id=$i -O Lecture$i
wget https://d396qusza40orc.cloudfront.net/ml/docs/slides/Lecture$i.pdf
wget https://class.coursera.org/ml-005/lecture/subtitles?q=$i\_en\&format=srt -O Lecture$i.srt
cd ../
done
