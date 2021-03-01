print "Sine wave with silences punched in."
output aaasilence.wav
length 11
defsound w2 form:sine freq:900 vol:.9 length:10
defsound w1 form:sine freq:901 vol:.75 length:10
#
balance 1
0 mix w1
2-2.25 silence
5-5.5 silence
9-9.3 silence
balance 0
0.0097 mix w2
2.25-2.75 silence
7-7.05 silence

