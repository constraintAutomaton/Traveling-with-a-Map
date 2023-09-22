## Methodology
{:#approaches}

### Query Shape Alignment (QSA)
We defined a query $$ Q $$ to be align with a shape $$ S $$ over the property set $$ P  = \{p_1, p_2, p_3, \cdots\} $$,
denoted as $$ Q \parallel_{P} S $$ when the properties of $$ P $$ are defined in $$ Q $$ and $$ S $$ and the objects $$ o_i $$ in a triple $$ (s, p_i, o_i) $$ 
associated with the property respect the constraint of $$ S $$ and $$ Q $$.
We define a Query Shape Weak Alignment (QSWA), denoted as $$ Q \sim \parallel_{P} S $$ when the $$ o_i $$ don't necessarily respect $$ S $$.

### Query Shape Containement (QSC)

We defined $$ Q $$ to be contained inside $$ S $$ denoted as $$ Q \sqsubseteq  S $$,
iif the answer bag of $$ Q $$ computed on any data source $$ D $$ respecting $$ S $$.
Which is somewhat similar to definition 2.1 of [](cite:cites afariQCE).

### Usages

We aims to use the concept of query shape alignment (QSA) and query shape containement (QSC) for source selection in three contexts, 
Link Traversal Query Processing (LTQP), Federated Querying (FQ) and Joining operations (JO).

#### Link Traversal Query Processing (LTQP)

The first one is Link Traversal Query Processing (LTQP).
In LTQP, 
we can reduce the query execution time, in a structure envrionnement, while keeping the same accuracy by discriminating 
links leading to data sources using a reachability criteria [](cite:cites Hartig2012) that take as input knownledge 
provided to the query engine [](cite:cites Taelman2023).

Given that an engine dereference a $$ S $$ it can pushdown its $$ Q $$ to the same level as the S encounter.
With those two entities on the same level it can verify if $$ Q \parallel_{P} S $$ or $$ Q \sim \parallel_{P} S $$
over at least one property of the $$ P $$ of $$ Q $$.
If one property is align with the shape than it is possible that with the current triple store or with future data sources that
a query results could be produce, hence why it is not necessary for $$ Q $$ to be fully align with $$ S $$

find reference for pushing down 
{:.todo}

We suppose that QSWA is easier to compute than QSA, but QSWA is less discriminant and might make the engine visit data sources that contains data that will not contribute to the query answer given analysis of the full BGP or of the filter expression.


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

### Resolution

A Conjective Queries $$ Q $$ can be converted into an infinite number of canonical databases ($$ D_Q  = \{ d_{q1}, d_{q2}, \cdots  \}$$) by remplacing the variables of a query into a constant [](cite:cites afariQCE).


#### QSWA 

Given $$ S $$ with a close world assumption that constrain the properties set $$ PS  = \{ ps_1, ps_2, \cdots, ps_m \}$$ and a $$ Q $$ with the properties $$ PQ = \{pq_{1}, pq_2, \cdots, pq_n \} $$,
the engine accept a link leading to a data source associated with $$ S $$ if $$ \exist (pq_i \in PS)$$.
Given that $$ PS $$ is store in an hasmap with $$ O(1) $$ complexity for acccess than the time algorithm is O(n).


#### QSA for LTQP

Given $$ S $$ with a close world assumption and a that constraint the properties set $$ PS $$
and $$ Q $$ with the properties $$ PQ = \{pq_{1}, pq_2, \cdots, pq_n \} $$.
Considering $$ S\prime $$ a shape containing only the property $$ pq_i $$ evaluated and where the cardinality
constraint has been lift because the <q>query triples [are not able to] catch the complete data structure</q>[](cite:cites Abbas2017) of $$ S $$.

the engine accept a link leading to a data source associated with $$ S $$ if a there is a branch of the BGP containing a $$ pq_i $$
that respect the constraint associated with a $$ ps_j = pq_i $$ considering the segment of the filter expression of $$ Q $$ in relation with the node of the branch of the BGP.

For the resolution of this problem we can transform the sub BPGs into Canonical databases where the variables becomes element that respect $$ S\prime $$
if a segment of the form of the sub BGP (segment with a lenght greater than one ) can be contained in $$ S $$ and the constant of the sub BGP respect $$ S $$. 
If the above cannot be satify than the property cannot be aligned with $$ S $$ hence it is not possible to find contributing triple in the associated data source. 

We can run QSWA first and see if there is at least a weak aligmnent then we can simply construct BGP that are inside of S
{:.todo} 


Modify the definition of QSA, to consider a sub lenght, make sure we take a segment of S and not the full
{:.todo}







### QCS



Proposition X
Given a $$ S $$ with a close world assumption and a $$ Q $$ and , if there exist a in $$ D_Q $$ a data base that can be validate  



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