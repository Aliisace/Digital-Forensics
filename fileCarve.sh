#!/bin/bash

cd ~/Desktop/jd
mmls -t dos johnDoe.dd > ~/Desktop/jd/johnDoemmls.txt
#fssat johnDoe.dd >> ~/Desktop/jd/johnDoefssat.txt

#filcarving
mkdir ~/Desktop/jd/fileCarving
mkdir ~/Desktop/jd/fileCarving/output

foremost -v -o ~/Desktop/jd/fileCarving/output -i johnDoe.dd

#metacam
mkdir ~/Desktop/jd/fileCarving/metacamResults

cd ~/Desktop/jd/fileCarving/output/jpg
for f in *.jpg
do
	metacam -a $f >> ~/Desktop/jd/fileCarving/metacamResults/output.txt
done

cd ~/Desktop/jd/fileCarving/output/png
for f in *.png
do
	metacam -a $f >> ~/Desktop/jd/fileCarving/metacamResults/output.txt
done

cd ~/Desktop/jd/fileCarving/output/bmp
for f in *.bmp
do
	metacam -a $f >> ~/Desktop/jd/fileCarving/metacamResults/output.txt
done
