# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade zwei Faktoren A (111) und B (000).
00	db	IN, 01
01	01
02	47	MOV A, B
03	db	IN, 00
04	00

# Sichere den Zähler aus A (111) in C (001).
04	4f	MOV A, C

# Initialisiere L (101), H (100), D (010) und E (011).
05	14	MVI L, 00
06	26	MVI H, 00
07	16	MVI D, 00
08	58	MOV B, E

# top:
# Addierschritt HL += DE
09	19	DAD D

# Hole Zähler, dekrementiere, speichern.
0a	79	MOV C, A
0b	3d	DCR A
0c	4f	MOV A, C

# Wiederhole, springe zu top.
0e	c2  JNZ, 09
0f	09
10	00

# Kopiere L (101) und H (100) in die Ausgaberegister.
11	7d	MOV L, A
12	d3	OUT 00
13	7c	MOV H, A
14	d3	OUT 01

# Ende
15	76	HLT

# vim: noet ts=8 sw=8 list
