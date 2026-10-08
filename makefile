SOURCE = main.tex references.bib section/*.tex makefile analysis/artefact/**/* code/* figure/* time-complexity/**/*

.PHONY: clean watch submissions swj-submission arxiv-submission

# ===========================================================================
# Figures
# SVG figures are rendered by inkscape into build/figures/ and included from
# there (\includeinkscape in main.tex), so LaTeX needs no -shell-escape and
# no inkscape, and every build (repo, swj, arxiv) uses the same renders.
# ===========================================================================

FIG_DIR = build/figures

# SVG figures with LaTeX text: <name>-img.pdf + text overlay <name>.tex.
# The graphic must not be <name>.pdf: arXiv deletes X.pdf next to X.tex,
# taking it for the compiled output of X.tex.
SVG_FIGS = \
	figure/network.svg \
	analysis/artefact/continuous_performance/dief_01.svg \
	analysis/artefact/continuous_performance/dief_1.svg \
	analysis/artefact/continuous_performance/dief_lr.svg \
	analysis/artefact/continuous_performance/first_result.svg \
	analysis/artefact/continuous_performance/termination_time.svg \
	analysis/artefact/continuous_performance/waiting_time.svg \
	analysis/artefact/variation_approach/d7_violon_plots.svg \
	analysis/artefact/variation_approach/s1_violon_plots.svg \
	analysis/artefact/variation_approach/s4_violon_plots.svg
# SVG figures without LaTeX text: <name>.pdf only
RAW_SVG_FIGS = figure/dkg.svg

vpath %.svg $(sort $(dir $(SVG_FIGS) $(RAW_SVG_FIGS)))

SVG_RENDERS = $(foreach f,$(notdir $(basename $(SVG_FIGS))),$(FIG_DIR)/$(f)-img.pdf $(FIG_DIR)/$(f).tex)
RAW_SVG_RENDERS = $(patsubst %,$(FIG_DIR)/%.pdf,$(notdir $(basename $(RAW_SVG_FIGS))))
FIGURES = $(SVG_RENDERS) $(RAW_SVG_RENDERS)

# Figures are cropped to their drawing, not the SVG page (svg package default).
INKSCAPE = inkscape --export-area-drawing

# A pattern rule with two targets is grouped: one inkscape run writes both.
$(FIG_DIR)/%-img.pdf $(FIG_DIR)/%.tex: %.svg
	@mkdir -p $(@D)
	$(INKSCAPE) $< --export-latex --export-filename=$(FIG_DIR)/$*-img.pdf
	mv $(FIG_DIR)/$*-img.pdf_tex $(FIG_DIR)/$*.tex

$(RAW_SVG_RENDERS): $(FIG_DIR)/%.pdf: %.svg
	@mkdir -p $(@D)
	$(INKSCAPE) $< --export-filename=$@

main.pdf: $(SOURCE) $(FIGURES)
	latexmk -pdf main.tex

watch: $(FIGURES)
	latexmk -pdf -pvc main.tex

# ===========================================================================
# Submission bundles
#   make submissions       -> swj.zip + arxiv.zip
#   make swj-submission    -> swj.zip   (journal build, \arxivfalse)
#   make arxiv-submission  -> arxiv.zip (preprint build, \arxivtrue)
# Each bundle is staged under build/<name>/ (files copied out of the
# submodules), compiled there with a bare latexmk to prove it is
# self-contained, then zipped.
# arXiv deletes a derived file whenever its source is also uploaded, so the
# arxiv bundle ships the converted EPS figures as plain PDFs, no .eps.
# ===========================================================================

SWJ_DIR   = build/swj
ARXIV_DIR = build/arxiv

