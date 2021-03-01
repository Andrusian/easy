print "load sample test"
output aaa_sample.wav
length 60
load THING samples/thisworld16.wav start:104.9 end:110
balance left
1 mix THING .5
balance right
1.05 mix THING

