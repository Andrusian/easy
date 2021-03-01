print "Tests some LFO-based pan/balance effects"
output aaalfobal.wav
length 60
deflfo l1 form:sine freq:4 maxvol:1 minvol:0 duty:.5
deflfo l2 form:square freq:4 maxvol:1 minvol:.1 duty:.5
deflfo l3 form:sine freq:8 maxvol:1 minvol:.1 length:10
defsound w1 form:sine freq:900 vol:.8 length:19
#
balance 1
0 mix w1 lfobal:l1
20 mix w1 lfobal:l2
40 mix w1 lfobal:l3

