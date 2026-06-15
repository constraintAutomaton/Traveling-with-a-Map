# Reviewer 1

## General
- [x] Clarify the conceptual distinction between **pruning** (this work) and **discovery/reachability-based link selection** — reviewer notes that selecting a predefined link set via reachability can also be read as a form of pruning, so the novelty needs sharpening.
- [ ] Add early definitions / examples (ideally in Preliminaries) for:
  - [ ] dereferencing
  - [ ] structural properties
  - [ ] DESPs
  - [ ] follow-your-nose
  - [ ] VoID descriptions
- [ ] (Optional) Address that only one dataset is available/used in the evaluation.

## Introduction (minor)
- [x] Fix the flow of the first paragraph (centralised → decentralised → Linked Data/KGs feels disjointed).
- [x] Define **DESPs** when first introduced.
- [x] Remove or clarify the "pessimistic solution" sentence.
- [x] Group the seven contributions/hypotheses into broader themes or give context for their origin (currently too dense).
- [X] Use consistent punctuation for the (i)–(vii) enumeration.

## Related Work
- [x] Define / briefly explain:
  - [x] LDF interface
  - [x] Federation
- [x] Clarify the definition of **completeness** in LTQP — is traversal complete if it goes through all links in the predefined link set?
- [ ] Better motivate adopting the **shape index** spec — explain the transition from "shape trees not widely adopted" to "selecting shape indexes."
- [ ] In the **Source Selection** subsection: give a concise definition of source selection and an example of VoID descriptions (since they're used later in comparison).

## Preliminaries
- [ ] State both domain/range **and** input/output for functions defined by only one (precision).
- [ ] Clarify the access functions for triples — how are **literals** handled (e.g., S((s,p,o))=s, O((s,p,o))=o)?
- [ ] Clarify the definition of a triple pattern as "a set of possible variables."
- [ ] Add a running example + small visualisation to help internalise the definitions.
- [ ] Clarify the "Decentralized Knowledge Graphs and Subweb" subsection:
  - [ ] Is *G* a single KG or a set of KGs?
  - [ ] What is the precise distinction between a resource and an IRI?
  - [ ] Can a resource map to multiple KGs?
- [ ] Clarify "Data-model Selectiveness":
  - [ ] What it means for *D* to be "query relevant for *Q*."
  - [ ] How the notation (e.g., *P^s(Q)*, *Dm^s*) relates to subwebs.
  - [ ] Rationale behind the 20% threshold in Eq. 4.
  - [ ] Does one "data-model object" correspond to one data type (e.g., user or post)?

## Approach
- [ ] Improve **Figure 2** (dense, unclear):
  - [ ] Clearer annotation
  - [ ] Additional explanation
  - [ ] Make clear what each subweb contains.
- [x] Introduce **Figure 3** earlier.
- [ ] Add examples for each definition / conceptual step.
- [ ] Add a brief discussion in the **conclusion** about construction/maintenance of shape indexes (currently stated as "beyond the scope").

## Experimental Evaluation
- [ ] Improve readability of **Figures 5 & 6** (overlapping colors).
- [x] Add a summary table listing each hypothesis and whether it is supported or rejected.
- [ ] (Minor) Fix layout on page 10 — the 2×2 lines appear visually misplaced among figures/tables.

# Reviewer 2

## Grammar / Writing
- [x] Define **IRI** before first use (lines 16–19).
- [x] Fix the grammar issue at lines 268–269.

## Figures
- [ ] Redesign **Figure 1** to make the idea legible: show a query coming in, how the network responds, and contrast the *original/baseline* behaviour vs. the *expected/optimised* behaviour.
- [ ] Improve **Figure 2**: explain clearly what a **node** represents in this context. *(Overlaps with Reviewer 1's Figure 2 request)*

## Results
- [X] For queries that yield no benefit (or even slow down, e.g. **S4** template), define what the **D6, D7, and S4** query templates are so readers can understand why.

## Contributions
- [X] Re-tier the 7-item contributions list (introduction.tex:56–65) into three levels instead of one flat enumeration at mixed granularity:
  - [X] **Architecture / method** — headline contribution: shape-based pruning + subweb/DKG model as one coherent method (folds in current items i, iii, iv).
  - [X] **Components** — the pieces that realize it: shape index web spec, query-shape subsumption algorithm, Comunica implementation (items ii, v, vi).
  - [X] **Evaluation results** — state *what the evaluation showed*, not just that one was done (item vii).
