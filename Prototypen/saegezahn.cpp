// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	int iterations = 300;
	char a;
	a = 0x00;
f1:
	++a;
	printf("%02x\n", a & 0xFF);

	if (iterations--)
		goto f1;

	return 0;
}
