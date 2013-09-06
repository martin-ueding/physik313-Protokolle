# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# In diesen Dateien:
# Zeile	Befehl	Mnemonik

# Schreibe eine 0x00 in das Register A.
00	3e	MVI A, 00
01	00

# Inkrementiere A. Dabei ist die nächste Zeile auch direkt eine Sprungmarke.
# Die Zeilennummer wird also noch mal wichtig.
02	3c	INR A

# Gebe Register A aus, und zwar auf den DAC Ausgang.
03	d3	OUT, 04
04	04

# Springe jetzt zurück.
05	c3	JMP, 02, 00
06	02
07	00

# Ende
08	76	HLT

# vim: noet ts=8 sw=8 list
