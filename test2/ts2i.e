print "test suite 2i - silence, overwrite, amplify, pitch"
#
output ts2i.wav
#
defsound LEFT form:sine freq:900 vol:.75 fadein:0 length:60
defsound RIGHT form:sine freq:950 vol:.75 fadein:0 length:60
defsound EXTRA form:saw freq:450 vol:.6 fadein:.5 length:3
#
balance left
0 mix LEFT

# right channel is constant for comparison

balance right
0 mix RIGHT

# do silences first

balance middle
5-8 silence
balance left
10-12 silence
balance right
13-13.5 silence

# next lets test overwrite

balance middle
16 overwrite EXTRA
balance left
20-21 overwrite EXTRA
balance right
24 overwrite EXTRA

# okay, now amplify

balance middle
30-32 amplify 1.1
balance left
33-34 amplify .9
balance right
36-37 amplify .7-.5

# now lets to pitch

balance left
40-45 pitch 1.0-1.05
balance right
46-50 pitch 1.0-.8
balance middle
52-59 pitch 1.0-1.1


