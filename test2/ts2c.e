print "test suite 2c - basic waveform volume slides"
#
output ts2c.wav
#
defsound A form:sine freq:900 vol:.1-.9 fadein:0 length:5
defsound B form:poly1 freq:900 vol:.9-.1 fadein:0 length:5
defsound C form:poly2 freq:900 vol:.1-.9 fadein:0 length:5
defsound D form:comp freq:900 vol:.9-.1 fadein:0 length:5
defsound E form:square freq:900 vol:.1-.9 fadein:0 length:5
defsound F form:saw freq:900 vol:.9-.1 fadein:0 length:5
defsound G form:tens freq:900 vol:.1-.9 fadein:0 length:5
#
balance centre
0 mix A vol:1
5 mix B vol:1
10 mix C vol:1
15 mix D vol:1
20 mix E vol:1
25 mix F vol:1
30 mix G vol:1
