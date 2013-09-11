# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade zwei Faktoren A (111) und B (000).
00	db	IN, 01
01	01
02	47	MOV A, B
03	db	IN, 00
04	00

# Inkrementiere A (111).
05	3c	INR A

# Kopiere A (111) nach C (001).
06	4F	MOV A, C

# Ersetze A durch A & B.
07	a0	ANA B

# Gebe Register A aus, und zwar auf den DAC Ausgang.
08	d3	OUT, 04
09	04

# Lade A aus C.
0a	79	MOV C, A

# Springe jetzt zurück.
0b	c3	JMP, 03, 00
0c	04
0d	00

# vim: noet ts=8 sw=8 list
