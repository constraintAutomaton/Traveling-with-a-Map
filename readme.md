# Traveling with a Map: Optimizing the Search Space of Link Traversal Queries Using RDF Data Shapes

Centralization of web information causes legal and ethical
problems, especially in the context of social applications. Large scale
decentralizing of datasets offers a potential solution, but maintaining
query performance remains a challenge. Link Traversal Query Processing
(LTQP) supports decentralized querying in large scale networks but is
limited by long execution times and high data usage. This paper presents
the shape index, a lightweight RDF data summarization method using
RDF data shapes to reduce the search space for traversal queries. In this
work, we formalize and evaluate the shape index data summarisation
approach and a query-shape containment problem to detect irrelevant
sources during LTQP. Shape-based data summarisation can reduce the
query execution time and network usage of selective queries, even in
networks with missing or lower-quality information. This performance
gain, without server involvement during querying, makes our approach
ideal for selective queries in structured, decentralized datasets.

## Building a PDF
The repository uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for the figures.
The first step is to make sure that the submodule is instantiated.
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
One can simply execute `make main.pdf` or `make` to produce the PDF version if `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user.

## Complementary Material

https://github.com/shapeIndexComunicaExperiment/documentation/blob/main/README.md
