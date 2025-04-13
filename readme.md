# Traveling with a Map: Optimizing the Search Space of Link Traversal Queries Using RDF Data Shapes

The centralization of web information raises legal and ethical concerns, for example, in social, healthcare, and education applications. Decentralization offers a promising alternative, but efficient query performance remains a challenge. Link Traversal Query Processing (LTQP) enables querying in decentralized networks but suffers from long execution times and high data transfer due to excessive HTTP requests. We propose a shape-based pruning approach that utilizes *shape indexes* and a *query-shape subsumption* algorithm to reduce the search space and, consequently, the number of HTTP requests. We formalize this method as a link pruning mechanism for LTQP and evaluate its impact on social media queries using the Solidbench benchmark. Our results show that shape-based pruning improves query execution time and reduces network usage by up to 7 times compared to the state of the art, with the tradeoff of an insignificant increase in the number of triples per shape-index instance. This work demonstrates the potential of shape-based metadata for optimizing LTQP queries in decentralized knowledge graphs.


## Building a PDF
The repository uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for the figures.
The first step is to make sure that the submodule is instantiated.
You can do this during the cloning process by using the following command:
```bash
git clone --recurse-submodules -j8 {repo-url}
``` 
Alternatively, if you've already cloned the repository, you can initialize the submodule afterward with:
```bash
git submodule update --init --recursive
```
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
If `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user you can generate the PDF by running:

```bash
make main.pdf
```

or simply:

```bash
make
```

## Complementary Material

https://github.com/shapeIndexComunicaExperiment/documentation/blob/main/README.md

## License
The code is licensed under the CC-BY-4.0 license. See the [LICENSE](LICENSE) file for details.
