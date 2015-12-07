PX=pdflatex
PX_OPTS="-interaction batchmode -halt-on-error"

BX=bibtex
BX_OPTS=

default: thesis.tex refs.bib
	$(PX) $(PX_OPTS) thesis.tex
	$(BX) $(BX_OPTS) thesis
	$(PX) $(PX_OPTS) thesis.tex
	$(PX) $(PX_OPTS) thesis.tex

clean:
	rm -f thesis.aux thesis.lof thesis.log thesis.lot thesis.pdf thesis.toc thesis.bbl thesis.blg thesis.dvi thesis.lol thesis.loa thesis.out
