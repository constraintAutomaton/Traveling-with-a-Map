# Traveling with a Map: Optimizing the Search Space of Link Traversal Queries Using RDF Data Shapes

## Abstract

% Context     
    Link traversal queries are notoriously slow.
    % Need
    The main bottleneck of this query paradigm is the pseudo-infinite traversal search space.
    % Task
    Using the structure of the data publication, traversal queries can be made faster by imposing a finite domain.
    Yet, the search domain can remain needlessly large when considering that multiple documents may not be query-relevant.
    % Object      
    This paper proposes a lightweight and low-maintenance data summary method for decentralized RDF documents called a \emph{Shape Index}.
    The shape index leverages the descriptive power of RDF data shapes, simple mapping to a set of RDF resources, to summarise a decentralized RDF dataset.
    With this simple information, we propose a query-shape containment algorithm for online source selection during link traversal queries.
    In this paper, we formalize our approach, evaluate its impact on different query processing metrics, and consider multiple 
    level of detail of data summarisation in the network.  
    % Findings    
    We show that the use of this simple data summarization can reduce the query execution time and the network usage of queries where a significant number of 
    sources were not query-relevant while having minimal impact on the query execution time of queries, necessitating a large portion of the document in the datasets of the networks.
    We also show that the relation between the decrease in the number of HTTP requests performed is correlated but not linear with the reduction in query execution time,
    leading us to the same conclusion as the state of the art: better query planning in link traversal queries could positively impact query execution time.
    % Conclusion
    Given the performance gain of our algorithm and the low maintenance of shape indexes, its usage in the context 
    of the publication of decentralized RDF datasets is an effective, low-cost way to improve query performance with 
    little computational power from the data provider.
    % Perspectives
    The paper leaves open the questions of performing query-shape containment problems with filter expression for more selective source selection, 
    of using negative entries in the shape index in the source selection process and the shape index for adaptative query planning.

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
        - A bit on complexity (why it does not matter much for some cases because of the size of the instance)
- Preliminaries
    - RDF knowledge graph and SPARQL queries
        - RDF triple
        - Triple pattern
        - Property path
        - BGP
        - Filter expression
    - Reachability criteria
    - RDF data shapes
    - Decentralized knowledge graph
- Foundation
    - Structured linked data environments
        - Description of what it is
        - Why it improve query execution time in a formal way (reduction of the size of the knowledge graph while not affecting query results)
        - Completeness of results vs completeness of traversal

    - Reachability criteria extended
        - Composite reachability criteria (we combine multiple of them)
        - Pruning and discovery reachability criteria
    - Shape index
        - The formal definition is similar to the previous paper in a way with a link to the specification. 
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
- Oracle for source selection, so we do a "federated query" instead of LTQP
- Empiric measurement of the containment algorithm
- Versability test (with and without prioritization)
    - Open shapes
    - Not descriptive constraints 
        - 50%
        - 100%
    - Shape in a ratio of the networks
        - 80%
        - 50%
        - 20%
        - 0%
    - Mutliple fragmentation type
- Worst case scenario
    - 20% of the network has a shape in the network that is closed (we can do nothing with open shapes) with no descriptive constraints
- One file by pods X

We also want to see if this is within the current time expectation for social media queries.

#### Metric
* mean that is important for the paper

- Percentage of useful links dereferenced *
- Link Queue Occupancy
- Query execution *
- Number of HTTP requests *
- Deficiency metric *
- R3 metric
- Size of the internal triple store

#### Derived measurements
- Correlation between the query execution time and the size of the internal triple store
- Correlation between Query execution times and the number of HTTP request *
- Correlation between the query execution times, the size of the internal triple store, and the number of HTTP request

#### More data inside the pods
idea

- Bookmarks
- Pictures + metadata
- Likes on websites
- Movies
- Reviews (things)
