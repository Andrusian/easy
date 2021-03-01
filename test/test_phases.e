print "tests 3 different modify event commands"
output aaa_phases.wav
length 40
#
# left channel varied
# right channel is constant
#
defsound BASEL form:sine freq:1000 vol:.7 fadein:.5 fadeout:0.01 length:40
defsound BASER form:sine freq:1000 vol:.7 fadein:.5 fadeout:0.01 length:40
#
10 modify BASEL freq +5
20 modify BASEL vol .1
30 modify BASEL phase .5
#
balance left
0 mix BASEL
#
balance right
0 mix BASER
