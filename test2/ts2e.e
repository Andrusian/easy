print "test suite 2e - basic waveform with mix and lfo"
#
output ts2e.wav
#
defsound A form:sine freq:900 vol:.8 fadein:0 length:10
deflfo L1 form:square freq:2 minvol:0 maxvol:1
deflfo L2 form:sine freq:2 minvol:0 maxvol:1
deflfo L3 form:saw freq:2 minvol:0 maxvol:1
deflfo L4 form:square freq:2 minvol:.5 maxvol:1
deflfo L5 form:sine freq:2 minvol:.5 maxvol:1
deflfo L6 form:saw freq:2 minvol:.5 maxvol:1
deflfo L7 form:square freq:2 minvol:.5 maxvol:1 duty:.8
#
balance middle
0 mix A lfo:L1
10 mix A lfo:L2
20 mix A lfo:L3
30 mix A lfo:L4
40 mix A lfo:L5
50 mix A lfo:L6
60 mix A lfo:L7
70 mix A lfobal:L1
80 mix A lfobal:L2
90 mix A lfobal:L3
100 mix A lfobal:L4
110 mix A lfobal:L5
120 mix A lfobal:L6
130 mix A lfobal:L7



