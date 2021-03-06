print "test suite 2b - waveform frequency slides"
#
output ts2b.wav
#
defsound A form:sine freq:800-900 vol:.75 fadein:1 length:5
defsound B form:poly1 freq:900-800 vol:.75 fadein:1 length:5
defsound C form:poly2 freq:800-900 vol:.75 fadein:1 length:5
defsound D form:comp freq:900-800 vol:.75 fadein:1 length:5
defsound E form:square freq:800-900 vol:.75 fadein:1 length:5
defsound F form:saw freq:900-800 vol:.75 fadein:1 length:5
defsound G form:tens freq:800-900 vol:.75 fadein:1 length:5
#
balance centre
0 mix A vol:1
5 mix B vol:1
10 mix C vol:1
15 mix D vol:1
20 mix E vol:1
25 mix F vol:1
30 mix G vol:1
