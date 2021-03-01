print "simple phase test"
output aaa_phase_simple.wav
length 4
defsound W1 form:sine freq:850 vol:.9 fadein:.01 fadeout:0.01 length:4
defsound W2 form:sine freq:850 vol:.9 fadein:.01 fadeout:0.01 length:4

+.5 modify W1 phase +.25
+.5 modify W1 phase -.25
+.5 modify W1 phase +.5
+.5 modify W1 phase -.5
+.5 modify W1 phase +.1
+.5 modify W1 phase -.1

balance left
0 mix W1
balance right
0 mix W2

