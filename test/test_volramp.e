print "3 different waves, tests the volume ramp functions"
output aaavolramp.wav
length 30
defsound w1 form:sine freq:750 vol:.4-.9 fadein:1.0 fadeout:0.01 length:10
defsound w2 form:comp freq:750 vol:.9-.7 fadein:0.01 fadeout:0.01 length:10
defsound w3 form:square freq:750 vol:.4-.9 fadein:0.01 fadeout:1.0 length:10
balance 1
0 mix w1
10 mix w2
20 mix w3
