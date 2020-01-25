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

sudo losetup -o 32256 /dev/loop0 winXP.dd

sudo mount -o ro /dev/loop0 /mnt/suspectDrive
cd /mnt/suspectDrive

md5deep -r * > /home/admin/Desktop/jd/winXP.nameAndmd5List.txt
sleep 15

cd ~/Desktop/jd
sudo umount /mnt/suspectDrive
sudo losetup -d /dev/loop0

cut -f 1 -d ' ' winXP.nameAndmd5List.txt > winXP.md5List.txt

grep -v -f winXP.md5List.txt johnDoe.nameAndmd5List.txt 2>&1 | tee compar.txt

cp ~/Desktop/jd/johnDoe.nameAndmd5List.txt ~/Desktop/jd/johnDoe.nameAndmd5List.copy.txt

#
if [ ! -f johnDoe.nameAndmd5List.copy.txt ]; then
  echo "Input data file not found. Please create in.txt"
  exit 1;
fi

# Test if search.txt exists in pwd
if [ ! -f winXP.md5List.txt ]; then
  echo "Search list file not found. Please create search.txt with 1 search string per line"
  exit 1;
fi

# Execute search
while read word; do
  grep "$word" johnDoe.nameAndmd5List.copy.txt;
done <winXP.md5List.txt >filtered.txt

#https://gist.github.com/uabassguy/f65c6310b68bfefcb626d4d917767f92
