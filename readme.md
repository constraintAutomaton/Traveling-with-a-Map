# Traveling with a Map: Optimizing the Search Space of Link Traversal Queries Using RDF Data Shapes

Centralization of web information can raise legal and ethical problems, especially in the context of social applications.
Decentralizing this information offers a potential solution, but maintaining query performance remains a challenge.
Link Traversal Query Processing (LTQP) enables querying in large-scale networks of decentralized data but suffers from long execution times and high data usage, largely due to the extensive HTTP requests required for network exploration.
This paper introduces a shape-based pruning approach to minimize the search space of traversal queries. 
The approach utilizes shape indexes provided by data providers in networks of decentralized knowledge graphs to reduce the search space using a query-shape containment algorithm. 
This work introduces link pruning in LTQP by formalizing the shape index and query-shape containment approach, and evaluates its impact on the performance of traversal queries. 
Our findings show that shape-based data summarization can reduce the query execution time and network usage of selective traversal queries by up to 7 times in our benchmark. 
This performance gain, achieved without delegating queries to endpoints, makes our approach a strong candidate for handling selective queries in large networks of structured, decentralized knowledge Graphs.

## Building a PDF
The repository uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for the figures.
The first step is to make sure that the submodule is instantiated.
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
One can simply execute `make main.pdf` or `make` to produce the PDF version if `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user.

## Complementary Material

https://github.com/shapeIndexComunicaExperiment/documentation/blob/main/README.md

## License
The code is licensed under the CC-BY-4.0 license. See the [LICENSE](LICENSE) file for details.
