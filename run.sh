#!/bin/bash
#cd /media
#sudo chown -R admin:admin admin

cd ~/Desktop/jd
sudo chmod 777 fileCarving
sudo rm *.txt
sudo rm *.md5
sudo rm *.dd
sudo rm -rv fileCarving

#sudo apt-get update
#sudo apt install vim
#sudo apt-get install python
#sudo apt install python

# Dependencies for Python(3.7+)
#sudo -H python -m pip install --upgrade pip
#sudo pip install -e git+https://github.com/tqdm/tqdm.git@master#egg=tqdm
#sudo -H python -m pip install tqdm

md5sum /media/student_notes/2018-19/CMP209/handouts/johnDoe.dd > jd.md5
md5sum /media/student_notes/2018-19/CMP209/handouts/winXP.dd > winXPOrig.md5
sudo bash fileCarve.sh 2>&1 | tee output1.txt
sudo bash fileSearch.sh 2>&1 | tee output2.txt
