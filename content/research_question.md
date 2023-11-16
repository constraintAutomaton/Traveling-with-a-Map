## Research Question
{:#research_question}

To structure our research we formulate the following questions and hypothesis.

- Can we use shape in LDSE to create a more selective reachability criterion with the same accuracy as the reachability criteria based on type indexes?

- Can we get the same selectivity with type indexes as the one with shape if we infer the properties of the entity using the classes defined by the indexes?

- How does -the percentage of data sources described by shape influence the query execution time and what is it with type indexes?
- Can we infer from similar data sources information about cardinalities of data sources not described by shape to diminish query execution time without diminishing the accuracy?

- Can we use shape to manage the memory of the triple stored inside the internal memory of the query engine?

- Can we combine the shape with void statistics to improve the cardinality estimate?

Hypothesis

- The usage of shape in LDSE is more selective than the usage of type indexes, but with usage of inference they have the same selectivity.
- The reduction of the percentage of data sources visited increase the query execution time.
- We can infer a less precise but still better on average than the zero knowledge approach by inferring the cardinality of previously seen shapes.
- Void statistics can improve the cardinality estimate.