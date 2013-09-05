// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <iostream>

int main() {
	char a = 0x04;
	char b = 0x02;
	short x = 0x00;

top:
	x += b;
	--a;
	if (a > 0)
		goto top;

	std::cout << (unsigned short) x << std::endl;
	return 0;
}
