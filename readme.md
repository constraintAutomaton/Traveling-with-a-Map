# Query shape containment LTQP

## Building a PDF
The repository uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for the figures.
The first step is to make sure that the submodule is instantiated.
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
One can simply execute `make main.pdf` or `make` to produce the PDF version if `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user.
