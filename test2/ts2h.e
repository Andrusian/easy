print "test suite 2h - modulate!"
#
output ts2h.wav
#
defsound LEFT form:sine freq:900 vol:.8 fadein:0 length:60
defsound MOD1 form:sine freq:1 vol:.8 fadein:0 length:14
defsound MOD2 form:sine freq:1-20 vol:.8 fadein:0 length:14
defsound MOD3 form:sine freq:902 vol:.8 fadein:0 length:14
defsound MOD4 form:sine freq:100 vol:.8 fadein:0 length:14
defsound RIGHT form:sine freq:900 vol:.6 fadein:0 length:60
#
balance left
0 mix LEFT
#
# now do modulations...
#
1 modulate MOD1
16 modulate MOD2
31 modulate MOD3
46 modulate MOD4

# right channel is constant for comparison

balance right
0 mix RIGHT
