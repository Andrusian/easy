print "A test of the include file"
output aaainclude.wav
length 60
#
include include_std.e
#
balance left
0. mix COMP900 vol:1.4
0. modulate SINE2 vol:1
#0. lfo LFOSP5 $(END)
balance right
0. mix SINE9015 vol:1.1
0. lfo LFOS4 $(END)



