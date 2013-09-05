// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	char a;
	char b;
	char x;
	char isset;
	a = 0x08; // Meine Test-Schablone.
	b = 0xFF; // Ein Beispielwert für das Register B.
	isset = a ^ b; // Überprüfe, ob das Bit gesetzt ist.
	if (isset)
		goto is_set;
	goto is_not_set;
is_set:
	x = 0xFF;
	goto end;
is_not_set:
	x = 0x00;
	goto end;
end:

	printf("%02x\n", x & 0xFF);
	return 0;
}
