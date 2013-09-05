// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <cstdio>

int main() {
	char a = 0x80;
	char b = 0x02;
	short temp = 0x00;
	char x, r;

top:
	temp += b;
	--a;
	if (a > 0)
		goto top;

	x = temp;
	r = temp >> 8;

	printf("%02x %02x", r, x);
	return 0;
}
