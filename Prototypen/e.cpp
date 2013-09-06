// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	int iterations = 300;
	char a;
	char b;
	char out;
	char c;
	a = 0x00;
	b = 0x80;
f1:
	++a; // Inkrementiere A.
	c = a; // Speichere A in ein C ab, da nur in A gerechnet werden kann.
	a = a & b; // Logisches AND.
	out = a; // Gebe A aus.
	a = c; // Lade A aus C.
	printf("%02x\n", out & 0xFF);

	if (iterations--)
		goto f1;

	return 0;
}
