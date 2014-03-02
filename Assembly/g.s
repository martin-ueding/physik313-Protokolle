# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade zwei Faktoren A (111) und B (000).
00	db	IN, 01
01	01
02	47	MOV A, B
03	db	IN, 00
04	00

# Sichere den Zähler aus A (111) in C (001).
05	4f	MOV A, C

# Initialisiere L (101), H (100), D (010) und E (011).
06	2e	MVI L, 00
07	00
08	26	MVI H, 00
09	00
0a	16	MVI D, 00
0b	00
0c	58	MOV B, E

# top:
# Addierschritt HL += DE
10	19	DAD D

# Hole Zähler, dekrementiere, speichern.
11	79	MOV C, A
12	3d	DCR A
13	4f	MOV A, C

# Wiederhole, springe zu top.
14	c2  JNZ, 10
15	10
16	00

# Kopiere L (101) und H (100) in die Ausgaberegister.
17	7d	MOV L, A
18	d3	OUT 00
19	00
1a	7c	MOV H, A
1b	d3	OUT 01
1c	01

# Ende
1d	76	HLT

# vim: noet ts=8 sw=8 list
