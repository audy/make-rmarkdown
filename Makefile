SOURCES=$(shell find notebooks -name *.Rmd)
TARGETS=$(SOURCES:%.Rmd=%.html)

%.html: %.Rmd
	@echo "$< -> $@"
	@Rscript -e "rmarkdown::render('$<')"

default: $(TARGETS)

clean:
	rm -rf $(TARGETS)
