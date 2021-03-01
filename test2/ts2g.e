print "test suite 2g - modifiers part 2 - test warb commands"
#
output ts2g.wav
#
defsound LEFT form:sine freq:900 vol:.6 fadein:0 length:70
defsound RIGHT form:sine freq:900 vol:.6 fadein:0 length:70
#
# tremelo is volume changes. these are fairly simple
# to implement
#
5 modify LEFT warb 1              
5 modify LEFT warbtremelo .1       
10 modify LEFT warbtremelo .2      
15 modify LEFT warbtremelo .1      
15 modify LEFT warb .5      
20 modify LEFT warb 8      
25 modify LEFT warbtremelo .35
28 modify LEFT warbstop 0
#
# results in this section may be difficult to
# assess. the frequency changes have limits on
# how fast they change to avoid discontinuities
#
30 modify LEFT warb .5             
30 modify LEFT warbvibrato .5      
35 modify LEFT warbvibrato 20     
45 modify LEFT warbvibrato 50   
50 modify LEFT warbvibrato 1      
50 modify LEFT warb .3      
55 modify LEFT warb .2
60 modify LEFT warbvibrato 2     
68 modify LEFT warbstop 0
#
balance left
0 mix LEFT

# right channel is constant for comparison

balance right
0 mix RIGHT
