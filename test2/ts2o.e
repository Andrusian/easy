print "test suite 2o - double modify cmd and additional modifiers"
#
output ts2o.wav

length 60
defsound A form:sine freq:A4 vol:.8 length:60
defsound B form:sine freq:A3 vol:.8 length:60

2 modify A volabs .5
4 modify A vol -.1 ;A freq 2
6 modify A vol 0;A freq 4
8 modify A bendvol .2 3 ;B freq 4

balance left
0 time
0 mix A

balance right
0 time
0 mix B




