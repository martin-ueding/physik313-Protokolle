# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

SHELL = /bin/bash

all: physik313-2-Ueding_Lemmer.pdf

%.pdf: %.tex
	latexmk -pdf $<

physik313-2-Ueding_Lemmer.tex: crunch Template.tex
	if [[ -f $@ ]]; then chmod +w $@; fi
	./$^
	chmod -w $@

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
