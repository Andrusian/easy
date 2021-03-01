print "same wave, slight freq change, two channels"
output aaastereo.wav
length 40
defsound pulse1 form:sine freq:800-802 vol:.8 fadein:.1 fadeout:.1 length:1.25
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
