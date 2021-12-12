DOCNAME=usenix2019

all: report

.PHONY: clean

report:
	pdflatex $(DOCNAME).tex
	bibtex $(DOCNAME).aux
	pdflatex $(DOCNAME).tex

view: report
	zathura $(DOCNAME).pdf

clean:
	rm *.blg *.bbl *.aux *.log

