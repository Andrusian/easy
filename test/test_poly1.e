print "Tests the polyphonic signal type."
output aaapoly1.wav
length 30
defsound W1 form:poly1 freq:900 vol:.9 length:15
defsound W2 form:poly1 freq:900 vol:.9 length:15
defsound W3 form:sine freq:900 vol:.9 length:15
defsound W4 form:sine freq:900 vol:.9 length:15
#
balance 1
0 mix W1
balance 0
0.01 mix W2
balance 1
15 mix W3
balance 0
15.01 mix W4
