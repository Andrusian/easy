print "test suite 2p - testing warbphase and fade modifier, also balance with time"
#
output ts2p.wav

length 60
defsound A form:sine freq:800 vol:.0 length:35
defsound B form:sine freq:800 vol:.8 length:35

5 modify A fade .8
10 modify A varyphase .25 1
20 modify A varyphase .5 4
30 modify A fade .1 5

12 balance left    # we need the parser to ignore time in this weird situation
0 time
0 mix A

balance right
0 time
0 mix B




