# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

# Gebe zwei Faktoren A und B vor.
MVI A, 08
MVI B, 80

# Sichere den Zähler aus A in C.
MOV A, C

# Initialisiere L, H, D und B.
MVI L, 00
MVI H, 00
MVI D, 00
MOV B, E

# top:

# Addierschritt HL += DE
DAD D

# Hole Zähler, dekrementiere, speichern.
MOV C, A
DCR A
MOV A, C

# Wiederhole, springe zu top.
JNZ, @@

# Kopiere in die Ausgaberegister.
MOV L, A
OUT 00
MOV H, A
OUT 01
