# Query shape containment LTQP

## Building a PDF
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
One can simply execute `make main.pdf` or `make` to produce the PDF version if `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user.

## TO DO paper (not in order)

- [ ] Building a tool to fragment the data of [Solidbench](https://github.com/SolidBench/SolidBench.js) in a way that each pod has one file 
- [ ] Improve [sparql-benchmark-runner.js](https://github.com/comunica/sparql-benchmark-runner.js) statistic to make significance and variance analysis
- [ ] Finish the implementation of SPARQL property path, nested queries and the small optimization in [Query Shape Detection](https://github.com/constraintAutomaton/query-shape-detection/tree/main)
    - [ ] Propose a negative shape index entry
- [ ] Finish the literature review
- [ ] Make a proof for time complexity and overhead (empirical but I want the theoretical)
- [ ] Provide an analysis of the link queue
    - [ ] Percentage of useful resources
    - [ ] Efficiency of the filter (rate)
    - [ ] Ruben E. Metric, diefficienty
- [ ] Implement the priotisation
- [ ] Analyze versatility
    - [ ] Open/close shapes
    - [ ] Percentage of the pod with a shape
    - [ ] More or less descriptive shapes
- [ ] Formalize the completeness differently than the reachability criteria
    - [ ] Make queries with one endpoint in a HDT
- [ ] Check the impact of HTTP request vs size of the internal data store
- [x] Define composite reachability criteria
    - [x] Reachability criterion created from the combination of multiple criteria