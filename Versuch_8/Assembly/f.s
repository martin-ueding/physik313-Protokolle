# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade Eingabe B in Register B.
00	db	IN, 01
01	01
02	47	MOV A, B

# Schreibe eine 0x08 in das Register C (001).
03	0e	MVI C, 08
04	08

# Lade A aus C.
05	79	MOV C, A

# Ersetze A durch A & B.
06	a0	ANA B

# Falls A ungleich 0 ist, was der Fall ist, falls das Bit gesetzt ist, springe
# zu is_set.
07	C2	JNZ 0d
08	0d
09	00

# Springe jetzt zu is_not_set. Falls es gesetzt war, wird der Programmfluss
# hier nicht ankommen.
0a	c3	JMP 12
0b	12
0c	00

# is_set:
# Schreibe FF in A.
0d	3e	MVI A, ff
0e	ff

# Springe zu end.
0f	c3	JMP 14
10	14
11	00

# is_not_set:
# Schreibe FF in A.
12	3e	MVI A, 00
13	00

# end:
# Gebe auf Register X (00) aus
14	d3	OUT, 00
15	00

# Ende
16	76	HLT

# vim: noet ts=8 sw=8 list
