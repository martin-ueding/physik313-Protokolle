# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade Eingabe B in Register B.
00	db	IN, 01
01	47	MOV A, B

# Schreibe eine 0x08 in das Register C (001).
02	0e	MVI C, 08
03	08

# Lade A aus C.
04	79	MOV C, A

# Ersetze A durch A & B.
05	a0	ANA B

# Falls A ungleich 0 ist, was der Fall ist, falls das Bit gesetzt ist, springe
# zu is_set.
06	C2	JNZ 0c
07	0d
08	00

# Springe jetzt zu is_not_set. Falls es gesetzt war, wird der Programmfluss
# hier nicht ankommen.
09	c3	JMP 11
0a	12
0b	00

# is_set:
# Schreibe FF in A.
0c	3e	MVI A, ff
0d	ff

# Springe zu end.
0e	c3	JMP 13
0f	17
10	00

# is_not_set:
# Schreibe FF in A.
11	3e	MVI A, 00
12	00

# end:
# Gebe auf Register X (00) aus
13	d3	OUT, 00
14	00

# Ende
15	76	HLT

# vim: noet ts=8 sw=8 list
