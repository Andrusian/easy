print "Tests poly2 signal and compares sine-ish signals."
output aaapoly2.wav
length 60
defsound W1 form:poly2 freq:900 vol:.9 length:15
defsound W2 form:poly2 freq:900 vol:.9 length:15
defsound W3 form:poly1 freq:900 vol:.9 length:15
defsound W4 form:poly1 freq:900 vol:.9 length:15
defsound W5 form:comp freq:900 vol:.9 length:15
defsound W6 form:comp freq:900 vol:.9 length:15
defsound W7 form:sine freq:900 vol:.9 length:15
defsound W8 form:sine freq:900 vol:.9 length:15
#
balance 1
0 mix W1
balance 0
0.01 mix W2
balance 1
15 mix W3
balance 0
15.01 mix W4
balance 1
30 mix W5
balance 0
30.01 mix W6
balance 1
45 mix W7
balance 0
45.01 mix W8
