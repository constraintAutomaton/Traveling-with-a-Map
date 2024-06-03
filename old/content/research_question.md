## Research Question
{:#research_question}

I will need to have talked about the current state of the exploration of pods
{:.todo }


To structure our research we formulate the following questions and hypothesis.

- Can we use shape in LDSE to create a more selective reachability criterion with the same accuracy as the reachability criteria based on type indexes?

- Can we get the same selectivity with type indexes as the selectivity with shapes if we infer the properties of the entity using the classes defined by the indexes?

- How does the percentage of data sources described by shapes influence the query execution time and what is it with type indexes?


interesting thing to add
Can we use shape to manage the memory of the triple stored inside the internal memory of the query engine?
{:.todo }

Hypothesis

- The usage of shape in LDSE is more selective than the usage of type indexes, but with usage of inference they have the same selectivity.
- The reduction of the percentage of data sources visited increase the query execution time.
- We can infer a less precise but still better on average than the zero knowledge approach by inferring the cardinality of previously seen shapes.
