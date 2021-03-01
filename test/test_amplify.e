print "Tests amplify command"
output aaaamp.wav
length 60
defsound w1 form:sine freq:900-1000 vol:.6 length:60
#
balance 1
0 mix w1 
balance 0
0.01 mix w1 
balance 1
5-10 amplify 1.0-1.2 
balance 0
11-20 amplify 1.1-1.2 
balance .5
20-30 amplify .7-1.1
balance 1
40-50 amplify 1.3-0.5 
balance 0
42-58 amplify 1.4-0.0 
