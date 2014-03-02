# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

SHELL = /bin/bash

all: _build/physik313-5_6-Ueding_Lemmer.pdf

%.pdf: %.tex submodules
	cd _build && latexmk -pdflatex='pdflatex -halt-on-error $$O $$S' -pdf $$(basename $<)

_build/physik313-5_6-Ueding_Lemmer.tex: crunch Template.tex
	mkdir -p _build
	./$^

submodules:
	git submodule update --init

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
	$(RM) -r _build
