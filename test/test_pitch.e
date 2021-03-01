print "Generates a 10s sine wave with slight delay between L and R channels"
output aaapitch.wav
length 8
defsound w2 form:sine freq:900 vol:.9 length:10
defsound w1 form:sine freq:900 vol:.75 length:10
#
balance 1
0 mix w1
balance 0
0.0097 mix w2
1-2 pitch change:1.000-1.1
3-4 pitch change:.9-.6
balance 1
4-5 pitch change:1.000-1.2
5-6 pitch change:.9-.6