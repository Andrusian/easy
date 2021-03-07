print "The missing test for LFO and amods."
output ts2q.wav
length 60
deflfo BOB form:square freq:4 maxvol:1 minvol:0 duty:.5
deflfo TED form:sine freq:4-20 maxvol:1 minvol:.25 length:8   # note minvol not zero
deflfo JANE form:saw freq:2-5 maxvol:1 minvol:0 length:5

defsound BASE form:sine freq:900 vol:.9 length:9
defsound MOD1 form:sine freq:25 vol:.9 length:30
#
balance left   # should not matter for lfobals

# mix-based lfo's only work on that sound...

0 mix BASE lfo:BOB

10 mix BASE lfo:TED

20 mix BASE lfobal:BOB

30 mix BASE lfobal:JANE

40 mix BASE lfobal:JANE

balance middle

# make a more interesting signal...

50 mix BASE
60 mix BASE
70 mix BASE
50 modulate MOD1

# amods work on the whole signal...

50-60 amod BOB

60-70 amod TED

80-90 amod JANE


