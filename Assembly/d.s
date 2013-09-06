# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)


# Schreibe eine 0x00 in das Register A (111).
00	3e	MVI A, 00
01	00

# Schreibe eine 0x10 in das Register B (000).
02	06	MVI B, 10
03	10

# Rechne a += b.
04	80	ADD B

# Gebe Register A aus, und zwar auf den DAC Ausgang.
05	d3	OUT, 04
06	04

# Springe jetzt zurück.
07	c3	JMP, 04, 00
08	04
09	00

# vim: noet ts=8 sw=8 list
