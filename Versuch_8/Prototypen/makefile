# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

cppfiles := $(wildcard *.cpp)
programs := $(cppfiles:.cpp=)
outfiles := $(cppfiles:%.cpp=../_build/%.txt)

all: $(outfiles)

../_build/%: %.cpp
	g++ $^ -o $@

../_build/%.txt: ../_build/%
	$^ > $@

.PHONY: clean
clean:
