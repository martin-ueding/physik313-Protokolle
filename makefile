# Copyright © 2013 Martin Ueding <dev@martin-ueding.de>
# Licensed under The GNU Public License Version 2 (or later)

all: physik313-0-Ueding_Lemmer.pdf

%.pdf: %.tex
	#latexmk -pdf $<
	pdflatex -batchmode $<

physik313-0-Ueding_Lemmer.tex: crunch Template.tex
	chmod +w $@
	./$^
	chmod -w $@

.PHONY: clean
clean:
	$(RM) *.class *.jar
	$(RM) *.o *.out
	$(RM) *.pyc *.pyo
	$(RM) *.orig
