print "tests 3 different modify event commands"
output test_3mod.wav
length 40
#
# left channel varied
# right channel is constant
#
defsound BASEL form:sine freq:1000 vol:.7 fadein:0 fadeout:0 length:40
defsound BASER form:sine freq:1000 vol:.7 fadein:0 fadeout:0 length:40
#
define freqrep
+1 modify BASEL freq +8
+1 modify BASEL freq -8
enddefine

define volrep
+1 modify BASEL vol .1
+1 modify BASEL vol -.1
enddefine

define phaserep
+1 modify BASEL phase .4
+1 modify BASEL phase -.4
enddefine

repeat 5 macro freqrep
repeat 5 macro volrep
repeat 5 macro phaserep
#
balance left
0 mix BASEL
#
balance right
0 mix BASER
