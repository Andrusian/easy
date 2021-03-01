print "test suite 2d - test different volumes and mix volumes and balances"
#
output ts2d.wav
#
defsound A form:sine freq:900 vol:1 fadein:0 length:1
defsound B form:sine freq:900 vol:.8 fadein:0 length:1
defsound C form:sine freq:900 vol:.6 fadein:0 length:1
defsound D form:sine freq:900 vol:.4 fadein:0 length:1
defsound E form:sine freq:900 vol:.2 fadein:0 length:1
#
balance centre
0 mix A vol:1
1 mix B vol:1
2 mix C vol:1
3 mix D vol:1
4 mix E vol:1
#
balance centre
10 mix A vol:.8
11 mix A vol:.6
12 mix A vol:.4
13 mix A vol:.2
14 mix A vol:.1
#
balance 1
20 mix A vol:1
balance .9
21 mix A vol:1
balance .8
22 mix A vol:1
balance .7
23 mix A vol:1
balance .6
24 mix A vol:1
balance .5
25 mix A vol:1
balance .4
26 mix A vol:1
balance .3
27 mix A vol:1
balance .2
28 mix A vol:1
balance .1
29 mix A vol:1
balance 0
30 mix A vol:1
