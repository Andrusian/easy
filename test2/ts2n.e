print "test suite 2n - symbols, plus some other stuff"
#
freq1=1000
freq2=1050
freq3=510
freq4=1020

output ts2n.wav

length 30
defsound SOUND1 form:sine freq:$(freq1) vol:.7 fadein:.1 fadeout:.1 length:30
defsound SOUND2 form:sine freq:$(freq2) vol:.7 fadein:.1 fadeout:.1 length:30
defsound SOUND3 form:sine freq:$(freq3)   vol:.6 fadein:.05 fadeout:0 length:.5
defsound SOUND4 form:sine freq:$(freq4) vol:.6 fadein:.05 fadeout:0 length:30

balance left
0 mix SOUND1 vol:.6
0 mix SOUND2 vol:.6

balance right
0 mix SOUND4 vol:.8
0 time
repeat 38 +.75 mix SOUND3




