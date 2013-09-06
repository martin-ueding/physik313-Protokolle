# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Schreibe eine 0x00 in das Register A (111).
00	3e	MVI A, 00
01	00

# Schreibe eine 0x80 in das Register B (000).
02	06	MVI B, 80
03	80

# Inkrementiere A (111).
04	3c	INR A

# Kopiere A (111) nach C (001).
05	4F	MOV A, C

# Ersetze A durch A & B.
06	a0	ANA B

# Gebe Register A aus, und zwar auf den DAC Ausgang.
07	d3	OUT, 04
08	04

# Lade A aus C.
09	79	MOV C, A

# Springe jetzt zurück.
0a	c3	JMP, 04, 00
0b	04
0c	00

# Ende
0d	76	HLT

# vim: noet ts=8 sw=8 list
