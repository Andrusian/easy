print "test - soft clipping"
output aaasoftclipping.wav
length 120
BEAT=+.5
BEAT2=+1
defsound KICKL form:comp freq:600-590 fadein:.1 vol:.5-.6 length:.3
defsound KICKR form:comp freq:600-590 fadein:.1 vol:.5-.6 length:.45

defsound INTROL form:sine freq:900.01 fadein:1 vol:.6-.7 length:14
defsound INTROR form:sine freq:900 fadein:1 vol:.6-.9 length:14

defsound PART1L form:sine freq:900.01 fadein:1 vol:.5-.7 length:30
defsound PART1R form:sine freq:900 fadein:1 vol:.5-.7 length:30

defsound PART2L form:comp freq:900 fadein:.05 vol:.5-.7 length:45
defsound PART2R form:comp freq:900 fadein:.05 vol:.5-.7 length:45

defsound PART3L form:comp freq:900 fadein:.05 vol:.7-.7 length:60
defsound PART3R form:comp freq:900.35 fadein:.05 vol:.7-.7 length:60

deflfo BUZZ form:square freq:15 minvol:.5 maxvol:1.
deflfo BUZZ2 form:saw freq:20 minvol:.75 maxvol:1.2
#
3 modify PART1R lfovibrato .5
3 modify PART1R lfo .1
3 modify PART1R lfotremelo .1
3.5 modify PART1L lfovibrato .5
3.5 modify PART1L lfo .1
3.5  modify PART1L lfotremelo .1
#
3 modify PART1R lfovibrato .5
3 modify PART1R lfo 2
3.5 modify PART1L lfovibrato .5
3.5 modify PART1L lfo 2
#
20 modify PART3R freq -.05
#
# INTRO.......

0 time
balance left
0 mix INTROL .5

balance right
0 mix INTROR .5

# BEAT.......

balance left
6 time
repeat 93 $(BEAT2) mix KICKL vol:.7

balance right
6.5 time
repeat 186 $(BEAT) mix KICKR vol:.7

balance left
93 time
repeat 60 $(BEAT) mix KICKL vol:.7

balance right
93 time
repeat 60 $(BEAT) mix KICKR vol:.5

balance right
93.25 time
repeat 60 $(BEAT) mix KICKR vol:.7

# PART1.......

balance left
18 mix PART1L
balance right
18 mix PART1R

# PART2.......

balance left
48 mix PART2L
balance right
48 mix PART2R

# PART3.......

balance left
93 mix PART3L
balance right
93.001 mix PART3R

balance .5
124-153 amplify 153 1.1-1.3


# APPLY LFO here and there

balance left
60-62 amod BUZZ
65-66 amod BUZZ
70-72 amod BUZZ
75-77 amod BUZZ
80-82 amod BUZZ
100-103 amod BUZZ
110-112 amod BUZZ2
120-123 amod BUZZ2
130-133 amod BUZZ2
140-143 amod BUZZ2
144-146 amod BUZZ2

100-110 compress target:1 strength:.4
10-20 compress target:1 strength:.4

120-130 softclip
