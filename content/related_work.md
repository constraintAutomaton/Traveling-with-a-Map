## Related Work
{:#related_work}

### Link Traversal Query Processing

Link Traversal Query Processing (LTQP) is a SPARQL querying paradigm that aims at answering queries by exploring the web using the
follow-your-nose principle of linked data [](cite:cites hartig2016walking).
The query execution starts with the dereferencing of URLs called [<q>seed URLs</q>](cite:cites hartig2016walking), with the purpose of injecting the data of the associated linked data source inside a data store internal to the query engine. 
New data sources are obtained by recursively dereferencing particular IRIs following a user-defined lookup policy called reachability criteria [](cite:cites Hartig2012).

The LTQP approach comes with some difficulties. The open endlessness of the web is an important one. 
Reachability criteria and the Subweb specification [](cite:cites Bogaerts2021LinkTW), a more expressive way to formalize reachability criteria, try to
alleviate that ordeal by restricting the search domain with pruning criteria of the link to lookup by the engine (commonly called the link queue). 
But this approach comes with some limitations because the criteria have to be chosen carefully not to prune data sources containing relevant results or not to
be discriminatory enough hence having little impact on the performance by allowing the engine to investigate irrelevant data sources.
Taelman [](cite:cites Taelman2023) has proposed to use the concept of Linked Data Structured Environment (LDSE) to greatly reduce the search space during LTQP.
The method consists of defining source selectors [](cite:cites Bogaerts2021LinkTW) tied to web specification that guarantees completeness given 
certain conditions for example a specification could state that document tied to a person must be defined by a specific IRI. 
In its concrete applications, it has been used in Solid with the [type index](https://solid.github.io/type-indexes/), [WedID](https://www.w3.org/wiki/WebID) and [linked data platform](https://www.w3.org/TR/ldp/) specifications. 

Another major difficulty of LTQP is the crafting of query plans. Given the lack of a priori statistical information about the data sources and the lack of knowledge of which data source will contribute
to the results bag it is difficult to build an optimized query plan.
For that reason the current state of the art is to use the concept of <q>Zero-Knowledge Query Planning</q> [](cite:cites Hartig2011) proposed by Hartig.
This approach relies on carefully chosen heuristic for the join ordering giving a fairly performant query plan [](cite:cites Hartig2011, Hartig2014).
The usage of heuristic is also justify by the finding of Hartig proving that the major bottleneck in LTQP is not the query plan but the large number of HTTP request [](cite:cites hartig2016walking).
Hence the research on query performance for LTQP has focused on giving faster results to the users via link queue ordering [](cite:cites hartig2016walking) 
and pruning heuristic [](Hartig2012) (see the paragraph above) instead of better query planing [](cite:cites Taelman2023).
Nonetheless other authors have tried different approaches such as Ladwid [](cite:cites Ladwig2011) who proposed a costs functions for the evaluations of the choice of join in the context of LTQP but they do not provide a means to evaluate the selectivity of join hence rendering the online evaluation of physical join diffucult to be applied.

more authors time to read BE
{:.todo}

In the context of LDSE Taelman [](cite:cites Taelman2023) has shown that using the type index has a mecanism of link discimination for a reachabilitty criteria it is possible to attain query completness and to execute faster queries compare to the classical reachability criteria such as `call` and `cmatch`. Hence liking the problem of openennessless of web with the query planing.
From their experiment they also have shown that query planing in LTQP of LDES it would be possible to decrease the query execution time by more than two [](cite:cites Taelman2023),
hence reopening the question of query plan in LTQP at least in the context of LDES.

I should reread the paper of Olaf and take better note to be sure to really document well their finding.
{:.todo}

### Shape


### Adaptative query planing

#### Source selection

#### Caracteristic Set

we are going to refer to shape too in this section or another subsection
{:.todo}



We need to determine if we consider it a stream comming or somesort of window in an infinite database let's also reread the section of the book
{:.todo}


#### Join ordering

### Federated Query

### Query containment

The query containment (QC) problem has been recognized early as an important problem of theoretical relationnal databases. It consist in determining if a conjecture query Q1


