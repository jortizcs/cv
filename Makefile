DOC=jorge

all:
	pdflatex -t letter $(DOC).tex
	bibtex $(DOC)
	pdflatex -t letter $(DOC).tex
	pdflatex -t letter $(DOC).tex

clean:
	rm -f $(DOC).blg $(DOC).bbl $(DOC).aux $(DOC).log $(DOC).out $(DOC)-blx.bib $(DOC).run.xml
