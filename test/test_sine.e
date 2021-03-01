print "Generates a 10s sine wave with slight delay between L and R channels"
output aaasin.wav
length 11
defsound w2 form:sine freq:900 vol:.9 length:10
defsound w1 form:sine freq:900 vol:.75 length:10
#
balance 1
0 mix w1
balance 0
0.0097 mix w2
