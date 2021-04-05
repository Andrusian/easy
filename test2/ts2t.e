print "detailed look at phase stuff, changing bendphase and varyphase speeds"

# this idea is getting seriously complicated
# the phase speed will change automatically as the
# signal changes

output ts2t.wav
length 180

defsound A form:sine freq:1000 vol:.9 length:60
defsound APH form:sine freq:1000 vol:.9 length:60
defsound APH2 form:sine freq:1000 vol:.9 length:60
defsound APH3 form:sine freq:1000 vol:.9 length:60


0 modify APH bendphase .5 3 slow
10 modify APH bendphase .5 9 veryslow
20 modify APH bendphase .5 3 medium
30 modify APH bendphase .5 3 fast
40 modify APH phase -.5 1                  # investigate bug ... -ve vs +ve
41 modify APH phase .5 1
50 modify APH bendphase -.5 1               # investigate bug ... -ve vs +ve
55 modify APH bendphase .5 1




0 modify APH2 varyphase .2 .5
10 modify APH2 varyphase .5 5
15 modify APH3 bendvol -.3 4                  # re-testing because we touched this code
20 modify APH2 varyphase .3 2
30 modify APH2 varyphase .2 5 slow
50 modify APH2 varyphase .15 1 medium


0 modify APH3 bendphase .4 8 veryslow
15 modify APH3 bendphase .4 5 fast
20 modify APH3 varyphase .2 3 medium
30 modify APH3 varyphase .5 1 fast

balance left

0 mix A 
60 mix A 
120 mix A 

balance right

0 mix APH
60 mix APH2
120 mix APH3
