----------------------- REVIEW 1 ---------------------
SUBMISSION: 26
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Overview -----------
This paper addresses the problem of processing link traversal queries efficiently. The proposed method uses the data shape of queried resources to determine if links to be dereferenced are relevant to a given query or not, and then prunes irrelevant links from the search space. The aim is to reduce the search space and the number of HTTP requests required to execute the query. The method was evaluated on the SolidBench benchmark. The reported results support the approach. A mature open-source implementation is available.
----------- Relevance -----------
The paper is clearly relevant to ISWC.
----------- Positioning wrt state of the art -----------
The positioning is clear, and the paper provides a concise but effective overview of related work. The related work section is split across three subsections, each with criticism that motivates the proposed method. It could help the reader to write a short conclusion paragraph at the end of Section 2 that brings together all the criticisms to emphasize the gap.
----------- Novelty -----------
The proposed method has novelty. The core underlying ideas seem straightforward, but the method is well-constructed and executed.
----------- Potential impact -----------
Efficiency is a fundamental issue in LTQP. An open-source implementation supports the proposed shape-based pruning method. I have not tried running the experiments, but the implementation appears mature and well-documented.
----------- Readability -----------
Overall, the paper is well written and structured. Sections 1-3 are very easy to follow. Sections 4 and 5 are quite dense and harder to follow. Fixing some minor issues could help (see detailed comments).
----------- Technical soundness -----------
The paper is technically sound and discusses the assumptions and limitations of core design choices.
----------- Reproducibility -----------
The supplementary material is extensive and includes the open-source implementation, results, the analysis of the results, and separate repositories for reproducing the experiments.
----------- Strengths -----------
- both the problem being addressed and the contribution are clear
- the contribution has novelty, and is supported by a mature open-source implementation and extensive experiments
- the paper is well-written and structured (with some room for improvement)
----------- Weaknesses -----------
- Sections 4 and 5 are quite dense and hard to follow (see detailed comments for some suggestions)
----------- Questions to the authors -----------
No specific questions
----------- Detailed Review -----------
The topic is highly relevant for ISWC: efficiency is a fundamental issue for LTQP. Both the problem and the contribution are clear. The proposed method has novelty. While the core underlying ideas may seem straightforward, the method is well-constructed and executed: the paper proposes a formalization of shape-based pruning for LTQP that is well grounded in prior concepts proposed by the community, e.g. by extending the reachability criteria formalized in [27] to composite reachability criteria constructed dynamically during traversal. The approach is supported by extensive experiments and a mature open-source implementation, which promotes reuse. As such, the submission seems to have high potential for impact.

As far as I followed the formalization, the paper is technically sound. The paper also discusses the assumptions and limitations of core design choices (e.g., the limitations of the link pruning method in Section 4.3).

Overall, the paper is well-written and structured. That said, Sections 4 and 5 are quite dense and hard to follow. A few typos and minor issues could be easily addressed to improve legibility:

In Definition 2, the ordering of the sets as used in the notation is not always consistent (e.g., IBV, IVB, ILVB, etc.). Using a consistent ordering (e.g., B always before V or vice versa) could help.

I had to read the explanation to Definition 3 multiple times: "where si is a shape and IRIi is a set of IRI given n entries" => set of IRIs? given n entries in the shape index?

On page 7: "Defined in Definition 3, graph star(s) (patterns) serve two purposes" => Should this point to Definition 4 instead?

The text in Figure 2 is too small. Other notes on this image:
- what is meant through the triple "sw:shapeIndex si:shapeIndexLocation sw:shapeIndex ;"? Should the object be the same as the subject here?
- the namespace used for the "si:" prefix is "https://eur03.safelinks.protection.outlook.com/?url=https%3A%2F%2Fshapeindex.com%2F%23&data=05%7C02%7CBryanelliott.Tam%40ugent.be%7Cc1a53e871d7c45ddd21508ddadc29996%7Cd7811cdeecef496c8f91a1786241b99c%7C1%7C0%7C638857774650220955%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C80000%7C%7C%7C&sdata=TbiLpfrUlQxXq1wmLwEqCv3nrTRvYcrwdnQmEFWJGac%3D&reserved=0"; this IRI seems to be in use for something different
- Figure 2 could be better placed on the following page

To make Section 5 more self-contained, it would be helpful to provide a brief overview of the query templates being used and their key characteristics (at least S4 and S7, which are discussed as specific examples). Currently, it requires some effort (and a bit of guessing) to browse through the supplementary material and locate the query templates mentioned in the paper.

Caption of Fig. 3: "the plot on the right compares the type index approach against other methods" and "each method compares to that of the type index". Should these statements say "shape index" instead of "type index"?

