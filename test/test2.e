print "Simple mono sliding frequency with a silence"
length 60
defsound base form:sine freq:800-1200 vol:.8 fadein:.25 fadeout:0 length:22
10 mix base .1
20 silence .5

