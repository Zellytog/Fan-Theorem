SHELL := /bin/bash
TEXFILES  := $(wildcard main*.tex)
BIBFILES := biblio.bib
SUBFILES := $(wildcard *.tex)
PDFFILES    := $(patsubst %.tex, %.pdf, $(TEXFILES))
PSFILES    := $(patsubst %.tex, %.ps, $(TEXFILES))

all: $(SUBFILES) $(BIBFILES)
	make $(PDFFILES)

%.dvi: %.tex *.tex
	latex $*.tex
	bibtex $*.aux
	latex $*.tex
	latex $*.tex

%.ps: %.dvi *.tex	
	dvips $*.dvi

%.pdf:  *.tex
	pdflatex $*.tex
	bibtex $*.aux
	pdflatex $*.tex
	pdflatex $*.tex

view: $(PDFFILES)
	evince  $(PDFFILES) &

clean: 
	rm -f *.aux *.log *.toc *.bbl *.blg *.dvi *.ps *.out *~ *.backup *.tns *.pag



cleanall: clean
	rm -f $(PDFFILES)	
