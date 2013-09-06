# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Schreibe eine 0x08 in das Register C (001).
02	0e	MVI C, 08
03	08

# Lade A aus C.
09	79	MOV C, A

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
0f	c3	JMP 17
10	17
11	00

# is_not_set:
# Schreibe FF in A.
12	3e	MVI A, 00
13	00

# Springe zu end.
14	c3	JMP 17
15	17
16	00

# end:

# Gebe auf Register X (00) aus
17	d3	OUT, 00
18	00

# vim: noet ts=8 sw=8 list
