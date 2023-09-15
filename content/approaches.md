## Approaches
{:#approaches}

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