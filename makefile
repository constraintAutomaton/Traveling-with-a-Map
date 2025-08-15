SOURCE = main.tex references.bib section/*.tex makefile analysis/artefact/**/* code/* figure/* time-complexity/*

.PHONY: clean watch

main.pdf: $(SOURCE)
	latexmk -pdf -shell-escape main.tex

watch:
	latexmk -pdf -pvc -shell-escape main.tex

clean:
	rm -f *.log *.xmpi *.xmpdata *.abs *.aux main.pdf *.out *.text.bbl main.*.blg *.blg *.bbl *.fls *.fdb_latexmk main.log *.synctex.gz section/*.aux *.bcf *-blx.bib *.run.xml svg-inkscape/*
