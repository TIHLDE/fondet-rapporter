TYPST ?= typst

# Everything that can change the output. Compiling takes milliseconds, so the
# rules stay simple instead of tracking per-report dependencies.
SOURCES := $(wildcard lib/*.typ) $(wildcard reports/*/*/*.typ) $(wildcard templates/*/*/*.typ)

# The Q2 2026 draft needs the cetz package and only builds with network access,
# so it stays out of the default build.
REPORT_MAINS := $(filter-out reports/2026/q2-draft/main.typ, $(wildcard reports/*/*/main.typ))
TEMPLATE_MAINS := $(wildcard templates/*/*/main.typ)

# The PDF sits next to the source it was built from.
PDFS := $(REPORT_MAINS:%/main.typ=%/report.pdf) $(TEMPLATE_MAINS:%/main.typ=%/preview.pdf)

KIND ?= quarterly
TEMPLATE ?= 2026

.PHONY: all clean watch new
all: $(PDFS)

%/report.pdf: %/main.typ $(SOURCES)
	$(TYPST) compile --root . $< $@

%/preview.pdf: %/main.typ $(SOURCES)
	$(TYPST) compile --root . $< $@

# make watch DIR=reports/2026/q1
watch:
	@test -n "$(DIR)" || { echo "Usage: make watch DIR=reports/2026/q1"; exit 1; }
	$(TYPST) watch --root . $(DIR)/main.typ $(DIR)/report.pdf

# make new YEAR=2026 PERIOD=q1
# make new YEAR=2026 PERIOD=annual KIND=annual
# KIND is a folder under templates/<TEMPLATE>: quarterly or annual.
# TEMPLATE=2025 picks the older generation.
new:
	@test -n "$(YEAR)" -a -n "$(PERIOD)" || { echo "Usage: make new YEAR=2026 PERIOD=q1 [KIND=annual] [TEMPLATE=2025]"; exit 1; }
	@test -d templates/$(TEMPLATE)/$(KIND) || { echo "No template templates/$(TEMPLATE)/$(KIND)"; exit 1; }
	@test ! -d reports/$(YEAR)/$(PERIOD) || { echo "reports/$(YEAR)/$(PERIOD) already exists"; exit 1; }
	@mkdir -p reports/$(YEAR)
	cp -r templates/$(TEMPLATE)/$(KIND) reports/$(YEAR)/$(PERIOD)
	@rm -f reports/$(YEAR)/$(PERIOD)/preview.pdf
	@echo "Created reports/$(YEAR)/$(PERIOD). Fill in the TODOs, then: make reports/$(YEAR)/$(PERIOD)/report.pdf"

# The PDFs are tracked, so this only removes files git can restore.
clean:
	rm -f $(PDFS)

# Build everything and refuse to pass while a report still says TODO. Drafts are
# allowed to.
.PHONY: check bundle
check: all
	@if grep -rn "TODO" reports --include='*.typ' | grep -v '/q2-draft/'; then \
		echo "A report still has TODO in it"; exit 1; \
	fi
	@echo "check ok"

# make bundle DIR=reports/2026/q1
# Copies one report and everything it imports into out/bundle-<name>/, so it can
# be uploaded to a Typst project without Git Sync.
bundle:
	@test -n "$(DIR)" || { echo "Usage: make bundle DIR=reports/2026/q1"; exit 1; }
	@test -d "$(DIR)" || { echo "No such folder: $(DIR)"; exit 1; }
	rm -rf out/bundle-$(notdir $(DIR))
	@mkdir -p out/bundle-$(notdir $(DIR))
	cp -r lib assets out/bundle-$(notdir $(DIR))/
	cp $(DIR)/*.typ out/bundle-$(notdir $(DIR))/
	@echo "Bundle in out/bundle-$(notdir $(DIR)). Upload its files to a Typst project, main.typ at the top."
