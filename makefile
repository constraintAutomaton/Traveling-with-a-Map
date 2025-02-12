SOURCE = main.tex references.bib section/*.tex makefile analysis/artefact/**/* code/* figure/*

main.pdf: $(SOURCE)
	pdflatex --shell-escape main
	- bibtex main
	biber main
	pdflatex --shell-escape main
	biber main
	pdflatex --shell-escape main
	while ( grep -q '^LaTeX Warning: Label(s) may have changed' main.log) \
	do pdflatex --shell-escape $<; done
	
.PHONY: clean

clean:
	rm -f *.log *.xmpi *.xmpdata *.abs *.aux main.pdf *.out *.text.bbl main.*.blg *.blg *.bbl *.fls *.fdb_latexmk main.log *.synctex.gz section/*.aux *.bcf *-blx.bib *.run.xml svg-inkscape/*
