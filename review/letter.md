# Response to Reviewers

Dear Dr. Maleshkova, dear Reviewers,

Thank you for handling our submission and for the constructive and detailed feedback.
We are grateful for the time and care the reviewers invested; their comments have helped us improve the clarity, precision, and presentation of the manuscript considerably.

We have carefully addressed all the comments.
Below we provide a point-by-point response, organized by reviewer. 
For each comment we describe our **Response** (our position or reasoning, where relevant) and the corresponding **Change** to the manuscript.

To make the revisions easy to locate, all changes are colour-coded in the revised manuscript:

- **Reviewer 1** changes are shown in **blue**;
- **Reviewer 2** changes are shown in **orange**;
- changes addressing **both reviewers** are shown in **purple**.

We hope that the revised version meets the expectations of the reviewers and the journal.

With kind regards,

Bryan-Elliott Tam, Joachim Van Herwegen, Pieter Colpaert, Ruben Verborgh, and Ruben Taelman

---

## Reviewer 1

### Clarify the conceptual distinction between pruning (this work) and discovery/reachability-based link selection.

**Response:** We consider pruning to be more akin to logical negation, whereas discovery is more akin to assertion.
Pruning is about definitively stating that a part of the search domain should not be explored, whereas discovery is about building the search domain and stating that a part of it may contain relevant information.

**Change:** We added the clarification in the introduction, the related work section, and the Link Pruning Using Shape Indexes section.

### Add a summary table listing each hypothesis and whether it is supported or rejected.

**Change:** We added a table summarizing the hypotheses in the new "Summary of Findings" section.

### Introduce Figure 3 earlier.

**Change:** Figure 3 is now introduced in the paragraph just below the Approach section heading.

### Fix the flow of the first paragraph (centralised → decentralised → Linked Data/KGs feels disjointed).

**Change:** We improved the flow of the first paragraph of the introduction to make a smoother transition between the centralized setting, the decentralized setting, and Linked Data.

### Define DESPs when first introduced.

**Change:** We defined DESP with the following sentence: "Such environments are decentralized networks in which data providers expose implicit or explicit data structures, referred to as structural properties, that query engines can leverage during traversal."

### Provide early definitions/examples for dereferencing, structural properties, and follow-your-nose.

**Change:** We added a definition of dereferencing in the Preliminaries (Reachability Criteria subsection), and we explained the follow-your-nose principle where it is introduced in the Related Work.

### Remove or clarify the "pessimistic solution" sentence.

**Change:** We clarified our stance with the following sentence: "The work on the topic of DESPs for LTQP [62, 10] suggests that various optimizations are feasible for LTQP in such environments, in contrast to Hartig and Özsu [36], who concluded that the large search space of LTQP offers limited opportunities for optimization."

### Group the seven contributions/hypotheses into broader themes or give context for their origin (currently too dense).

**Change:** Following Reviewer 2's suggestion, we grouped the contributions into three themes: Methods, Software Components, and Evaluations.
We divided our hypotheses into themes — Effectiveness (whether pruning improves performance for the targeted queries without harming the others), Cost (whether the pruning mechanism is itself inexpensive), Robustness (how the amount of shape-index information across the network affects performance), and Explainability (what relationship explains the observed gains).

### Define briefly the LDF interface and Federation.

**Change:** We added short definitions in the related work section.

### In the Source Selection subsection, provide a concise definition of source selection and an example of VoID descriptions.

**Change:** We added a definition of source selection at the start of the subsection and a short VoID description, illustrated as a new figure, describing the posts dataset of the running example.

### The motivation for adopting the shape index specification is not entirely clear; the transition from shape trees being "not widely adopted" to selecting shape indexes would benefit from additional explanation.

**Response:** We distinguished a conceptual reason from a practical one. Conceptually, shape trees target validation and organization rather than the query-time resolution of the relationship between a resource IRI and its shape, and their virtual hierarchy makes this relationship difficult for a query engine to capture efficiently. Practically, at the time of the study the specification was not widely adopted and its documentation and tooling were not sufficiently mature or stable (for instance the website was often offline the primer was not in sync with the specification).
We also clarified that our findings are not tied to shape indexes: any structure providing a mapping between shapes and sets of IRIs — including a more mature shape trees — could serve as the underlying summary.

**Change:** We reworked the relevant paragraph of the Related Work section (RDF Data Shapes subsection).

### Clarify the definition of completeness in LTQP — is traversal complete if it goes through all links in the predefined link set?

**Change:** We added the following definition: "A traversal is complete when it dereferences every link in this set, so that the query is answered completely over the subgraph those links induce; completeness in LTQP is therefore relative to the set of reachable links rather than to the entire Web, whose search space is too large to traverse exhaustively."

