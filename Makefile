SOURCES=$(shell find notebooks -name *.Rmd)
TARGETS=$(SOURCES:%.Rmd=%.html)

%.pdf: %.Rmd
	@echo "$< -> $@"

%.html: %.Rmd
	@echo "$< -> $@"
	echo "library(knitr); knit(\"$<\", \"$@\")" | R --slave --vanilla --no-save

default: $(TARGETS)

clean:
	rm -rf $(TARGETS)
