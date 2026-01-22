SHELL := /bin/bash
TEXFILES  := $(wildcard main*.tex)
BIBFILES := biblio.bib
SUBFILES := $(wildcard *.tex)
PDFFILES    := $(patsubst %.tex, %.pdf, $(TEXFILES))
PSFILES    := $(patsubst %.tex, %.ps, $(TEXFILES))

all: lics fscd article types

types: Types/types_abstract.tex
	cd Types
	pdflatex types_abstract.tex
	bibtex types_abstract.aux
	pdflatex types_abstract.tex
	pdflatex types_abstract.tex
	cd ..
	
article: $(SUBFILES) $(BIBFILES)
	pdflatex "\newcommand\mode{-1}\input{main}"
	bibtex main.aux
	pdflatex "\newcommand\mode{-1}\input{main}"
	pdflatex "\newcommand\mode{-1}\input{main}"



lics: main.aux $(SUBFILES) $(BIBFILES)
	pdflatex "\newcommand\mode{1}\input{main}"
	bibtex main.aux
	pdflatex "\newcommand\mode{1}\input{main}"
	pdflatex "\newcommand\mode{1}\input{main}"
	cp main.pdf mainLICS.pdf

fscd: main.aux $(SUBFILES) $(BIBFILES)
	pdflatex "\newcommand\mode{0}\input{main}"
	bibtex main.aux		
	pdflatex "\newcommand\mode{0}\input{main}"
	pdflatex "\newcommand\mode{0}\input{main}"
	cp main.pdf mainFSCD.pdf

%.dvi: %.tex *.tex
	latex $*.tex
	bibtex $*.aux
	latex $*.tex
	latex $*.tex

%.ps: %.dvi *.tex	
	dvips $*.dvi

%.aux:  *.tex
	pdflatex $*.tex

%.pdf:  *.tex
	pdflatex $*.tex
	bibtex 	$*.aux
	pdflatex $*.tex
	pdflatex $*.tex

view: $(PDFFILES)
	evince  $(PDFFILES) &

clean: 
	rm -f *.aux *.log *.toc *.bbl *.blg *.dvi *.ps *.out *~ *.backup *.tns *.pag



cleanall: clean
	rm -f $(PDFFILES)	
