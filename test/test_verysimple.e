print "test - very simple for debugging"
output aaaverysimple.wav
length 5
defsound SWOOP form:comp freq:100-1000 vol:.3-.9 length:2.5
defsound SWOOP2 form:sine freq:100-1000 vol:.3-.9 length:2.5

#------------------------------

balance left
0 mix SWOOP
balance right
2.5 mix SWOOP2
