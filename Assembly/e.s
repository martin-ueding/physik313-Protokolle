# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Lade zwei Faktoren A (111) und B (000).
00	db	IN, 01
01	47	MOV A, B
02	db	IN, 00

# Inkrementiere A (111).
03	3c	INR A

# Kopiere A (111) nach C (001).
04	4F	MOV A, C

# Ersetze A durch A & B.
05	a0	ANA B

# Gebe Register A aus, und zwar auf den DAC Ausgang.
06	d3	OUT, 04
07	04

# Lade A aus C.
08	79	MOV C, A

# Springe jetzt zurück.
09	c3	JMP, 03, 00
0a	04
0b	00

# vim: noet ts=8 sw=8 list
