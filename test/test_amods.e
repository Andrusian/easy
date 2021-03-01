print "Tests some basic amplitude mods using LFOs applied to sine waves."
output aaalfo.wav
length 60
deflfo l1 form:square freq:4 maxvol:1 minvol:0 duty:.5
deflfo l2 form:square freq:4 maxvol:1 minvol:.1 duty:.5
deflfo l3 form:sine freq:8 maxvol:1 minvol:.1 length:10
defsound w2 form:sine freq:900 vol:.9 length:60
defsound w1 form:sine freq:900 vol:.75 length:60
#
balance 1
0 mix w1
1-5 amod l1
8-12 amod l1
balance 0
0 mix w2
10-20 amod l2
22-30 amod l3
