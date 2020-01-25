#!/bin/bash
#cd /media
#sudo chown -R admin:admin admin

cd ~/Desktop/jd
#sudo chmod 777 fileCarving
#sudo rm *.txt
#sudo rm *.md5
#sudo rm *.dd
#sudo rm -rv fileCarving

#sudo apt-get update
#sudo apt install vim

md5sum /media/student_notes/2018-19/CMP209/handouts/johnDoe.dd > jd.md5
md5sum /media/student_notes/2018-19/CMP209/handouts/winXP.dd > winXPOrig.md5

cmp --silent ~/Desktop/jd/jd1.md5 ~/Desktop/jd/jd2.md5 || sudo bash ~/Desktop/jd/hash.sh

cmp --silent ~/Desktop/jd/XP.md5 ~/Desktop/jd/XP2.md5 || sudo bash ~/Desktop/jd/hash2.sh

sudo bash fileCarve.sh 2>&1 | tee 
sudo bash fileSearch.sh 2>&1 | tee output2.txt
