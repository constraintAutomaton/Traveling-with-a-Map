Anonymous submitted on 24/Nov/2025
Suggestion:
Minor Revision
Review Comment:

---
Suggestion:
Minor Revision
Review Comment:

# Summary

This paper investigates the use of pruning to improve the traversal process of LTQP systems. LTQP systems enable navigation across decentralised networks via IRI dereferencing, but existing approaches often suffer from high execution times and data transfers. The authors propose a method to prune the search space using data models that capture structural metadata about subwebs. Their experiments show that this approach can significantly optimise queries across most query classes.

# General comments

## Originality, quality, importance and impact

The core idea of leveraging data shapes to guide traversal based on data-model selectiveness is original and relevant for the LTQP and Semantic Web communities. The approach also has potential real-world applicability. The paper is well motivated, and the experimental evaluation is solid, with a well-structured analysis and publicly available code and data. (Although, as far as I can see, only one dataset is available and used.)

One aspect that could be clarified is the distinction between this method and prior LTQP approaches. The related work section mentions that previous work focuses on guiding link selection during discovery, whereas the authors’ method uses information acquired during traversal to prune links. However, selecting a predefined set of links via reachability criteria can also be seen as a form of pruning. Clarifying this conceptual distinction would help highlight the novelty more explicitly.

## Clarity and readability

The manuscript is technically rich and, at times, difficult to follow, particularly for readers not deeply specialised in LTQP. While many concepts are well formalised, several important notions appear without definition, which makes some sections harder to parse.

Providing early examples (especially in the Preliminaries) would greatly help readability. Some definitions that would benefit from clarification include: dereferencing, structural properties, DESPs, follow-your-nose, and VoID descriptions.

Overall, the issues appear to be related to clarity and presentation rather than technical soundness. The paper could also be made more concise in certain parts.

## Provided data and sustainability

Code and dataset are publicly available (Github), which supports reproducibility.

# Detailed Comments

## Introduction

Main

- The first paragraph could be clarified. As written, the flow goes from challenges of centralised data → limitations of decentralised data → contributions of Linked Data and KGs to decentralised data, which feels somewhat disjointed.
- DESPs should be defined when they are first introduced.

Minor

- The sentence referring to a “pessimistic solution” could be removed or clarified.
- The list of seven contributions and hypotheses is dense. Grouping them into broader themes or providing context for their origin would improve readability.
- For the enumeration (i)–(vii), consider consistent punctuation.

## Related Work

Overall, the related work is extensive and well organised. The LTQP section ends with a helpful summarising sentence differentiating LDF methods and LTQP methods.

- In the LTQP subsection, some notions could be defined or briefly explained (e.g., LDF interface, federation)
- The definition of completeness in LTQP could be clearer. Is the traversal considered complete if it goes through all links in the predefined set of links?
- In the RDF Data Shapes subsection, the motivation for adopting the shape index specification is not entirely clear. The transition from discussing shape trees as not widely adopted to selecting shape indexes would benefit from additional explanation.
- In the Source Selection subsection, providing a concise definition of source selection and an example of VoID descriptions, since they are later used in comparison, would improve clarity.

## Preliminaries

- Some functions are defined only by input/output or domain/range; stating both would improve precision. For example, for the access functions for triples: if *S((s, p, o)) = s* and *O((s, p, o)) = o*, how are literals handled?
- The definition of a triple pattern as “a set of possible variables” is unclear; this could be explained more explicitly.
- A running example, combined with a small visualisation, would help readers internalise the definitions and the sub-sections.
- The subsection on “Decentralized Knowledge Graphs and Subweb” could be clarified. For instance:
- Is *G* a single KG or a set of KGs?
- What is the precise distinction between a resource and an IRI?
- Can a resource map to multiple KGs?
- For “Data-model Selectiveness,” it would help to clarify what it means for *D* to be “query relevant for *Q*,” how the notation (e.g., *P^s(Q)*, *Dm^s*) relates to subwebs, and the rationale behind the 20% threshold in Eq. 4.
- Does one “data-model object” correspond to one data type, such as user or post?

## Approach

- As mentioned above, Figure 2 is dense and could benefit from clearer annotation or additional explanation. It is not immediately apparent what each subweb contains.
- Introducing Figure 3 earlier may improve readability.
- Examples for each definition or conceptual step would improve clarity.
- The statement that “the construction and maintenance of shape indexes are beyond the scope of this work” is reasonable, but a brief discussion in the conclusion about potential approaches or challenges would be valuable.

## Experimental Evaluation

The results are clearly presented, with each paragraph starting with a concise key message.

- Figure 5 & 6 are somewhat difficult to read (colors are overlapping)
- A summary table listing each hypothesis along with whether it is supported or rejected would be helpful.
- (Minor) On page 10, the 2×2 lines appear visually misplaced among figures and tables; adjusting layout would improve presentation.

---

Suggestion:
Minor Revision
Review Comment:

The article presents a novel approach to optimizing Link Traversal Query Processing (LTQP) in decentralized knowledge graphs (DKGs). The primary challenge faced by LTQP is the inefficiency of excessive HTTP requests and the vast search spaces it generates. To address this issue, the authors propose a shape-based pruning strategy that utilizes RDF data shapes and shape indexes. This approach not only optimizes LTQP but also caters specifically to data-model selective queries, which target a limited subset of data-model objects.
2. Strengths:
* Novelty: The introduction of shape-based pruning and the formalization of shape indexes for LTQP constitute a novel contribution to the field. The approach draws upon existing standards such as SHACL and ShEx, extending them to enhance query optimization.
* Comprehensive Evaluation: The authors implement their approach within a query engine and conduct thorough evaluations using the SolidBench benchmark. This evaluation compares the approach favourably against state-of-the-art methods, including type indexes and LDP traversal.
* Detailed Analysis: The paper provides a comprehensive analysis of various metrics, including query execution time, HTTP requests, first-result latency, termination time, waiting time, and diefficiency. Additionally, the paper examines the resilience of the approach under partial shape index coverage.
* Open Science: All relevant code, data, and supplementary materials are made accessible, facilitating reproducibility and transparency.
3. Need to Improve
* Grammar Issues (Lines 16-19): Define “IRI” before using it.
* Grammar Issues (Lines 268-269):
* Change of Figure 1:  make it more explainable how this idea works, like when a query come in, how the network response, illustrate like what is the original one, what is you expect one
* Improvements to Contributions: Provide a comprehensive contribution that goes beyond listing components. It should have three parts: Overall architecture and method contributions. Detailed descriptions of each component. Comprehensive evaluation results.
* Change of Figure 2:  Better explanation what is node in your case.
* Explanations of results: For non-selective queries or queries that do not exploit structural properties, the approach may not yield benefits and can even increase execution time (e.g., S4 template), if you could add what is this D6, D7 and S4 template is, that could help to understand better.
