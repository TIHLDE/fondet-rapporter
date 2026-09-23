TYPST ?= typst

# Sources of every report, so any edit rebuilds. Compiling takes milliseconds.
SOURCES := $(wildcard reports/*/*/*.typ) $(wildcard lib/*.typ)

# The Q2 2026 draft needs the cetz package and only builds with network access,
# so it stays out of the default build.
REPORTS := $(filter-out reports/2026/q2-draft/main.typ, $(wildcard reports/*/*/main.typ))
PDFS := $(REPORTS:reports/%/main.typ=pdf/%.pdf)

KIND ?= quarterly
TEMPLATE ?= 2026

.PHONY: all clean watch new
all: $(PDFS)

pdf/%.pdf: reports/%/main.typ $(SOURCES)
	@mkdir -p $(dir $@)
	$(TYPST) compile --root . $< $@

# make watch YEAR=2026 PERIOD=q1
watch:
	$(TYPST) watch --root . reports/$(YEAR)/$(PERIOD)/main.typ pdf/$(YEAR)/$(PERIOD).pdf

# make new YEAR=2026 PERIOD=q1
# make new YEAR=2026 PERIOD=annual KIND=annual
# TEMPLATE=2025 picks an older template generation
new:
	@test -n "$(YEAR)" -a -n "$(PERIOD)" || { echo "Usage: make new YEAR=2026 PERIOD=q1 [KIND=annual] [TEMPLATE=2025]"; exit 1; }
	@test -d templates/$(TEMPLATE)/$(KIND) || { echo "No template templates/$(TEMPLATE)/$(KIND)"; exit 1; }
	@test ! -d reports/$(YEAR)/$(PERIOD) || { echo "reports/$(YEAR)/$(PERIOD) already exists"; exit 1; }
	@mkdir -p reports/$(YEAR)
	cp -r templates/$(TEMPLATE)/$(KIND) reports/$(YEAR)/$(PERIOD)
	@echo "Created reports/$(YEAR)/$(PERIOD). Fill in the TODOs, then: make pdf/$(YEAR)/$(PERIOD).pdf"

# The PDFs are tracked, so this only removes files git can restore.
clean:
	rm -rf pdf
