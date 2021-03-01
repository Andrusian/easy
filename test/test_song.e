print "Tests using notes"
output aaanotes.wav
length 10
defsound W1 form:sine freq:C3 vol:.9 length:20
defsound W2 form:sine freq:E3 vol:.75 length:1
defsound W3 form:sine freq:G3 vol:.75 length:1
defsound W4 form:sine freq:C4 vol:.75 length:1
defsound W13 form:sine freq:G3-C4 vol:.75 length:3
#
balance 0
0 mix W1
balance 1
.5 mix W2
2 mix W3
3 mix W3
4 mix W4
5 mix W13
