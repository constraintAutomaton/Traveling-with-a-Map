## Introduction
{:#introduction}

[The publication of open link data is a growing phenomenon in the recent years](https://lod-cloud.net/#diagram).
In its most basic interpretation, it consists of publishing data in the form of triples where the first term is the subject,
the second is the predicate and the third is the object.
Those terms can be IRIs, blank nodes or literals.
To get more information or context from an IRI or blank node term we can access its declaration.
In the case of a blank node, the information has to be in the same document whereas for a IRI the information can be at the address defined by the term.


To take advantage of the potential descriptive power of IRI dereferencing a query paradigm called Link Traversal Query Processing (LTQP) [](cite:cites Hartig2014) has been developed.
The following paradigm consists of recursively dereferencing IRI contained into the internal data source of a query engine 
during the query execution using a lookup policy to append its base of information.
This technique comes with multiple difficulties such as the open endlessness of the web, which can be interpreted as a pseudo-infinite domain of exploration,
and the challenge of creating a query plan due to the lack of information about the data sources. 
It has been demonstrated by Hartig [](cite:cites hartig2016walking) that in the open web the main performance bottleneck and obstacle for query completness and fast query execution time is not the query plan but the large number of the HTTP request necesarry to fullfill a query.


From another perspective, and not disproving Hartig, 
Taelman [](cite:cites Taelman2023) has demonstrated that in a Linked Data Structured Environment (LDSE),
it is possible to attain query completeness and that query planning can have an influence on the speed of execution.
An LDSE is defined has an RDF environment where in addition to the RDF principles, specifications,
guarantee the completeness of results and guide the query engines towards relevant sources by indicating which link
to discriminate following the reachability criteria method [](cite:cites verborgh2020guided, Hartig2012, Taelman2023).
LDSE can be seeing in the context of personal data and social network among others, a concrete implementation of
such environment is in the linked data protocol Solid [](cite:cites Taelman2023).
The work of Taelman indicate that there are multiple optimizations possible in LTQP in the context LDSE as opposoded to the
more pessist conclusion of the work of Hartig (it has to be stressed that it was not in the same context).


The present research using Taelman work as a basis try to exploit RDF shape, a well known and used RDF data quality mechanism, 
to optimized LTQP query in the context of LDSE.
Shapes has already been used for query planning [](cite:cites kashif2021) in the context of a single endpoint in previous work
but as far as our knowledge goes, none of the studies has used them in the context of LTQP and LDSE.
More concretely in this work we used shapes has a discriminating mechanism in a reachability criteria 
and as a source of information for cardinality estimate for the purpose of query planning in LTQP instead of relying
on the state of art approach of using heuristics [](cite:cites Hartig2012).
[the results are not presented because it is WIP]
The paper is divided as follows, first we present the related work, following by our approach, then the
experimental methodology, the results and discussion and a conclusion.

READ Optimizing SPARQL Queries with SHACL
{:.todo}