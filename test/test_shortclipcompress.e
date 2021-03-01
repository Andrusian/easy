print "test - short compress and clipping"
output aaashortclipcompress.wav
length 20
BEAT=+.5
BEAT2=+1
defsound KICKBIG form:sine freq:600-590 fadein:.1 vol:.9 length:.25
defsound KICKSMALL form:sine freq:600-590 fadein:.1 vol:.6 length:.25

defsound BASE form:sine freq:900 fadein:.1 vol:.1-.8 length:12
defsound BASE2 form:sine freq:905 fadein:.1 vol:.1-.8 length:10

# BEAT.......

balance left
0 mix BASE
10 mix BASE

balance right
0.00025 mix BASE2
10.00025 mix BASE2

balance left
0 time
repeat 19 +1 mix KICKBIG
.5 time
repeat 19 +1 mix KICKSMALL

balance both
0-10 compress target:.95 strength:.2
10-20 softclip
