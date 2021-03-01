print "Loads and copies a .wav file."
output aaachirp.wav
length 14
sample CHIRP chirp.wav 
#
balance 1
0 mix CHIRP
balance 0
.5 mix CHIRP
