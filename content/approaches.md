## Prunning


Our link prunning method follows the reacheability criteria approach we denote it $$c_{shapeIndex}$$.
This criteria can be divided into three aspect;
the discovery of shape indexes, the discovery of documents respecting the 
shape index and the rejection of documents not following the condition of the index.


### Shape index discovery
The discovery of the shape index is a crucial aspect of our approach.
Indeed given the descentralized environment context an engine cannot
assume the location of information that could be exploited to improve it's query processing.
In a LDSE the situation is a bit different because there are some assumption that can be made.
For exemple the [type index specification](https://solid.github.io/type-indexes/) specify
that the type index has to be inside a <q>WebID Profile Document<\q> which solve partially the problem,
because we cannot know the location of the WebID a priori hence the information might be not reachable or
reacable at a time where the impact is reduced. 
We propose another approach which is to exploit 

the system is operating in a decentralized environment where the location
of user information is not enforced there could be information exploitable for 
faster query processing not reachable given engine policy.
To solve this problem we propose two approach, the first one is to include 
a triple in each file refering to a shape index maintain by a user.

### Query pushdown and shape-query aligment

### Links and fitler pushing into the link queue

Check if a shape index exist
    - Dereference it

pushdown the query and evaluate it with the shape associated with the shape index

Push link into the link queue
    - Direct link
    - A set of link
Generate filter
    - Direct link
    - Set of link

filter in link queue
    - On push
    - On pop
    - Size

<!---
## Methodology
{:#approaches}

this section mix litterature review with methodology but I don't think it is super bad for the moment.
{:.todo}


Make a proper definition of what is a shape and what is a query, we will probably restricted ourselve to well defined shape
{:.todo}

### Query Shape Alignment (QSA)

We defined a query $$ Q $$ to be aligned with a shape $$ S $$ with a degree $$ n $$ over the property set $$ P  = \{p_1, p_2, p_3, \cdots\} $$,
denoted as $$ Q \parallel_{P, n} S $$, when the properties of $$ P $$ are defined in $$ Q $$ and in $$ S $$ and the $$ n $$ descendant terms starting with the object $$ o_i $$ associated with the properties respect the constraint of $$ S $$. 
It has to be considered, that sometimes the constraint of the object will lead to
the validation of a nested shape making the operation recursive.

evaluate simple things for the object like if it is IRI, Literal or blank node, if equality
{:.todo}

### Query Shape Containement (QSC)

We defined $$ Q $$ to be contained inside $$ S $$ denoted as $$ Q \sqsubseteq  S $$,
iif the answer bag of $$ Q $$ computed on any data source $$ D $$ respecting $$ S $$.
It is somewhat similar to the definition 2.1 of [](cite:cites afariQCE).

### Usages

We aim to use the concept of query shape alignment (QSA) and query shape containment (QSC) for source selection in three contexts, 
source selection in Link Traversal Query Processing , query planing in LTQP, and Federated Querying.

#### Source Selection in Link Traversal Query Processing (LTQP)

In LTQP, a maj



we can reduce the query execution time, in a structured environment, by discriminating 
links leading to data sources that surely cannot contribute to the query results [](cite:cites Taelman2023).
This data source discrimination method consists of defining an adequate reachability criteria [](cite:cites Hartig2012);
an adequate criteria in this context must imply a domain that includes the 
complete results of the query and exclude a large portion of data sources that cannot contribute to the result bag [](cite:cites Taelman2023). 
The restriction of the domain is done by allowing the engine to only dereference triple terms (leading to data sources) respecting a condition provided by the user.


In our research, we are using the concept of QSA as our discriminatory mecanism in the reachability criteria.
Given that an engine dereference a $$ S $$ it can pushdown its $$ Q $$ to the same level as the $$ S $$ encounter.
With those two entities on the same level the engine can verify if $$ Q \parallel_{P, 1} S $$ over at least one property of the $$ P $$ of $$ Q $$.
If one property is aligned with the shape than it is possible that the data source associated with $$ S $$ contribute to the result.
It has to be noted that the operation $$ Q \parallel_{P, 0} S $$, can also be applied
but there is a posibility that the data sources contains objects that do not respect the constraint of the query.


find reference for pushing down 
{:.todo}

Maybe we can do some link priorisation based on QSA, but it would be in potential future and we can uses as a basis the work of Ruben E.
{:.comment}

#### Federated Querying (FQ)

Given that $$ n $$ enpoints $$ E_i $$ in a federation each expose a shape $$ S_i $$ in a set $$ S = \{S_1, S_2, \cdots S_n\} $$. 
The client can query the shapes $$ S $$ and generate $$ m $$ sub-queries $$ q_j $$ from $$ Q $$ where $$\sum_{j=0}^{m} q_i \equiv Q $$. 
The client can send the queries  $$ q_j $$ to an enpoint $$ E_i $$ if $$ q_j \sqsubseteq  S_i $$, hence sending  exclusive group to the enpoints 
[](cite:cites Schwarte2011).  

find a better name for the sort of main client
{:.todo}

it's really a thing to think about more I think it might be another subject 
that might be tackle by this paper or me or series of papers.
{:.todo}

#### Joining operations (JO)
One of the most important parts of database optimization is the joint ordering. 

reference, talking about adaptative query planning
{:.todo} 

In LTQP there is no statistic information that is given to the query engine a priori, it operates in a mode that has been defined in the literature as Zero-Knowledge Query Planning [](cite:cites Hartig2011).

maybe talk about the heuristic that are usually used, I guess we need to make the distinction between lit rev and method but for the moment IDC
{:.todo}

Given a data sources bound by shapes $$ SC = \{S_1, S_2, S_3, \cdots\} $$ where each $$ S_i $$ has a closed-world assumption
and where the shapes are defined in a way that it is possible to determine which triple is associate to which shape then
we can know the exact or the range of cardinalities (It has to be noted that the range can also be $$ [0, \infty[ $$) for each properties in relation to its subject of the data source (the data source is a  subset of the triple store of the query engine). 
We can approximate the cardinality of the property inside the data source by counting the number of triples and weighting them based its cardinality and the occurrence in $$ SC $$. 

To determine the apartenance of a group of triple to $$ S_i $$, it is necessary to identify a limit condition that differencitate each shape, after
those rules established, the triples have to be group in graphs of shared relations then we can associate each group to a shape by evaluating the condition created earlier.


I guess we can limit ourself with properties not shared because it would be
pretty horible to define a shape that only differt in the cardinalities.
{:.todo}

I need to think it throught. I also need to think about the references of my 
claims
{:.todo}

Nous pouvons commencer par un probleme ou il n'y a qu'une seule forme.
{:.todo}

- Qu'est-ce que je peux connaitre?
    - Je crois qu'il est evident que je peux connaitre les cardinalite en relation au sujet que cela soit une valeur exacte ou une plage, mais je pense qu'il est simple pour le moment de suppose un monde ferme pour toute les formes afin de nous facilite la tache et voir ce qu'on peut faire dans un environnement favorable.
- Qu'est-ce que je peux faire avec ce que je connais?
    - Je ne sais pas vraiment en ce momment...
- Qu'est-ce qui me manque?
    - Dependant du point plus haut que je ne sais pas.
- Qu'est-ce que je peux approximer? 
    - Je pense que les cardinalite general du document peuvent etre approximer. Il sera important a mon avis d'avoir un logiciel separer et de regarder une evaluation parfait contre mon approximation.
{:.todo}

### Resolution


#### QSA 

Given $$ S $$ with a close-world assumption constraining the property set $$ PS  = \{ ps_1, ps_2, \cdots, ps_m \}$$ with the associated object constraint $$ OCS =  \{ ocs_1, ocs_2, \cdots, ocs_m \}$$ and a $$ Q $$ with the  property set $$ PQ = \{pq_{1}, pq_2, \cdots, pq_n \} $$ and the associated object constraint (either from the filter expression or by an IRI or a blank node) $$ OCQ = \{ ocq_1, ocq_2, \cdots, ocq_n \} $$,
the engine accept a link leading to a data source associated with $$ S $$ if 

$$ \exist (pq_i \in PS) \wedge ocq_i \wedge ocs_j(o_i) $$ 

given that $$ o_i $$ is the object term of the property $$ pq_i$$ and $$ j $$ is the index of the property of $$ S $$ matching $$ pq_i $$.


In the case of a degree 0 operation than it can be simplify as 

$$ \exist (pq_i \in PS) $$ 

Given that $$ PS $$ is store in an hasmap with $$ O(1) $$ complexity for acccess than the time algorithm is O(n).

It has to be noted that the cardinalities of S has not been considered because we study conjecture linked data query and

there is a reference for conjecture SPARQL or linked data query
{:.todo}
<q>query triples [are not able to] catch the complete data structure</q>[](cite:cites Abbas2017) of $$ S $$.

I think a demonstration of how much theoriticaly we can prune would be important
{:.todo}

### QCS

A Conjective Queries $$ Q $$ can be converted into an infinite number of canonical databases ($$ D_Q  = \{ d_{q1}, d_{q2}, \cdots  \}$$) by remplacing the variables of a query into a constant [](cite:cites afariQCE).


Proposition X
Given a $$ S $$ with a close world assumption and a $$ Q $$ and , if there exist a in $$ D_Q $$ a data base that can be validate  



The advantage of approach one is that this problem is well known and can be solved with a time complexity of NP-COMPLETE [](cite:cites staworko_et_al:LIPIcs:2015:4985).
The problem lies in that we can only evaluate the BGP of the query converted into a database hence filter expression

validate this claim, maybe union doesn't work 
{:.todo}

Which comes obviously with the disadvantage that query with filters cannot be handled directly. It could be possible to do some first other logic to validate the consistency of the filter.

WIP
{.todo}

### Approaches

There are multiple approaches that can be taken for our problem of query shape containment.
We investigate three of them:

1. Transform the query into a [canonical database](cite:cites afariQCE) and validate it with the shape without cardinality constraint [](cite:cites Abbas2017).

2. Convert the shape into a query [](cite:cites spapeExpressionConvert, 2112.11796) and perform a shape containment validation prosedure with bag-set semantics [](cite:cites Afrati2010).

3. Convert the query into a shape and perform a shape containment validation procedure [](cite:cites Staworko2018ContainmentOS).



- I need to evaluate the time to parse triples vs the computing time.
- I need to put a lot of refence to adaptative query planning.
- One good thing about this work is that we want to be able to discriminate and do some query planning without having to ask the data provider to maintain something more given that having a shape has good benefit on it's own and if the data provider want something very loss it can also do it, and IMO without having anyways to really know what is inside a data source how can we expect and application to do something out of it. We need some sort of shema some sort of contact.
{:.todo}

## Discover shapes
- Centralized file
    - We have to discover somehow
    - Force to be at a specific place
        - If we know it's a pod than we can trace it back
- The shape can be contain inside the container and pertain to it


we have the shape inside a shape tree file and the triples are also in the storage description.
--->