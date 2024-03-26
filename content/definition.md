## Definitions
In this section we define some concept....

### Query
For our purpose we define a query $$Q$$ as a set of predicate object
$$P_s= \{p_{s i}, o_{s i}, p_{s i+1}, o_{s i+1} ... p_{s n}, o_{s n} \}$$ that has the same RDF subject.
We ignore the subject and the other element of the query because it is not need for our approach.

### Shape
We define a shapes $$S = \{o:\{true,false\}, E\}$$ similarly to Abbas [](cite:cites Abbas2018).
$$o$$ describe if the shape if open or close.
$$E$$ is a set of shape expression $$e_i = \{p, c, r\}$$ which express the RDF term predicate $$p$$, $$c$$ is a constraint and cardicality range $$r$$. 
An expression $$e_i$$ can be a  direct expression,
disconjunction of expressions $$e_i=e_i|e_j$$, an unordered concatenation  $$e=e_i||e_j$$ or combination of those operation.
A constraint $$c$$ is enforce on the object of the targeted documents, the constraint can be an RDF type, a set of values.

### Shape index
We define a shape index as a set of mapping $$\{R_j, R_{j+1}, R_{j+2}, R_{n} \}$$ between a resource $$s_i$$ or a set of resource $$S_i$$ and a shape, where each entries are $$(S_i, d_k) \in R_j $$.

### Link Queue Filters
A link queue filter is a function $$F:iri \rightarrow \{true, false\}$$, if the function return $$true$$ it means that the link have to be filter
from the link queue.

### Composite reachability criteria
A composite reachability criteria is a reachability created by the combination of multiple reacheability criteria.
We denote it $$C = \sum_{i=0}^{n}{c_i} $$ given $$n$$ criterion.
Reachability criteria can easily be composed because their input is not changed by the application of another reachability criteria 
and they are indepentent from one another. In an implementation an engine would simply execute them one after or in paralelel to populate
a link queue.

### Query shape aligment
For the query shape aligment we analyse the predicate of the query with a same subject $$P_s$$.
a $$P_s$$ is weakly of degree $$a$$ with a shape $$S$$ denoted $$P_s \parallel^a S$$ 
if there are $$a$$ predicates identical with a shape expression.
More formaly  $$p_{s i}$$  where $$\exist p_{s i} \in e_j $$.
$$P_s$$ can be strongly aligned denoted $$Q \parallel S$$ if one of the two condition are fullfil.
The first one is all the expression of $$S$$ share all the predicate of $$P_s$$, more formally
$$\forall e_j$$ in $$E,  \exist p_{s i} \in e_j$$.
$$P_s$$ is also strongly aligned if one of the predicate of $$P_s$$ and of $$E \in S$$ define a predicate with the value rdf type $$t$$ (`http://www.w3.org/1999/02/22-rdf-syntax-ns#type`)
and the associated object of the predicate validate an equal constraint of the subexpression.
More formaly $$\exist p_{s i} \in e_j = t \land c \in e_j \land c(o_{s i}) = true$$.

### Shape intersection
