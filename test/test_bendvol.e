print "tests bendvol modifier"
output aaa_bandvol.wav
length 12
#
# left channel varied
# right channel is constant
#
defsound BASEL form:sine freq:1000 vol:.5 fadein:.5 fadeout:0.01 length:12
defsound BASER form:sine freq:1000 vol:.5 fadein:.5 fadeout:0.01 length:12
#
1 modify BASEL bendvol +.2
3 modify BASEL bendvol -.2
5 modify BASEL bendvol +.1 .25
7 modify BASEL bendvol -.1 .25
9 modify BASEL bendvol +.25 .4
11 modify BASEL bendvol -.25 .7
#
balance left
0 mix BASEL
#
balance right
0 mix BASER
