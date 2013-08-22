# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

SHELL = /bin/bash

all: physik313-3_4-Ueding_Lemmer.pdf

%.pdf: %.tex
	latexmk -pdf $<

physik313-3_4-Ueding_Lemmer.tex: crunch Template.tex
	if [[ -f $@ ]]; then chmod +w $@; fi
	./$^
	chmod -w $@
	shopt -s nullglob; \
		for d in Daten*.pdf; \
		do \
		pdfcrop $$d $$d;\
		done

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
