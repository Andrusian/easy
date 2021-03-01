print "test of the built-in warb function used with the modify command"
output aaabilfo.wav
length 60
defsound LEFT form:sine freq:1000 vol:.8 fadein:.1 fadeout:.1 length:55
defsound RIGHT form:sine freq:1000 vol:.8 fadein:.1 fadeout:.1 length:55
#
1 modify LEFT warbvibrato .25       # sets frequency
1 modify LEFT warbtremelo .2         # amplitude variation
3 modify LEFT warb 1                 # sets amplitude
6 modify LEFT warbvibrato 2         # sets frequency
20 modify LEFT warbstop 0         # turns off
#
1 modify RIGHT warbvibrato 1
21 modify RIGHT warb .5
25 modify RIGHT warbvibrato 2
27 modify RIGHT warb 200
30 modify RIGHT warbvibrato 4
35 modify RIGHT warbvibrato 8
40 modify RIGHT warbvibrato 16
50 modify RIGHT warbvibrato .5
#
balance 1
0 mix LEFT
balance 0
0 mix RIGHT