COMMON_FILES = \
	main.tex acronyms.tex reviewing.tex code_listing.tex sagej.cls \
	references.bib makefile \
	section/abstract.tex section/introduction.tex section/related_work.tex \
	section/preliminaries.tex section/method.tex section/experiment.tex \
	section/results.tex section/conclusion.tex section/annexe.tex \
	time-complexity/algorithm/subsums_q_star.tex \
	time-complexity/algorithm/subsums_Q.tex \
	code/gps.rq code/interactive-discover-6.rq code/interactive-discover-7.rq \
	code/interactive-short-4.rq code/shape_index.nq code/void.ttl \
	analysis/artefact/continuous_performance/dief_table_continuous_performance.tex \
	analysis/artefact/continuous_performance/table_continuous_performance.tex \
	analysis/artefact/query_containment_execution_time/fully_bounded/table_query_shape_containment_exec.tex \
	analysis/artefact/ratio_useful_resources/table_ratio_useful_resources_summary.tex \
	analysis/artefact/statistical_significance/comparaisonStateOfTheArt.tex \
	$(FIGURES)

# EPS figures, given as extensionless base paths.
EPS_FIGS = \
	analysis/artefact/http_req_exec_time_relation/http_req_exec_time_cor_better \
	analysis/artefact/http_req_exec_time_relation/http_req_exec_time_cor_worse \
	analysis/artefact/variation_approach/reduction_query_execution_time \
	analysis/artefact/variation_approach/reduction_query_execution_time_raw \
	analysis/artefact/variation_shape_index_all/plot

# Produced by the main build.
DERIVED = main.bbl

SWJ_FILES = $(COMMON_FILES) $(DERIVED) \
	$(EPS_FIGS:=.eps) $(EPS_FIGS:=-eps-converted-to.pdf)
ARXIV_FILES = $(COMMON_FILES) $(DERIVED) $(EPS_FIGS:=.pdf)

submissions: swj-submission arxiv-submission
swj-submission: swj.zip
arxiv-submission: arxiv.zip

# Touched so they are newer than main.pdf and staged copies stay up to date.
$(DERIVED): main.pdf
	touch -c $@

# cp -p keeps mtimes, so epstopdf sees the converted pdfs as newer than their
# .eps and does not reconvert them.
$(SWJ_DIR)/%: %
	@mkdir -p $(@D)
	cp -p $< $@

$(ARXIV_DIR)/%: %
	@mkdir -p $(@D)
	cp -p $< $@

$(ARXIV_DIR)/%.pdf: %-eps-converted-to.pdf
	@mkdir -p $(@D)
	cp -p $< $@

$(SWJ_DIR)/buildmode.tex:
	@mkdir -p $(@D)
	printf '%s\n' '\arxivfalse' > $@

$(ARXIV_DIR)/buildmode.tex:
	@mkdir -p $(@D)
	printf '%s\n' '\arxivtrue' > $@

$(SWJ_DIR)/main.pdf: $(addprefix $(SWJ_DIR)/,$(SWJ_FILES) buildmode.tex)
	cd $(SWJ_DIR) && latexmk -pdf main.tex

$(ARXIV_DIR)/main.pdf: $(addprefix $(ARXIV_DIR)/,$(ARXIV_FILES) buildmode.tex)
	cd $(ARXIV_DIR) && latexmk -pdf main.tex

swj.zip: $(SWJ_DIR)/main.pdf
	rm -f $@
	cd $(SWJ_DIR) && zip -q $(CURDIR)/$@ $(SWJ_FILES) buildmode.tex main.pdf

arxiv.zip: $(ARXIV_DIR)/main.pdf
	rm -f $@
	cd $(ARXIV_DIR) && zip -q $(CURDIR)/$@ $(ARXIV_FILES) buildmode.tex main.pdf

review/letter.docx: review/letter.md
	pandoc review/letter.md -o review/letter.docx

clean:
	rm -f *.log *.bcf-SAVE-ERROR *.xmpi *.xmpdata *.abs *.aux main.pdf *.out *.text.bbl main.*.blg *.blg *.bbl *.fls *.fdb_latexmk main.log *.synctex.gz section/*.aux *.bcf *-blx.bib *.run.xml svg-inkscape/* review/letter.docx
	rm -rf build swj.zip arxiv.zip
