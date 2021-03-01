print "test suite 2f - modifiers part 1: phase,vol,freq,bendphase,bendvol"
#
output ts2f.wav
#
defsound LEFT form:sine freq:900 vol:.8 fadein:0 length:60
defsound RIGHT form:sine freq:900 vol:.8 fadein:0 length:60
#
5 modify LEFT phase .3
10 modify LEFT phase -.3
15 modify LEFT vol .1
25 modify LEFT vol -.1
30 modify LEFT freq 5
# note: frequency won't match up perfectly after next step
35 modify LEFT freq -5
40 modify LEFT bendvol .1 2
45 modify LEFT bendvol -.3 2
50 modify LEFT bendphase .4 3
55 modify LEFT bendphase -.4 3

balance left
0 mix LEFT

# right channel is constant for comparison

balance right
0 mix RIGHT
