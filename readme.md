# Query shape containment LTQP

## Building a PDF
The authors compiled the PDF version using `pdflatex` (you can use your favorite latex compiler).
We created a `makefile` to facilitate the building of the PDF version.
One can simply execute `make main.pdf` or `make` to produce the PDF version if `pdflatex` and the other dependencies of the [TeX Live](https://tug.org/texlive/) suite are installed on the machine of the user.

## TO DO paper (not in order)

- [ ] Building a tool to fragment the data of [Solidbench](https://github.com/SolidBench/SolidBench.js) in a way that each pod has one file 
- [ ] Improve [sparql-benchmark-runner.js](https://github.com/comunica/sparql-benchmark-runner.js) statistic to make significance and variance analysis
- [x] **not fully working with some property path combination but good enough for most cases, limitation to be listed, question of implementation and time and not method** Finish the implementation of SPARQL property path, nested queries and the small optimization in [Query Shape Detection](https://github.com/constraintAutomaton/query-shape-detection/tree/main)
    - [x] Propose a negative shape index entry
- [ ] Finish the literature review
- [ ] Make a proof for time complexity and overhead (empirical but I want the theoretical)
- [ ] Provide an analysis of the link queue
    - [ ] Percentage of useful resources
    - [ ] Ruben E. Metric, diefficienty
- [X] Implement the priotisation
- [ ] Analyze versatility
    - [ ] Open/close shapes
    - [ ] Percentage of the pod with a shape
    - [ ] More or less descriptive shapes
- [ ] Formalize the completeness differently than the reachability criteria
    - [ ] Make queries with one endpoint in a HDT
- [ ] Check the impact of HTTP request vs size of the internal data store
- [x] Define composite reachability criteria
    - [x] Reachability criterion created from the combination of multiple criteria

## Plan

### Organization

- Introduction
    - We support the need ...
- Related work
    - Present work LTQP search space management
        - Main bottleneck
        - Reachability criteria
        - LDQL - Query language (client side)
        - SWLS (more on the data provider)
        - Structural assumption (mix between data provider approach and client-side)
    - Present RDF data shapes
        - What are they
        - Main language (SCHACL, ShEx)
        - Query optimization
    - Data summarization
        - ... (I have some references, but I just have no narrative right now)
    - Query containment
        - Defining the main problem
        - SPARQL variance, resemblance with XP path
        - Property path implication
        - A bit on complexity (why it does not matter much for some cases because of the size of the instance,
            ***why false negatives are not so bad)
- Preliminaries
    - RDF knowledge graph and SPARQL queries
        - RDF triple
        - Triple pattern
        - Property path
        - BGP
        - Filter expression
    - Reachability criteria
    - RDF data shapes
- Foundation
    - Structured linked data environments
        - Definition of data vault as a subweb with multiple structural assumptions. Those structural assumptions might describe the whole data vault or not, but the combination of them all should make the entire vault traversable regardless of the query
        - Define the completeness of the data vault explicitly and the completeness of LTQP overall, considering the data vault (we make more explicit the separation between the structure of a data vault and the reachability of the engine; we have completeness of traversal of the engine and the completeness of results of the pod) (one file...define completeness)
            - We want a means to really compare different reachability criteria, at least in the context of data vault
    - Reachability criteria extended
        - Composite reachability criteria (we combine multiple of them)
        - Pruning and discovery reachability criteria
    - Shape index
        - The formal definition is similar to the previous paper in a way. 
 Link to the specification, too
    - Expressing RDF Data shapes into SPARQL Algebra
    - Query shape containment
        - Definition
        - Distinction between strict problem and not (it is a question of handling the optional and unions). The strict is the classic containment problem.
        - formulation
        - Complexity (with consideration of types of shapes (shapes, constraints) and queries (union, property path, optional) )
        - Algorithm with complexity
    - Online source selection in environments with a shape index
        - Shape index as a structural assumption
        - Query shape containment with shape index as reachability criteria
- Evaluation
    - Experiment setup (link to research questions)
    - Implementation
        - Schema of the algorithm with shape index
        - Link Queue filters (related to prunnig reachability criteria)
    - Results
        - See experiments section
    - Discussion (link to research questions)
- Conclusion

### Research question
- Can our method reduce the ratio of non-contributing data sources that are dereferenced?
- How does the diminution of HTTP requests affect the query execution time?

- How does the level of detail of the shapes impact the performances?
- What is the difference in performance between a _complete_ and an _incomplete_ shape index?
- How does the ratio of subdomains containing an index influence global performances?
- How does the fragmentation of the subdomain impact the performance?

- How does the quantity of non-query contributing resources impact the performances?

- What is the ideal query execution time if we only dereferenced contributing data sources?
- What is the performance of our method compared to a single endpoint solution?
- How does the size of the internal data store impact the query execution time compared to the number of HTTP requests?

### Experiments
- Baseline Datadump (maybe not the optimal execution)
- Baseline LTQP
    - Type index
    - LDP
    - type index + LDP
    - Type index with missing type index same has missing shape index (see experiment below)
    - Type index + LDP with missing type index same has missing shape index (see experiment below)
- Best case scenario (with and without prioritization)
    - Complete shape index in every pod, with closed shapes for everything with precise constraints
- Versability test (with and without prioritization)
    - Open shapes
    - Not descriptive constraints
        - 50%
        - 100%
    - Shape in a ratio of the networks
        - 80%
        - 50%
        - 20%
    - Mutliple fragmentation type
- Worst case scenario
    - 20% of the network has a shape in the network that is closed (we can do nothing with open shapes) with no descriptive constraints
- Oracle for source selection, so we do a "federated query" instead of LTQP
- One file by pods
- Empiric measurement of the containment algorithm

We also want to see if this is within the current time expectation for social media queries.

#### Metric
- Percentage of useful links dereferenced *
- Link Queue Occupancy
- Query execution *
- Number of HTTP requests *
- Deficiency metric *
- R3 metric
- Size of the internal triple store (*)

#### Derived measurements
- Correlation between the query execution time and the size of the internal triple store
- Correlation between Query execution times and the number of HTTP request
- Correlation between the query execution times, the size of the internal triple store, and the number of HTTP request

#### More data inside the pods
idea

- Bookmarks
- Pictures + metadata
- Likes on websites
- Movies
- Reviews (things)
