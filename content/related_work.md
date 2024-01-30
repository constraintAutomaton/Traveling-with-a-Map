## Related Work
{:#related_work}

### Link Traversal Query Processing

Link Traversal Query Processing (LTQP) is a SPARQL querying paradigm that aims at answering queries by exploring the web using the
follow-your-nose principle of linked data [](cite:cites hartig2016walking).
The query execution starts with the dereferencing of initial URLs called [<q>seed URLs</q>](cite:cites hartig2016walking).
The engine then injects the data of the discovered source inside the internal data store and execute the query.
New data are obtained by recursively dereferencing IRIs following a user-defined lookup policy.

The LTQP approach comes with some difficulties. The open endlessness of the web is an important one.
Reachability criteria [](cite:cites Hartig2012) and the source selector of the Subweb specification [](cite:cites Bogaerts2021LinkTW) (a more expressive way to formalize reachability criteria)
try to alleviate this problem by formalizing completeness conditions for traversal queries.
Those conditions are designed in a way that they can be used easily has a lookup policy while traversal by pruning irrelevant sources. 
Those approaches come with some limitations because the criterion have to be chosen carefully by the users not to prune data sources containing relevant results or oppositely
not pruning enough irrelevant sources.
So it is important to clearly define what we meant by completness in LTQP because an absolute measurement of it doesn't necesarly have the same signification. 
Has proposed by Taelman [](cite:cites Taelman2023) in the case of Linked Data Structured Environment (LDSE) the [type index](https://solid.github.io/type-indexes/),
[WedID](https://www.w3.org/wiki/WebID) and [linked data platform](https://www.w3.org/TR/ldp/)
specifications can be used to define a source selector that greatly diminush the domain of exploration and the query execution time.



Another difficulty of LTQP is the crafting of performant query plans.
The lack of a priori statistical information about the data sources and the knowledge of their potential contribution to the results bag it is difficult to
optimize a query plan.
Because of those limitations the current state of the art technique is the <q>Zero-Knowledge Query Planning</q> [](cite:cites Hartig2011).
This approach relies on carefully crafted heuristic to choose the joint order resulting in fairly performant query plans [](cite:cites Hartig2011, Hartig2014).
The usage of heuristics can further be legitimized by the finding of Hartig demonstrating that the main bottleneck in LTQP 
is not the query plan but the large number of HTTP request [](cite:cites hartig2016walking).
For those reason, the research on query performance in LTQP has focused on providing faster results to the users
by ordering the link queue [](cite:cites hartig2016walking)
and pruning heuristic [](Hartig2012) (see the paragraph above) [](cite:cites Taelman2023).
Those two approaches in an open web context doesn't reduce the query execution time, but provide better user experience and make the method more usable in practice.
Nonetheless other authors have tried different approaches such as Ladwid [](cite:cites Ladwig2011) who proposed a costs functions for the evaluations of the choice of join in the context of LTQP but they do not provide a means to evaluate the selectivity of join hence rendering the online evaluation of physical join difficult to be applied.

more authors time to read BE
{:.todo}


I should reread the paper of Olaf and take better note to be sure to really document well their finding.
{:.todo}

### Shape


we are going to refer to shape too in this section or another subsection
{:.todo}



We need to determine if we consider it a stream comming or somesort of window in an infinite database let's also reread the section of the book
{:.todo}

### Query containment

The query containment (QC) problem has been recognized early as an important problem of theoretical relationnal databases. It consist in determining if a conjecture query Q1


