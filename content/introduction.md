## Introduction
{:#introduction}

[The publication of open link data is a growing phenomenon in the recent years](https://lod-cloud.net/#diagram).
Dereferencing a term in an RDF triple provide contextual information about its definition, for example dereferencing a term representing a user
let's say a [WebID](https://www.w3.org/wiki/WebID) can provide the name of the user among other information.

To take advantage of the potential descriptive power of IRI dereferencing a query paradigm called Link Traversal Query Processing (LTQP) [](cite:cites Hartig2014) has been developed.
LTQP consists of recursively dereferencing IRI contained into the internal data source of a query engine 
during its query execution to append its base of information.
A lookup policy can be used to limit the search domain of the query.
LTQP comes with multiple difficulties such as the open endlessness of the web, which can be interpreted as a pseudo-infinite domain of exploration,
and the challenge of creating an efficient query plan due to the lack of information about the data sources. 
It has been demonstrated by Hartig [](cite:cites hartig2016walking) that in the open web the main performance bottleneck and obstacle for query completeness and fast query execution time is not the query plan but the large number of the HTTP request necessary to fulfill a query.

From another perspective, and not disproving Hartig, 
Taelman [](cite:cites Taelman2023) has demonstrated that in a Linked Data Structured Environment (LDSE),
it is possible to attain query completeness and query planning can have an influence on the speed of execution.
A LDSE is defined has an RDF environment where in addition to the RDF principles, specifications
guarantee the completeness of results.
This guarantee of completeness has the positive side effect of providing information
that can be used to create a lookup policy following the reachability criteria method [](cite:cites verborgh2020guided, Hartig2012, Taelman2023)
to reduce the number of HTTP requests necessary to attain completeness.

In practice LDSE can be use in the context of personal data and social network among others,
an exemple of an environment respecting those constraints is the linked data protocol Solid [](cite:cites Taelman2023).
The work of Taelman [](cite:cites Taelman2023) indicate that there are multiple optimizations possible in LTQP in the context LDSE as opposed to the
more pessimist conclusion of the work of Hartig [](cite:cites hartig2016walking) (it has to be stressed that it was not in the same context).
This paper position itself has a continuation of the work of Taelman [](cite:cites Taelman2023) by introducing 
RDF shape, a well known and used RDF data quality mechanism, to optimized LTQP query in the context of LDSE.
The conceptual idea of RDF shape is to describe the properties of an entity;
for instance their class, their cardinality and constraint.
RDF Shapes have already been used for optimizing the query planning [](cite:cites kashif2021)
in the context of a single endpoint query,but as far as our knowledge goes, none of the studies have used them in the context of LTQP in querying in LDSE.



More concretely in this work we used shapes has a discriminating mechanism in a reachability criteria 
and as a source of information for cardinality estimate for the purpose of query planning in LTQP instead of relying
on the state of art approach of using heuristics [](cite:cites Hartig2012).
[the results are not presented because it is WIP]
The paper is divided as follows, first we present the related work, following by our approach, then the
experimental methodology, the results and discussion and a conclusion.

READ Optimizing SPARQL Queries with SHACL
{:.todo}