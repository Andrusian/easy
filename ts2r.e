print "Testing min sec time format."
output ts2r.wav
#length 3m0s
length 180

defsound BASE form:sine freq:900 vol:.9 length:10

#
balance left   # should not matter for lfobals

# mix-based lfo's only work on that sound...

0m0s mix BASE
30 mix BASE
40 mix BASE
0m10s mix BASE 
1m0s mix BASE 
1m30s mix BASE
2m15s mix BASE 


0m25-0m40s amplify .3



