cp /media/student_notes/2018-19/CMP209/handouts/johnDoe.dd ~/Desktop/jd
md5sum johnDoe.dd > johnDoeAfterInitailImaging.md5

cut -f 1 -d ' ' johnDoe.md5 > jd1.md5
cut -f 1 -d ' ' johnDoeAfterInitailImaging.md5 > jd2.md5

chmod 444 johnDoeAfterInitailImaging.md5
chmod 444 jd.md5
chmod 444 jd1.md5
chmod 444 jd2.md5
