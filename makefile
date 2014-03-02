# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

SHELL = /bin/bash

all: physik313-3-Ueding_Lemmer.pdf physik313-4-Ueding_Lemmer.pdf

%.pdf: %.tex
	latexmk -pdf $<

physik313-%-Ueding_Lemmer.tex: crunch_% Template_%.tex
	./$^

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
	latexmk -C
