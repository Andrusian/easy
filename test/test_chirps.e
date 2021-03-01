print "same wave, slight freq change, two channels"
output aaachirps.wav
length 40
defsound pulse1 form:sine freq:700-1202 vol:.8 fadein:.1 fadeout:.005 length:1.25
#
#
define beat
+2 mix pulse1
enddefine
#
#
balance 1
0 mix pulse1
repeat 19 macro beat
balance 0
1 mix pulse1
repeat 19 macro beat
