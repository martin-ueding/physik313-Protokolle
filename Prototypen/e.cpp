// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
// Licensed under The GNU Public License Version 2 (or later)

#include <iostream>

int main() {
	int iterations = 30;
	char a;
	char b;
	char out;
	a = 0x00;
	b = 0x04;
f1:
	++a;
	out = a & b;
	std::cout << (short) out << std::endl;

	if (iterations--)
		goto f1;

	return 0;
}
