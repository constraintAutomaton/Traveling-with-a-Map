## Methodology
{:#approaches}

### Query Shape Alignment (QSA)
We defined a query ($$ Q $$) to be align with a shape ($$ S $$), denoted as $$ Q \parallel_{p} S $$ when there is an overlap for at least one property ($$ P $$) of $$ Q $$ and $$ S $$ considering that the object ($$ O $$) in a triple 

define a triple mathematically 
{:.todo}

of Q associated with the target property is consistent with S.

### Query Shape Containement (QSC)

We defined a query ($$ Q $$) to be contained inside a shape ($$ S $$) denoted as $$ Q \sqsubseteq  S $$, iif the answer bag of the $$ Q $$ computed on any data source ($$ D $$) respect $$ S $$. Which is similar to definition 2.1 of [](cite:cites afariQCE).

### Usages

We aims to use the concept of query shape alignment (QSA) and query shape containement (QSC) for source selection in three contexts, 
Link Traversal Query Processing (LTQP), Federated Querying (FQ) and Joining operations (JO).

#### Link Traversal Query Processing (LTQP)

The first one is Link Traversal Query Processing (LTQP).
In this context we QSA, if there is a no $$ P $$  in Q overlaping with S then it means that the data source
associated S will not contribute in the query result, hence should be prunned to diminush query execution time.
We can define this procedure prunning a reachability criteria [](cite:cites Hartig2012).


### Approaches

There are multiple approaches that can be taken for our problem of query shape containment.
We investigate three of them:

1. Transform the query into a [canonical database](cite:cites afariQCE) and validate it with the shape without cardinality constraint [](cite:cites Abbas2017).

2. Convert the shape into a query [](cite:cites spapeExpressionConvert, 2112.11796) and perform a shape containment validation prosedure with bag-set semantics [](cite:cites Afrati2010).

3. Convert the query into a shape and perform a shape containment validation procedure [](cite:cites Staworko2018ContainmentOS).

### Approach 1 

The advantage of approach one is that this problem is well known and can be solved with a time complexity of NP-COMPLETE [](cite:cites staworko_et_al:LIPIcs:2015:4985).
The problem lies in that we can only evaluate the BGP of the query converted into a database hence filter expression

validate this claim, maybe union doesn't work 
{:.todo}

Which comes obviously with the disadvantage that query with filters cannot be handled directly. It could be possible to do some first other logic to validate the consistency of the filter.


