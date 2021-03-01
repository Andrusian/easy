print "test suite 2k - softclipping"
#
output ts2l.wav
#
length 30
defsound LEFT form:sine freq:900 vol:1.1 fadein:0 length:30
defsound RIGHT form:sine freq:1201 vol:1.1 fadein:0 length:30
defsound EXTRA form:sine freq:1050 vol:.2 length:1
#
balance left
0 mix LEFT
balance right
0 mix RIGHT

4 mix EXTRA
12 mix EXTRA
16 mix EXTRA
20 mix EXTRA
24 mix EXTRA
28 mix EXTRA

balance centre

# do the clipping
# values used require experimentation but, done right, do result
# in nicely rounded signals

0-10 softclip strength:1.4 voladj:1.2
10-20 softclip strength:1.5 voladj:1.2
20-30 softclip strength:1.6 voladj:1.2


