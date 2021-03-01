print "Tests various LFO-based pan/balance mix effects"
output aaalfobal.wav
length 120
deflfo l1 form:sine freq:4 maxvol:1 minvol:0 duty:.5
deflfo l2 form:square freq:4 maxvol:1 minvol:.1 duty:.5
deflfo l3 form:sine freq:8 maxvol:1 minvol:.5 length:10
defsound w1 form:sine freq:900 vol:.8 length:15
#
balance 1
0 mix w1 lfobal:l1
15 mix w1 lfobal:l2
30 mix w1 lfobal:l3
balance .7
45 mix w1 lfo:l1
60 mix w1 lfo:l2
75 mix w1 lfo:l3

