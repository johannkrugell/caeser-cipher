This Ruby program is part of a project for the Odin Project Fullstack Developer
course. The project goal is develop a Caeser Cipher, see Wikipedia
https://en.wikipedia.org/wiki/Caesar_cipher

My Caeser Cipher takes a string and a shift number as parameters. The string is 
converted to an array of characters. Each character is converted to its ordinal
number. The shift factor is added to the ordinal number to get the new encrypted
oridnal number. The encrypted ordinal number is converted to a character, that
is the encrypted text. 

If the sum of the ordinal number and the shift factor is outside of the ASCII 
number range for either upper or lowercase letters, then 26 characters are 
added or subtracted to get accommodate the a to z wrap. 
