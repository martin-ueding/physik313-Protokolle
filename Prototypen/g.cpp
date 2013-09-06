// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	char a = 0x08; // Eingabe Faktor 1.
	char b = 0x80; // Eingabe Faktor 2.
	char x, r; // Ausgaberegister.
	char c;

	// Deklariere 2 Byte Speicher für die Register HL sowie BC.
	short hl;
	char *l = (char *) &hl;
	char *h = ((char *) &hl + 1);
	short de;
	char *e = (char *) &de;
	char *d = ((char *) &de + 1);

	c = a; // Sicherungskopie des Zählers.

	*l = 0x00; // Setzte L und H auf Anfangswerte.
	*h = 0x00;

	*d = 0x00;
	*e = b;

top:
	hl = hl + de; // Addierschritt.
	printf("HL = %04x, DE = %04x\n", hl, de);

	a = c;
	--a;
	c = a;
	if (a)
		goto top;

	x = *l;
	r = *h;

	printf("X = %02x, R = %02x\n", x & 0xFF, r & 0xFF);
	return 0;
}
