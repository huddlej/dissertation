all : dissertation.pdf

dissertation.pdf : dissertation.tex prelim.tex chapter*.tex appendix*.tex
	pdflatex -draftmode $(basename $<)
	bibtex $(basename $<)
	pdflatex -draftmode $(basename $<)
	pdflatex $(basename $<)
