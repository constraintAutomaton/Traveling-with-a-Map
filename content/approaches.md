## Methodology
{:#approaches}

### Query Shape Alignment (QSA)
We defined a query ($$ Q $$) to be align with a shape ($$ S $$) over the property set $$ P  = \{p_1, p_2, p_3, \cdots\} $$,
denoted as $$ Q \parallel_{P} S $$ when the properties of $$ P $$ are defined in $$ Q $$ and $$ S $$ and the object ($$ o $$) ($$ (s, p_i, o) $$) 
associated with the property respect the constraint of $$ S $$ and $$ Q $$.
We define a Query Shape Soft Alignment (QSSA), denoted as $$ Q \sim \parallel_{P} S $$ when the object don't respect $$ S $$.

### Query Shape Containement (QSC)

We defined a query ($$ Q $$) to be contained inside a shape ($$ S $$) denoted as $$ Q \sqsubseteq  S $$,
iif the answer bag of the $$ Q $$ computed on any data source ($$ D $$) respecting $$ S $$. Which is similar to definition 2.1 of [](cite:cites afariQCE).

### Usages

We aims to use the concept of query shape alignment (QSA) and query shape containement (QSC) for source selection in three contexts, 
Link Traversal Query Processing (LTQP), Federated Querying (FQ) and Joining operations (JO).

#### Link Traversal Query Processing (LTQP)

The first one is Link Traversal Query Processing (LTQP).
In LTQP, 
we can reduce the query execution time while keeping the accuracy by discriminating links based knownledge 
provided to the query engine in structure envrionnement [](cite:cites Taelman2023).
This linked prunning mecanism has been defined by Hartig as a reachability criteria [](cite:cites Hartig2012).
Given that an engine encounter a shape $$ S $$ and push down its query $$ Q $$ to the same level than the triple pattern analysis
we can verify if $$ Q \parallel_{P} S $$ or $$ Q \sim \parallel_{P} S $$ over at least one property of the property set $$ P $$ of $$ Q $$.

find reference for pushing down 
{:.todo}

We suppose that QSSA is easier to compute than QSA, but QSSA is less discriminant and might make the engine visit data sources that contains data
that will not contribute to the query answer.


#### Federated Querying (FQ)

Given that $$ n $$ enpoints $$ E_i $$ in a federation each expose a shape $$ S_i $$ in a set $$ S = \{S_1, S_2, \cdots S_n\} $$. 
The client can query the shapes $$ S $$ and generate $$ m $$ sub-queries $$ q_j $$ from $$ Q $$ where $$\sum_{j=0}^{m} q_i \equiv Q $$. 
The client can send the queries  $$ q_j $$ to an enpoint $$ E_i $$ if $$ q_j \sqsubseteq  S_i $$, hence sending  exclusive group to the enpoints 
[](cite:cites Schwarte2011).  

find a better name for the sort of main client
{:.todo}

it's really a thing to think about more
{:.todo}

#### Joining operations (JO)



### QSSA for LTQP

Given a $$ S $$ with a close world assumption that caracterise properties $$ PS $$ and a $$ Q $$ with the properties $$ PQ = \{pq_{1}, pq_2, \cdots, pq_n \} $$,
we can add the link to the data source associated with $$ S $$ if $$ \exist (pq_i \in PS)$$.
Given that $$ PS $$ is store in an hasmap with O(1) complexity for acccess than the time algorithm is O(n)


The time complexity is O(n) time complexity given that the properties of $$ S $$ are  inside an hashmap with

### QSA for LTQP

Approach 1

Conjective Queries $$ Q $$ can be converted into an infinite number of canonical databases ($$ D_Q  = \{ d_{q1}, d_{q2}, \cdots  \}$$) by remplacing the variables of a query into a constant [](cite:cites afariQCE).

Proposition X
Given a Shape $$ S $$ if we it is open

### QCS

The advantage of approach one is that this problem is well known and can be solved with a time complexity of NP-COMPLETE [](cite:cites staworko_et_al:LIPIcs:2015:4985).
The problem lies in that we can only evaluate the BGP of the query converted into a database hence filter expression

validate this claim, maybe union doesn't work 
{:.todo}

Which comes obviously with the disadvantage that query with filters cannot be handled directly. It could be possible to do some first other logic to validate the consistency of the filter.



### Approaches

There are multiple approaches that can be taken for our problem of query shape containment.
We investigate three of them:

1. Transform the query into a [canonical database](cite:cites afariQCE) and validate it with the shape without cardinality constraint [](cite:cites Abbas2017).

2. Convert the shape into a query [](cite:cites spapeExpressionConvert, 2112.11796) and perform a shape containment validation prosedure with bag-set semantics [](cite:cites Afrati2010).

3. Convert the query into a shape and perform a shape containment validation procedure [](cite:cites Staworko2018ContainmentOS).