TYPST ?= typst
REPORTS := $(wildcard reports/*/main.typ)
PDFS := $(REPORTS:reports/%/main.typ=out/%.pdf)
LIB := $(wildcard lib/*.typ)

.PHONY: all clean watch new
all: $(PDFS)

out/%.pdf: reports/%/main.typ reports/%/funds.typ $(LIB)
	@mkdir -p out
	$(TYPST) compile --root . $< $@

# make watch PERIOD=2026-q1
watch:
	$(TYPST) watch --root . reports/$(PERIOD)/main.typ out/$(PERIOD).pdf

# make new PERIOD=2026-q1            (quarterly, the default)
# make new PERIOD=2026 KIND=annual   (annual)
KIND ?= quarterly
new:
	@test -n "$(PERIOD)" || { echo "Usage: make new PERIOD=2026-q1 [KIND=annual]"; exit 1; }
	@test ! -d reports/$(PERIOD) || { echo "reports/$(PERIOD) already exists"; exit 1; }
	cp -r templates/$(KIND) reports/$(PERIOD)
	@echo "Created reports/$(PERIOD). Fill in the TODOs, then: make out/$(PERIOD).pdf"

clean:
	rm -rf out
