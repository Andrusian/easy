print "notch test"
output aaa_notch.wav
length 10
#
defsound WAVE form:sine freq:500 vol:.9 length:10
#
balance both
0 mix WAVE
1 notch
2 notch .1
balance left
3 notch
balance right
4 notch .5
balance both
5 notch .75