In Section 5, it would be helpful for the reader to provide a brief description of each hypothesis as a reminder. The conclusion for which H3 is rejected is unsurprising, and it seems the formulation of H3 could have been refined further.

Other typos I noted:
- page 1: "Linked Data and knowledge graph (KG) can be considered" => knowledge graphs?
- page 2: "a subset of a subwebs" => subweb?
- page 2: "only resources containing posts needs to be accessed" => need?
- page 10: "for a S to subsumed a shape" => subsume?
- page 15: "we introduced pruning mechanism" => a pruning?


----------------------- REVIEW 2 ---------------------
SUBMISSION: 26
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Overview -----------
This paper basically claims two major contributions:
1. Shape indexes for pruning irrelevant data sources during query execution time in Linked Traversal Query Processing (LTQP)
2. A novel query-shape subsumption algorithm for assessing data source
----------- Relevance -----------
The paper fits well into the ISWC CFP
----------- Positioning wrt state of the art -----------
I am a bit concern about positioning of the proposed method wrt state of the art. The paper proposes a solution for LTQP. There exist more recent LTQP solutions, e.g., StarTPF, BRTPF, WiseKG, SAGE etc. A comparison/positioning of the proposed method with these solutions is missing in the paper
----------- Novelty -----------
The creation of shape indexes and proposing query-shape subsumption algorithm for assessing data source is a novel contribution in LTQP
----------- Potential impact -----------
LTQP suffers from high query execution time. This paper could facilitate the use of LTQP in practice
----------- Readability -----------
The paper reads well. The author provides sufficient running examples. The author considered the creation and maintenance of the proposed index (which is one of the main contribution of this paper) beyond the scope of this paper. It would be useful if the authors could provide details on data updates does not affect the index? how long it took to create an index? Is it possible to create the required index online? or one need to first download the whole data and then create index.
----------- Technical soundness -----------
The technical approach is sound and well motivated. Overall, the paper is easy to follow and understand the whole approach.
----------- Reproducibility -----------
The paper provides sufficient running examples, the benchmark datasets, queries and code is available.
----------- Strengths -----------
1. The paper targets a very important and relevant problem associated with LTQP
2. The topic of the paper fits well in to the conference CFP
3. The results are promising
4. The paper reads well and easy to follow
----------- Weaknesses -----------
1. There exists more recent LTQP approaches like STarTPF, SmartKG, WiseKG, SAGE etc. I was wondering why the proposed approach is not compared/positioned with these approaches ?

2. Only 10 queries were used in the evaluation. The author performed statistical tests (as mentioned in the paper). I am not sure if comparison/statistical test based on only 10 queries could leads to sound conclusions?

3. The paper is more SOLID specific. I was wondering why the author choose SolidBench? How the results would look like if more general triple pattern fragments benchmark was used?
----------- Questions to the authors -----------
1. There exists more recent LTQP approaches like STarTPF, SmartKG, WiseKG, SAGE etc. I was wondering why the proposed approach is not compared/positioned with these approaches ?

2. Only 10 queries were used in the evaluation. The author performed statistical tests (as mentioned in the paper). I am not sure if comparison/statistical test based on only 10 queries could leads to sound conclusions?

3. The paper is more SOLID specific. I was wondering why the author choose SolidBench?

4. How the proposed index is independent (as claimed in the paper) of the underlying data updates?

5. For the index creation, do we need to first download the whole datasets or could be created by executing online queries? How long it took to create the proposed index?
----------- Detailed Review -----------
The paper targets an important topic of query processing based on Linked Traversal over over decentralized RDF knowledge graphs. The current LTQP suffer from high query execution time. The author target this problem and proposed a shape based index and query-shape subsumption algorithm for assessing data source LTQP. The paper reduce the search space while ensuring result set completeness. An evaluation is performed based on SolidBench and using 10 queries.

The paper reads well and easy to follow. I liked the different examples given in the paper. It helped me to understand the proposed shape index and the subsumption algorithm. The benchmark datasets, queries, and code is available. The evaluation result is indeed very good and big improvements in query runtime performance. I am expecting the author to give a more focus on positioning of the proposed approach wrt state of the art. I am looking forward to see answers to the questions given in the previous section.


