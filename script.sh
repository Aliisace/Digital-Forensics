#!/bin/bash
cp /media/student_notes/2018-19/CMP209/handouts/johnDoe.dd ~/Desktop/jd

cd ~/Desktop/jd
md5sum johnDoe.dd > johnDoeAfterInitailImaging.md5
chmod 444 johnDoeAfterInitailImaging.md5


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


#cd ~/Desktop/jd/fileCarving/metacamResults/
#grep -F "Make: Canon"~/Desktop/jd/fileCarving/metacamResults/

#serach filesystem
cd ~/Desktop/jd
sudo losetup -o 32256 /dev/loop0 johnDoe.dd
sudo mount -o ro /dev/loop0 /mnt/suspectDrive

cd /mnt/suspectDrive
ls > ~/Desktop/jd/ls.txt

md5deep -r * > /home/admin/Desktop/jd/johnDoe.nameAndmd5List.txt
sleep 15
cd ~/Desktop/jd

sudo umount /mnt/suspectDrive
sudo losetup -d /dev/loop0

cp /media/student_notes/2018-19/CMP209/handouts/winXP.dd ~/Desktop/jd
md5sum ~/Desktop/jd/winXP > winXPAfterInitailImaging.md5
sudo losetup -o 32256 /dev/loop0 winXP.dd
sudo mount -o ro /dev/loop0 /mnt/suspectDrive
cd /mnt/suspectDrive

md5deep -r * > /home/admin/Desktop/jd/winXP.nameAndmd5List.txt
sleep 15
cd ~/Desktop/jd
sudo umount /mnt/suspectDrive
sudo losetup -d /dev/loop0

cut -f 1 -d ' ' winXP.nameAndmd5List.txt > winXP.md5List.txt
