print "test for a bunch of wave forms and options"
length 60
defsound base form:sine freq:800 vol:.8 fadein:.25 fadeout:0 length:22
10 modify base phase -.4
14.1 modify base phase -.2
16 modify base freq -50
12 modify base freq +50
1 modify base phase -.2
+.5 modify base phase +.2
defsound saw1 form:saw freq:800-600 vol:.8 fadein:.25 fadeout:1 length:2
defsound comp1 form:comp freq:900 vol:.6-.9 fadein:.25 fadeout:1 length:3
defsound sq1 form:square freq:800 vol:.5 fadein:.25 length:2
defsound tens1 form:tens freq:800 vol:.75 fadein:.5 length:2
5 mix base 
30 mix saw1 .5
34 mix saw1 
38 mix sq1 
44 mix tens1 
50 mix comp1
55 mix comp1
