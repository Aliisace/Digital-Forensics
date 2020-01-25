cp /media/student_notes/2018-19/CMP209/handouts/winXP.dd ~/Desktop/jd
md5sum ~/Desktop/jd/winXP.dd > winXPAfterInitailImaging.md5

cut -f 1 -d ' ' winXPOrig.md5 > XP.md5
cut -f 1 -d ' ' winXPAfterInitailImaging.md5 > XP2.md5

chmod 444 winXPOrig.md5
chmod 444 winXPAfterInitailImaging.md5
chmod 444 XP.md5
chmod 444 XP2.md5