----------------------- REVIEW 3 ---------------------
SUBMISSION: 26
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Overview -----------
The paper addresses the inefficiency of Link Traversal Query Processing by introducing a shape-based pruning mechanism. This mechanism uses RDF shape indexes and a query-shape subsumption algorithm to reduce the search space and unnecessary HTTP requests during query execution.
----------- Relevance -----------
Link Traversal Query Processing perferctly fits in the scope of the conference. The paper is suitable for the research track as it provides novel methods that are experimentally evaluated.
----------- Positioning wrt state of the art -----------
All the relevant works are introduced and positioned properly wrt proposed approach.
----------- Novelty -----------
The addressed problem is not new. It has been studied for a while now in the community. However, the presented solution is original and advances in the problem.
----------- Potential impact -----------
As mentioned by the authors, the paper makes a strong assumption: data providers maintain up-to-date shape indexes and outdated indexes may lead to incomplete results. Hence the potential impact of the proposal is affected by availability of such indexes (and the willingness of the authors to create and maintain them). Despite this, the potential impact is high as it was evidenced that it can optimize link traversal performance.
----------- Readability -----------
The paper is well structured and written.

Typos:
- Page 4: has been show that (showN)
- Page 6: Our approach of pruning in LTQP focus (focusES)
----------- Technical soundness -----------
The core decisions are motivated the work looks sound.
----------- Reproducibility -----------
The reproducibility of the paper is good. The authors made all the resources available, and the fact that the approach is implemented in a well-known framework in the community as Comunica helps in the reproducibility of experiments.
----------- Strengths -----------
- The paper address LTQP, a relevant problem within the semantic web
- The technical appoach is sound and well motivated
- The experimetal results evidence the effectiveness of the approach
----------- Weaknesses -----------
- The work makes the strong assumption that data provider make the indexes available
----------- Detailed Review -----------
Find my comments in the sections above.


----------------------- REVIEW 4 ---------------------
SUBMISSION: 26
TITLE: Traveling with a Map: Reducing the Search Space of Link Traversal Queries Using RDF Shapes
AUTHORS: Bryan-Elliott Tam, Ruben Taelman and Pieter Colpaert

----------- Overview -----------
The paper presents a shape-based pruning approach to optimize Link Traversal Query Processing (LTQP) in decentralized knowledge graphs, aiming to reduce query execution time and network usage while maintaining result completeness. Shape indexes help identify query-relevant resources, reducing unnecessary HTTP requests. ​The pruning strategy allows the query engine to focus on relevant parts of the network. Results show up to a 7 times reduction in network usage. The approach is also tested when not all nodes have shape indices.
----------- Relevance -----------
LTQP is quite relevant in terms of web data and distributed knowledge graphs
----------- Positioning wrt state of the art -----------
The authors review relevant work in distributed query processing, source selection, and shapes.
----------- Novelty -----------
Schema-based source selection/search pruning is not a novel topic, but its application to LTQP is. Further, the authors test their approach with varying levels of schema (shape) information, which would reflect a more realistic scenario.
----------- Potential impact -----------
Even as interesting a problem LTQP is, I don't see it having too much impact. It being a problem rarer than federated query processing, and federations not really being used too much, makes the contribution rather niche, and relevant only to solid users and the like.
----------- Readability -----------
The theoretical part is quite convoluted and harder to read. There are many concatenated subindices for every concept defined. I think there are more elegant ways to present the maths and theory behind this. Algorithm 1 has a tiny font, making it practically unreadable. The right part of Fig. 1 is hard for me to understand what it is supposed to mean. Figures 3 and 4 had to be magnified 200% to be readable.
----------- Technical soundness -----------
As it was quite hard to follow, in particular in the theory sections, I can only hope I didn't miss any bugs. Nevertheless, the authors seem to be very knowledgeable about the problem itself, the related work, and the underlying theory.
----------- Reproducibility -----------
The authors provide a comprehensive repository with all the code, data, and experiments. Very well documented.
----------- Strengths -----------
- Addresses network load for distributed link traversal queries
- Leverages commonly used schema definitions for graphs to reduce the seach space
- Comprehensive evaluation, and provide all sources, data and experiments
----------- Weaknesses -----------
- Niche impact
- Convoluted formalization
- Presentation issues, unreadable font sizes, and figures
----------- Questions to the authors -----------
Please explain the right-hand side of Fig. 1
You tested your approach on incomplete shape information. How would your shape-based link traversal behave in the presence of incomplete or invalid shape descriptions, which are common on the Web? Can it still guarantee completeness or soundness under such conditions?
In your experiments, some queries perform worse with shape constraints. Can you elaborate on the causes of this behavior and whether you foresee adaptive mechanisms to fall back to unconstrained traversal?
----------- Detailed Review -----------
At the start of the paper, I was missing more mathematical definitions and formalities, but then, when I got them, I had a hard time following them, as I believe the notation was quite overloaded. For instance, there are several compound subindices, and several ' and '' graphs and queries. I think there might be better ways to express these concepts.

The figures are also quite small, and it is hard to gauge what is actually being told by them.

The experimental part and discussion are quite good and provide interesting insights into the problem.


------------------------------------------------------