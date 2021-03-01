
print "generate a complex signal, resample it, and paste it twice later"
output aaaresample.wav
length 16
defsound W1 form:sine freq:750 vol:.6-.9 fadein:.15 fadeout:0.01 length:10
defsound W2 form:comp freq:750 vol:.9-.7 fadein:0.01 fadeout:0.01 length:10
defsound M1 form:sine freq:50-200 vol:.9 fadein:.2 length:5
deflfo LFO1 form:square freq:8 maxvol:1. minvol:.1 duty:.5
balance 1
0 mix W1
1 modulate M1   
balance 0
0.4 mix W2
5 modulate M1
balance 0  
3.3-4 amod LFO1
1-1.5 amod LFO1
#
1-2 resample Z1
balance 1
10.5 mix Z1.left
balance 0
12 mix Z1.right

