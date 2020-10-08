all : dissertation.pdf

dissertation.pdf : dissertation.tex
	pdflatex -draftmode $(basename $<)
	bibtex $(basename $<)
	pdflatex -draftmode $(basename $<)
	pdflatex $(basename $<)
