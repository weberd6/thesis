PX=pdflatex
BX=bibtex

default: thesis.tex refs.bib
	$(PX) thesis.tex
	$(BX) thesis
	$(PX) thesis.tex
	$(PX) thesis.tex

clean:
	rm -f thesis.aux thesis.lof thesis.log thesis.lot thesis.pdf thesis.toc thesis.bbl thesis.blg thesis.dvi thesis.lol thesis.loa thesis.out
