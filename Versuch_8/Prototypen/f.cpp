// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	char a;
	char b;
	char c;
	c = 0x08; // Meine Test-Schablone.
	b = 0xFF; // Ein Beispielwert für das Register B.
	a = c; // Lade Wert.
	a = a & b; // Überprüfe, ob das Bit gesetzt ist.
	if (a)
		goto is_set;
	goto is_not_set;
is_set:
	a = 0xFF;
	goto end;
is_not_set:
	a = 0x00;
	goto end;
end:

	printf("%02x\n", a & 0xFF);
	return 0;
}
