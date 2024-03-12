## Definitions

### Shape
We define an RDF shapes $$S$$ similarly to Abbas [](cite:cites Abbas2018).
It is a set finite set of expression $$e = {p, c, r}$$, where an expression is defined
by an RDF term predicate $$p$$ with associated constraint $$c$$ and cardicality range $$r$$. 
An expression $$e$$ can be a  direct expression,
disconjunction of expressions $$e=e_1|e_2$$, an unordered concatenation  $$e=e_1||e_2$$ or combination of those operation.
A constraint $$c$$ can be a type $$t$$ of the associated property or a set of possible values.

### Shape index
We define a shape index as a map $$SI = \{d_1 \rightarrow S_1, D_2 \rightarrow S_2 \dots, d_n \rightarrow S_n \}$$
associating RDF resources `d` or set of resources `D` with RDF shape `S`.

### Link Queue Filters
A link queue filter is a function $$F \rightarrow true \lor false$$ returning $$true$$ returning $$true$$ 
when the link is allowed to be dereferenced. 

### Query shape aligment
A  conjective query $$Q$$ is align with  $$S$$ of degree $$a$$ denoted $$Q\perp^aS$$ 
given that in the basic graph patern (BGP) of the query there is $$a$$ predicate $$p_i$$ in the $$Q$$ matching 
with $$p_j$$ properties of $$S$$. 

