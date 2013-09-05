// Copyright © 2013 Martin Ueding <dev@martin-ueding.de>

#include <iostream>

int main() {
	int iterations = 300;
	char a;
	a = 0x00;
f1:
	++a;
	std::cout << (short) a << std::endl;

	// This if clause is only to make this program terminate eventually. In the
	// original problem, it would run on and on and jump every time.
	if (iterations--)
		goto f1;

	return 0;
}
