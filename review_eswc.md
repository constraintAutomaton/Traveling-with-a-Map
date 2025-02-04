----------------------- REVIEW 1 ---------------------
SUBMISSION: 16
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Relevance -----------
The work is relevant to ESWC as it is a paper about improving SPARQL queries over RDF which are core technologies of the semantic web.
----------- Strengths -----------
The paper presents an approach to improve the performance of link-traversal queries in large decentralized RDF data graphs.
The authors did an implementation and their approach
The authors did an evaluation of the approach with a benchmark and present and discuss results of that evaluation
----------- Weaknesses -----------
Some definitions are not easy to understand and I think have some typos
The hypothesis and discussion of the results is also not very clear for me
----------- Overall evaluation -----------
I think the approach presented by the authors is really interesting and the work deserves to be known by the community. One problem of the paper is probably that it is trying to present a lot of complex and technical information in a single paper leaving no room to describe in more detail some of the technicalities and making the paper difficult to read.




The authors introduce some terminology in the preliminaries section but I think they don’t introduce the concept of queries. They do introduce the concept of triple pattern, but they use query B in one place and Q in another as well as [[Q]]^G without defining what it is.


I would suggest the authors employ a running example which could be used to motivate the contents of the paper and to clarify the definitions.


The paper is quite difficult to read without such a motivating example that could be used in the LTQP section to explain the intuitive meaning of pruning, shape index and link pruning using shape indexes.


I think it is very positive that the authors implemented their approach and that they did an evaluation based on a benchmark.


The authors list several hypothesis but some of those hypothesis are not very clearly defined. Specially, hypothesis 4 is presented as “More restrictive shapes will provide higher reduction in the number of HTTP requests” which seems intuitive, although it is not clear what is the meaning of more restrictive shapes, are more restrictive shapes “closed” shapes?. Later, the authors say that it is not valid, but I think the explanation provided indicating that “reducing information is rarely detrimental for query execution” is not convincing…because, if the notion of more restrictive shape is that is is a closed shape, then it is not reducing information, it is the opposite, a closed shape is adding information indicating that it doesn’t allow any of the properties not mentioned in the shape, which can be a lot of information…although maybe that information is not used in the concrete implementation.


Some minor comments or typos:


Page 2, “Taelman and Verbouh [38] <<have>> demonstrated that…”
Page 2. “And present preliminaries<<. required>> We then describe…”
Page 2, “we then” is repeated twice in the same sentence making it a bit ugly…
Page 3. “The authors introduce decentralize Knowledge Graphs (DKG) in the third paragraph, but it is used already in the first paragraph”
Page 3. “traversal;<<space required>> a process we could refer as…”
Page 3. Reference 13 lacks details: Automatic extraction of shapes using sheXer, Daniel Fernández Álvarez, Jose Emilio Labra Gayo, Daniel Gayo Avello, Knowledge-Based Systems -2022: doi: https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdoi.org%2F10.1016%2Fj.knosys.2021.107975&data=05%7C02%7CRuben.Taelman%40ugent.be%7Ce830bc8133b14c03d96408dd4074de26%7Cd7811cdeecef496c8f91a1786241b99c%7C1%7C0%7C638737592884199979%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=d%2BcD6sI22%2BtrYywUSDz9i6onIhZU18QiIdsY%2FpHAf3k%3D&reserved=0
Page 4, definition 1, the last “and variable” should be removed, as variables are only for triple fragments.
Page 4, I think the definition of O should also include literals in the union.
Page 4, section 3.2, the authors use query B, and later in the paper query Q, are they the same? Why not using Q in both cases?
Page 4. Section 3.3 the authors define one more time DKGs which were already defined in a
previous section.
Page 5, the authors use [[Q]] without explaining it. Should the introduce the notion of queries and their semantics in the preliminaries section?
Page 5, section 4.1, what is cd and what is cp ?
Page 6, “We define a shape index <<is/as>> a mapping between…”
Page 6, Equation 4 contains an IRI_n and just after it, the authors talk about n entries…are those n’s the same?
Page 7, section 4.3, the authors use cd_{shape_index}, why not cd_{SI} to make it simpler?
Page 7, “From <this/these> sets of links…”
Page 8, after the references [27, 5, 31, 46] the authors include a dot, a space and then the footnote…I think the footnote should be before the dot.
Page 8, I am not sure I understand the sentence “if we ignore negative statement such has KG validating this shape does not have this property”
Page 10, in the Appendix, Algorithm 2 presents the full <resolution>? Should it be algorithm or details?
Page 10. H4 “More restrictive shapes”, what do you mean by that?
Page 10, “with cities and comment<s> are associated with posts…”
Page 11. “...where of shape indexes with …” ?
Page 12. “Relationship between HTTP request<s> and query execution time”
Page 13, I didn’t understand what do the authors refer by two different regimes, maybe explain a bit what a regime is?
Page 14, the sentence “because when shape<s> are nested, the nested shapes need to be dereference<d> to solve…” apart of the typos, I didn’t understand what the authors mean.
Page 16, I think the algorithm presented in the appendix is an important part of the paper and although it is presented in the Appendix, it should probably be explained intuitively with an example. Also, it is not clear for me if the input to the algorithm is just the query Q, shouldn’t it also contain the shape as the input or is the shape Q_s? What does branchContained mean in the algorithm? Is it a recursive algorithm because it is invoking “isContained_T”?
----------- Questions -----------
What are more restrictive shapes in Hypothesis H4
----------- Reproducibility -----------
The authors point to github repositories to reproduce the results


