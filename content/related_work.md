## Related Work
{:#related_work}

### Link Traversal Query Processing

LTQP is a SPARQL querying paradigm that aims at answering queries by exploring the web using the
follow-your-nose principle of linked data [](cite:cites hartig2016walking).
The query execution starts with the dereferencing of initial URLs called [<q>seed URLs</q>](cite:cites hartig2016walking).
The engine then injects the data of the discovered source inside the internal data store and execute the query.
New data are obtained by recursively dereferencing IRIs following a user-defined lookup policy.

The LTQP approach comes with some difficulties.
The open endlessness of the web is an important one.
Reachability criteria [](cite:cites Hartig2012) and the source selectors of the Subweb specification [](cite:cites Bogaerts2021LinkTW) (a more expressive way to formalize reachability criteria)
try to alleviate this problem by formalizing completeness conditions for traversal queries.
Those conditions are designed in a way that they can be used easily has a lookup policy to prune irrelevant sources. 
Those approaches come with some limitations because the criterion have to be chosen carefully by the users not to prune data sources containing relevant results or oppositely
not pruning enough irrelevant sources.
So it is important to clearly define what we meant by completeness in LTQP because identical absolute measurement doesn't necessarily have the same signification. 
Has proposed by Taelman [](cite:cites Taelman2023) in the case of Linked Data Structured Environment (LDSE) the [type index](https://solid.github.io/type-indexes/),
[WedID](https://www.w3.org/wiki/WebID) and [linked data platform](https://www.w3.org/TR/ldp/)
specifications can be used to define a source selector that greatly diminush the domain of exploration and the query execution time.


Another difficulty of LTQP is the crafting of performant query plans.
The lack of a priori statistical information about data sources and the lack of knowledge of their potential contribution to the results bag make it difficult to
optimize a query plan.
Because of those limitations the current state of the art technique is the <q>Zero-Knowledge Query Planning</q> [](cite:cites Hartig2011).
This approach relies on carefully crafted heuristic to choose the joint order resulting in fairly performant query plans [](cite:cites Hartig2011, Hartig2014).
The usage of heuristics is further legitimized by the fact that the main bottleneck in LTQP 
is not the query plan but the large number of HTTP request [](cite:cites hartig2016walking).
For those reason, the research on query performance in LTQP has focused on providing faster results to the users
by ordering the link queue [](cite:cites hartig2016walking, Ladwig2010),
By for instance ranking sources [](cite:cites Ladwig2010)

Je pense qu'il faut que je compare l'approche de ladwig avec celle de Hartig et du moins pour le moment il semble qu'avec les formes
je puisse utiliser egalement l'approche de Ladwig.
{:.todo}

and pruning heuristic [](cite:cites Hartig2012) (see the paragraph above) [](cite:cites Taelman2023).
Those two approaches in an open web context doesn't reduce the query execution time, but provide better user experience hence making LTQP more usable in practice.
Nonetheless other authors have tried different approaches such as Ladwid [](cite:cites Ladwig2011, Ladwig2010) who proposed a costs functions for the evaluations of the choice of join in the context of LTQP and a source 

 but they do not provide a means to evaluate the selectivity of join hence rendering the online evaluation of physical join difficult to be applied.

Miranker [](cite:cites Miranker2012) propose the use of a Rete network,
but don't evalutate it's performance against the other approaches.

more authors time to read BE
{:.todo}


I should reread the paper of Olaf and take better note to be sure to really document well their finding.
{:.todo}

### Shape
RDF shapes have been used primarly in validation and description of data [](cite:cites Gayo2018a),
communicating data strutures, generating data and driving user interfaces [](cite:cites Gayo2018).
RDF shapes have the same role as relational and xml schemas [](cite:cites 10.1007/978-3-319-68288-4_7).
The two main formalism are SHACL and ShEx.
Both language share the common goal of describing RDF data, but they have different approaches.
ShEx focus on describing RDF graph structure whereas SHACL focus on describing constraints.
For common use cases they share the same expressiveness [](cite:cites Gayo2018c) thus they can be used interchangely.
The semantic of ShEx, is sound given that we apply some restriction to the syntaxes namely restricting the negations (mainly locally) and the recursion to avoid costy validation and uncoherent facts [](cite:cites 10.1007/978-3-319-68288-4_7).
Shex and SCHACL shapes can be closed or open [](cite:cites Gayo2018, Gayo2018b), which can have a large impact on their usage.

Shapes have also been used in the context of querying for instance selectivity estimate [](cite:cites Abbas2018) and cardinality estimate [](cite:cites kashif2021).

caracteristic set

Talk about how shapes can become queries
{:.todo}




### Query containment

The query containment (QC) problem has been recognized early as an important problem of theoretical relationnal databases. It consist in determining if a conjecture query Q1


