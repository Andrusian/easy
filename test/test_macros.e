print "tests the repeat function and defining and using a macro"
output aaamacros.wav
length 60
defsound pulse1 form:comp freq:800-802 vol:.8 fadein:.4 fadeout:.4 length:1.25
#
#
define beat
+2 mix pulse1
enddefine
#
#
balance 1
0 mix pulse1
repeat 5 +2 mix pulse1
+4 time
macro beat
balance .4
+1 mix pulse1
repeat 19 macro beat
