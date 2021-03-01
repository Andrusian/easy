print "test suite 2m - m is for macros! repeat command. plus named notes"
#
output ts2m.wav

length 30
defsound C form:sine freq:C5 vol:.7 fadein:.1 fadeout:.5 length:1
defsound B form:sine freq:A5 vol:.8 fadein:.1 fadeout:.5 length:1
defsound D form:sine freq:D5-D4 vol:.8 fadein:.1 fadeout:.5 length:1

defsound LOW form:sine freq:400 vol:.7 fadein:.2 fadeout:.3 length:1.5

define SEQ
+.5 mix C
+1 mix B
+1 mix D
+.5 time
enddefine

# do the 3 notes 10 times
0 time
balance left
repeat 10 macro SEQ

# do the bass note on right 10 times
0 time
balance right
repeat 10 +3 mix LOW




