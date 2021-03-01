print "Generates a 10s sine wave with slight delay between L and R channels"
output aaapitch2.wav
length 30
defsound w2 form:sine freq:900 vol:.9 length:15
defsound w1 form:sine freq:900 vol:.75 length:15
#
balance 1
0 mix w1
15 mix w1
balance 0
0 mix w2
15 mix w2
0-15 pitch change:1.000-1.110
balance 1
15-30 pitch change:1.000-.990