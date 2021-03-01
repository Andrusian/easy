print "shorted test of the mod/phase command with a sine wave"
output aaa_phshort.wav
length 8
#
# right channel waves are the base
#
#
defsound w2 sine freq:1000 vol:.9 fadein:.5 fadeout:0.01 length:4
time 0
+.5 modify w2 phase +.25
+.5 modify w2 phase -.25
+.5 modify w2 phase +.1
+.5 modify w2 phase -.1

# Left channel has the phase shifts
#
defsound w1 sine freq:850 vol:.9 fadein:.5 fadeout:0.01 length:4
#
# first wave is steady
#
time 0
+.5 modify w1 phase +.25
+.5 modify w1 phase -.25
+.5 modify w1 phase +.1
+.5 modify w1 phase -.1
#
# second wave is a rising one
#
#
defsound base sine freq:850 vol:.9 fadein:.5 fadeout:0.01 length:4
defsound base2 sine freq:1000 vol:.9 fadein:.5 fadeout:0.01 length:4

balance left
0 mix w1
4 mix w2
#
balance right
0 mix base
4 mix base2

