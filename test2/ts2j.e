print "test suite 2j - echo echo echo"
#
output ts2j.wav
#
length 30
defsound SOUND form:sine freq:900 vol:.75 fadein:0 length:.5
defsound SOUND2 form:sine freq:1200 vol:.4 fadein:0 length:.08
#
balance left
1 mix SOUND
5 mix SOUND
10 mix SOUND
15 mix SOUND
20 mix SOUND
2 mix SOUND2
6 mix SOUND2
11 mix SOUND2
16 mix SOUND2
21 mix SOUND2
balance right
1 mix SOUND
5 mix SOUND
12 mix SOUND
17 mix SOUND
23 mix SOUND
2 mix SOUND2
6 mix SOUND2
13 mix SOUND2
18 mix SOUND2
24 mix SOUND2

# let's apply some echoes

1-4 echo lvol:.2 rvol:.2 delay:.45
4-7 echo lvol:.1 rvol:.1 delay:.15
10-18 echo lvol:.4 rvol:.4 delay:1
20-30 echo lvol:.5 rvol:.2 delay:.6

