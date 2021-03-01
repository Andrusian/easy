print "test suite 2k - compression"
#
output ts2k.wav
#
length 30
defsound LEFT form:sine freq:900 vol:.85 fadein:0 length:30
defsound RIGHT form:sine freq:1201 vol:.85 fadein:0 length:30
#
balance left
0 mix LEFT
balance right
0 mix RIGHT

balance middle
2-5 compress target:.8 strength:.1
8-12 compress target:1 strength:.2
15-20 compress target:.6 strength:.2
balance left
22-25 compress target:1 strength:.3
balance right
25-29 compress target:.85 strength:.3


