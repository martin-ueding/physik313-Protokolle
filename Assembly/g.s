# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade zwei Faktoren A (111) und B (000).
00	db	IN, 01
01	47	MOV A, B
02	db	IN, 00

# Sichere den Zähler aus A (111) in C (001).
03	4f	MOV A, C

# Initialisiere L (101), H (100), D (010) und E (011).
04	14	MVI L, 00
05	26	MVI H, 00
06	16	MVI D, 00
07	58	MOV B, E

# top:
# Addierschritt HL += DE
08	19	DAD D

# Hole Zähler, dekrementiere, speichern.
09	79	MOV C, A
0a	3d	DCR A
0b	4f	MOV A, C

# Wiederhole, springe zu top.
0c	c2  JNZ, 08
0d	08
0e	00

# Kopiere L (101) und H (100) in die Ausgaberegister.
0f	7d	MOV L, A
10	d3	OUT 00
11	7c	MOV H, A
12	d3	OUT 01

# Ende
13	76	HLT

# vim: noet ts=8 sw=8 list
