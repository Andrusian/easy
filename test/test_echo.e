print "echo test"
output aaa_echo.wav
length 30
load THING samples/thisworld16.wav start:104.9 end:110
balance left
1 mix THING.left .5
8 mix THING.left .5
15 mix THING.left .5
23 mix THING.left .5
balance right
1.01 mix THING.right .5
8.01 mix THING.right .5
15.02 mix THING.right .5
23.03 mix THING.right .5
1-6 echo lvol:.2 rvol:.2 delay:.1
8-14 echo lvol:.6 rvol:.2 delay:.5
16-24 echo lvol:.5 rvol:.5 delay:.8
25-30 echo lvol:.5 rvol:.5 delay:1