----------------------- REVIEW 2 ---------------------
SUBMISSION: 16
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Relevance -----------
The paper addresses the challenges of querying decentralized knowledge graphs (DKGs) through Link Traversal Query Processing (LTQP). The authors propose a shape-based pruning mechanism that utilizes shape indexes provided by data sources to minimize the search space of LTQP.

This is relevant for the ESWC research track.
----------- Strengths -----------
- Improving query execution time for decentralized knowledge graph is an important topic
----------- Weaknesses -----------
- There is no running example in the paper. We don’t see a SPARQL query, an example of QstartT, Qstar etc.  we don’t see a simple DKG to run on it. We don’t see a mini RDF shape index.

- The definition of subweb is missing, making the paper difficult to understand.
The experimentation with template queries (if i well understood) is not convincing. IMHO, It bias the experimentation in favor of the proposal.

- The approach of pruning on schema have important limitations that are not discussed.
----------- Overall evaluation -----------
The paper addresses the challenges of querying decentralized knowledge graphs (DKGs) through Link Traversal Query Processing (LTQP), a method constrained by inefficiencies due to extensive HTTP requests and potentially high data transfer. The authors propose a shape-based pruning mechanism that utilizes shape indexes provided by data sources to minimize the search space of LTQP. By introducing a query-shape containment algorithm, the approach ensures result completeness while reducing query execution times and network load. Evaluations show performance improvements of up to seven times in social media contexts.

The related work does not mention Odyssey (ISWC2017 - (Not my paper)). This is problematic as Characteristic sets can also be used to prune sources, and is related to the proposal. C-Set is  able to capture instantiated classes and is already used in optimisation of federated and non-federated SPARQL query. As it is, I can see C-set as an alternative to shape index.

In section 4.2, it is important to know what a subweb is, however it is not defined. It is also not clear who hosts the shape index? Is there one per participant or one per subweb? It is hard for me to understand “We define a shape index is a mapping
between sets of RDF documents and RDF data shapes, which describe subweb
controlled by a data provider.”

In section 4.4 I don't like the idea of relying on query containment for pruning. As stated in the paper, the query containment problem is NP. I don’t like the argument “complexity de-
pends on the size of the queries, which are typically small in practise [10]; we
do not expect in most cases queries containing thousands or millions of triple
patterns [4]”. NP is here, and maybe some use-case can activate it, some queries in bioinformatic can have 200 triple patterns.


For my understanding, Shape index is pruning based on schema and not on instances. If a query has a correct shape with a very selective constant, it cannot be detected by a shape index. So, from my point of view, the shape index bet on the schema heterogeneity for pruning, if it is not the case, it will be useless.

Pruning with query containment can be interesting but remains a minor scientific contribution to me.

The whole paper has no motivating example at all !! We just have to understand the proposal from definitions and some important one are lacking.
Concerning experiments, i see several problems:
- The baselines are not really described : what is the type index ? Why not have other optimisations to compare with  such as bloom filters or Characteristic sets ?

- Did you run a query template or instantiated templates ?? If it is a template, does it make sense to run templates in social network settings ? From my point of view, this bias results in favor of the proposal.

- Do the queries just expose star queries on path queries ?

- In the proposal, the notion of subweb matters, how many subwebs  in the experiment ? Possible to explain the subweb  in the context of the exp ??

Strength:
- Improving query execution time for decentralized knowledge graph is an important topic

Weakness:
- Related work needs improvements
- There is no running example in the paper. We don’t see a SPARQL query, an example of QstartT, Qstar etc.  we don’t see a simple DKG to run on it. We don’t see a mini RDF shape index.

- The definition of subweb is missing, making the paper difficult to understand.

- The experimentation with template queries (if i well understood) is not convincing. IMHO, It bias the experimentation in favor of the proposal.

- The approach of pruning on schema have important limitations that are not discussed.
----------- Questions -----------
Q1: Did you run a query template or instantiated templates ??

Q2: How many “subweb” in the SolidBenchmark ? Can you explain subweb in this context ?

Q3: What are the limitations of the approach ?
----------- Reproducibility -----------
An anonymous github with everything is part of the submission.


