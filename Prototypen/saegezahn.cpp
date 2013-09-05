// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <iostream>

int main() {
	int iterations = 300;
	char a;
	a = 0x00;
f1:
	++a;
	std::cout << (short) a << std::endl;

	if (iterations--)
		goto f1;

	return 0;
}
