print "Truncated sine waves"
output aaasintrunc.wav
length 20
defsound w2 form:sine freq:900 vol:.9 length:10
defsound w1 form:sine freq:900 vol:.75 length:10
#
balance 1
0-1 mix w1
balance 0
0.0097-1 mix w2

balance 1
2-5 mix w1
balance 0
2.01-5 mix w2

balance 1
7-12 mix w1
balance 0
7.001-12 mix w2

balance 1
13-19 mix w1
balance 0
13.0097-19 mix w2
