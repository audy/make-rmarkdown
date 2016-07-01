SOURCES=$(shell find notebooks -name *.Rmd)
TARGETS=$(SOURCES:%.Rmd=%.pdf)

%.html: %.Rmd
	@echo "$< -> $@"
	@rscript -e "rmarkdown::render('$<')"

%.pdf: %.Rmd
	@echo "$< -> $@"
	@rscript -e "rmarkdown::render('$<')"

default: $(TARGETS)

clean:
	rm -rf $(TARGETS)
