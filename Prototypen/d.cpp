// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>

#include <iostream>

int main() {
	int iterations = 30;
	char a;
	char b;
	a = 0x00;
	b = 0x10;
f1:
	a += b;
	std::cout << (short) a << std::endl;

	// This if clause is only to make this program terminate eventually. In the
	// original problem, it would run on and on and jump every time.
	if (iterations--)
		goto f1;

	return 0;
}