----------------------- REVIEW 3 ---------------------
SUBMISSION: 16
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Relevance -----------
The paper is clearly relevant as it considers traversal-based processing of SPARQL queries.
----------- Strengths -----------
S1 Using additional information about the structure of data behind iris is clearly a viable approach to improve performance of traversal-based query processors.
S2 The paper implements its proposed method within a system and provides links to the implementation.
S3 The paper uses a standard benchmark for the evaluation and demonstrates good improvements over a reasonable baseline.
----------- Weaknesses -----------
W1 The paper is not self-contained, it repeatedly uses notation and concepts that are not introduced in the paper.
W2 The paper comes with a number of notational flaws that make it difficult to understand what it proposes.
W3 The paper lacks examples.
W4 It does not get clear what the effort for creating and especially maintaining the shape index under updates of the local instances is.
----------- Overall evaluation -----------
The underlying idea of adding some structural information to improve traversal-based query processing is reasonable. The paper needs to explain better, however, how the proposed shape indexes should be included in the data offered when an iri is dereferenced. This seems like an important aspect here. It is also not fully clear how much effort systems need to invest to create and especially maintain these indexes. Clearly, structure will mostly be stable, but the actual iris that match a shape tree will likely change frequently. Outdated shape indexes will cause traversals to fail (in the worst case) or at least to be less efficient (in the best case).

A rather strong issue with the paper is that it is not self-contained. Core concepts such as shapes or reachability criteria are not introduced formally in the paper; instead, the paper points to other papers and provides only very shallow explanations. This does not match the otherwise very formal presentation. In addition, core parts such as the actual description of the shape index are not included in the paper, but are required to understand what is proposed. This makes it hard to follow the presentation. A general lack of examples adds to this.
On the formal side, the paper comes with a large number of notational flaws, for example:
* page 4, access functions: The domain should be the set of triples and triple patterns, not a single triple pattern tp.
* page 4, reachability criteria: The paper does not explain what kind of queries B it considers.
* page 4, decentralized knowledge graphs: iri_j\in t is a sloppy notation that was not introduced. g\in r, what is r here? In the following union that defines G, why does this start at 0 when there are n resources?
* page 5: traversal completeness was not defined before even though the paper claims this.
* page 5, Section 4.1: "build a KG G' using a reachability C'", what does this mean? Then again g\in r.
* page 5, Section 4.1: G'\subseteq G, isn't this always the case by construction of G'?
* page 5, Equation 2: This notation was not introduced before, and Q was not introduced.
* page 5, right after Equation 2: It is unclear how G' can include g, shouldn't it include the triples in g? By "a smaller G'", I think you refer to a smaller number of graphs that are accessed, not a smaller number of triples.
* page 6, right after Equation 3: "IRI_i is a set of IRI given n entries", unclear what the n refers to.
* page 6, after Equation 4: The paper should explain what it means that a shape has "a close world assumption". Lateron, the paper talks about closed shapes, is that the same?
* right after that: "a shape index must map every resource in D"; isn't this trivially the case by construction of D?
* page 7, around Equation 8: SI_i(s_j) was not introduced before. C''_i and C''_{i-1} are not explained.

The experimental evaluation uses and extends an existing system. Some additional details regarding the implementation and the setup would be useful here; I don't think that SolidPods are established enough in the community that one can assume them here. The actual setup seems systematic, with varying fractions of graphs exposing shape indexes.

Experimental results are promising, under the assumption that Shape Indexes will be provided. I find it confusing that the paper states that it performs better than the optimal algorithm; clearly, this algorithm is optimal only for the case without additional indexes. The paper should explain this.
----------- Questions -----------
none.
----------- Reproducibility -----------
The paper provides implementation of the code, and it also provides explanations how to reproduce the experiments.


----------------------- REVIEW 4 ---------------------
SUBMISSION: 16
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Relevance -----------
The paper fits well into the scope of ESWC.
----------- Strengths -----------
1. It tackles a very important and relevant problem associated with Linked Traversal Based query execution.

2. The paper reads well and easy to follow

3. The result is interesting and promising
----------- Weaknesses -----------
1. The paper did not talk how feasible is to compute the proposed index? How the index could be automatically computed from decentralized web?

2. How the proposed approach could deal with underlying data updates in the decentralized resources?

3. The approach was not compared with other relevant approaches like SmartKg, WiseKg, BrTPF
----------- Overall evaluation -----------
This paper proposes an approach for Linked Traversal based query executed over decentralized RDF knowledge graphs. The paper tackles an important problem to reduce the search space while ensuring result set completeness. To this end, the author proposed a shape index that is used during the query execution to only select the relevant sources that are able to contribute into the final resultset. SolidBench is used to perform experiments.

Overall, the paper is relevant to the scope of the ESWC. The paper reads well and easy to follow. The evaluation result is promezing. I am a bit concern about how feasible it would be compute the proposed index from decentralized knowledge graphs. How the proposed approach will ensure resulset completeness/correctness if the underlying knowledge graphs are modified? How easy/difficult it would be to update the proposed index? It would be good if the author could justify the reason of selecting the used benchmark and the selected approaches for comparison.
----------- Questions -----------
Q1. How the proposed index could be computed from decentralized RDF knowledge graphs without downloading the entire datasets?

Q2. Is there any mechanism to update the proposed index ?

Q3. How the proposed mechanism ensures resultset completeness/correctness if the underlying decentralized knowledge graphs are modified?

Q4. What was the motivation behind choosing SolidBench and the selected traversal based approaches while ignoring other  relevant approaches like Smart-KG, WiseKg, BrTPF etc

Q5. What was the size of the generated index? How long it took to compute this index?
----------- Reproducibility -----------
The code is available.


------------------------------------------------------
