SOURCES=$(shell find notebooks -name *.Rmd)
TARGETS=$(SOURCES:%.Rmd=%.html)

%.html: %.Rmd
	@echo "$< -> $@"
	echo "library(knitr); knitr::knit2html(\"$<\", output=\"$@\")" | R --slave --vanilla --no-save

default: $(TARGETS)

clean:
	rm -rf $(TARGETS)