### Some functions are defined only by input/output or domain/range; stating both would improve precision.

**Change:** We added the domain and range of the reachability criterion function in the Preliminaries.

### The definition of a triple pattern as "a set of possible variables" is unclear; it could be explained more explicitly.

**Change:** We clarified that a triple pattern is a triple in which any of the three positions may additionally be a variable.

### Clarify the "Decentralized Knowledge Graphs and Subweb" subsection: Is G a single KG or a set of KGs? What is the precise distinction between a resource and an IRI? Can a resource map to multiple KGs?

**Change:** We clarified that G is a single KG (the union of all sub-KGs), that a resource is a document materializing exactly one KG (so it cannot map to multiple KGs), and that an IRI is an identifier pointing to a resource, distinct from the resource itself.

### Clarify "Data-model Selectiveness": what it means for D to be query relevant for Q; how the notation (P^s(Q), DM^s) relates to subwebs; the rationale behind the 20% threshold; does one data-model object correspond to one data type?

**Change:** We defined that a data-model object D is query relevant for Q when at least one conjunct of Q can be answered by a KG derived from D; clarified that the superscript s restricts DM and P to a single subweb; noted in a footnote that the 20% threshold is arbitrary, as there is no objective criterion for choosing such a value; and stated that a data-model object corresponds to a single data type (e.g., a user or a post).

### Add a brief discussion in the conclusion about construction/maintenance of shape indexes (currently stated as "beyond the scope").

**Change:** We added a brief discussion in the conclusion noting that, although construction and maintenance were beyond this work's scope, shape indexes are lightweight and low-cost to produce and maintain, with descriptive ones generatable automatically.

### Add examples for each definition or conceptual step in the Approach section.

**Change:** We added worked examples, all grounded in the running example of Figure 2, to the result-based completeness, link pruning, and query-shape subsumption steps.

### Improve Figure 2 (dense and unclear): clearer annotation, additional explanation, and make clear what each subweb contains.

**Change:** We added a legend to the figure mapping each icon to the shape it denotes, and expanded the caption to explain that the icon embedded in a node indicates the shape (and thus the data type) the resource conforms to, and to state what each subweb contains (Subweb 1: users and likes; Subweb 2: users, comments, and images; Subweb 3: posts, users, and likes). We also clarified that documents outside the subwebs are open-web resources not bound by any shape, and that the coloured documents mark those relevant to the query (red for posts, green for comments).

### Improve the readability of the violin plots with overlapping colors.

**Change:** We adjusted the transparency of the overlapping violin plots so that the stacked distributions can be told apart.

### Use consistent punctuation for the (i)–(vii) enumeration.

**Change:** We harmonized the punctuation across the enumerated contributions and hypotheses.

### Clarify the access functions for triples, including how literals are handled.

**Change:** We specified the behaviour of the subject and object access functions, stating that for a triple or triple pattern (s, p, o), S((s,p,o)) = s and O((s,p,o)) = o when o is not a literal, while O returns nothing when o is a literal.

## Reviewer 2

### Define IRI before first use (lines 16–19).

**Change:** We now define the full acronym and added a footnote describing what an IRI and a URI are.

### Fix the grammar issue at lines 268–269.

**Change:** The issue is fixed.

### For queries that yield no benefit (or even slow down, e.g. the S4 template), define what the D6, D7, and S4 query templates are so readers can understand why.

**Change:** We added a listing with the query templates for S4, D6, and D7, and a table describing each query template and whether it is data-model selective.

### Improvements to Contributions: provide a comprehensive contribution that goes beyond listing components. It should have three parts: overall architecture and method contributions; detailed descriptions of each component; and comprehensive evaluation results.

**Change:** In the introduction we divided our contributions into three parts: Methods, Software Components, and Evaluations.

### Change of Figure 1: make it more explainable — show a query coming in, how the network responds, and contrast the baseline vs. the expected/optimised behaviour.

**Change:** We redesigned Figure 1 as a two-panel before/after. The same query enters the network in both panels: (a) a baseline link-traversal engine dereferences many sources while only a few are query-relevant, wasting requests; (b) our shape-index pruning dereferences only the entry point and the query-relevant sources, leaving provably irrelevant ones not dereferenced. A legend defines the three node states (dereferenced, query-relevant, not dereferenced).

### Change of Figure 2: better explain what a node represents.

**Change:** We clarified in the caption that each node is an RDF resource — a document identified by an IRI — and that the edges are the IRIs linking one resource to another, with the embedded icon indicating the shape the resource conforms to. A legend added to the figure defines all icons.
