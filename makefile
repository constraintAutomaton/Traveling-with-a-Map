SOURCE = main.tex references.bib section/*.tex makefile
PACKAGE=acmart

main.pdf: $(SOURCE)
	pdflatex main $(PACKAGE).dtx
	- bibtex main
	biber main
	pdflatex main $(PACKAGE).dtx
	biber main
	pdflatex main $(PACKAGE).dtx
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' main.log) \
	do pdflatex $<; done
	
.PHONY: clean

clean:
	rm -f *.log *.xmpi *.xmpdata *.abs *.aux main.pdf *.out *.text.bbl main.*.blg *.blg *.bbl *.fls *.fdb_latexmk main.log *.synctex.gz section/*.aux *.bcf *-blx.bib *.run.xml
	rm -r svg-inkscape
