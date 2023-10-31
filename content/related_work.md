## Related Work
{:#related_work}

### Shape


### Link Traversal Query Processing

Link Traversal Query Processing (LTQP), is a SPARQL querying paradigm that aims at answering queries by exploring the web using the
follow-your-nose priniple of linked data [](cite:cites hartig2016walking).
The query execution start by the dereferencing of URLs called [seed URLs](cite:cites hartig2016walking), with the purpose of injesting their data inside an internal data source, new data sources are obtained by recursively dereferencing particular IRIs following a user defined lookup policy called reachability criteria [](cite:cites Hartig2012).

Given the lack of a priori statistical information about the data sources and also the knowledge of which data source will contribute
to the results bag, it is challenging to create a query plan. Hence the state of the art approach has been to rely on divers heuristic [](cite:cites Hartig2014) for the join ordering.

The number of HTTP request has been identified as a major performance bottleneck [](cite:cites hartig2016walking) hence the research


We need to talk about blocking and not blocking opration "SIHJoin: Querying Remote and Local Linked Data"
{:.todo}

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


