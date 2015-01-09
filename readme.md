# make + rmarkdown

![travis-ci](https://travis-ci.org/audy/make-rmarkdown.svg)

by: Austin G. Davis-Richardson <harekrishna@gmail.com>

Example of using knitR + Make + RMarkdown for minimally replicable scientific
computing. Use this as a skeleton for new R projects.

## Instructions

1. Data goes in `data/` (I usually use symlinks or git modules and track this in
   a separate repository).
2. Rmarkdown files go in `notebooks`. I've been trying to treat them like a lab
   notebook and write one per day.
3. Type `make` (this renders all Rmarkdown files to HTML).

You should see something like:

```
$ make
notebooks/1-hello-world.Rmd -> notebooks/1-hello-world.html
echo "library(knitr); knit(\"notebooks/1-hello-world.Rmd\", \"notebooks/1-hello-world.html\")" | R --slave --vanilla --no-save


processing file: notebooks/1-hello-world.Rmd
  |.................................................................| 100%
  ordinary text without R code


output file: notebooks/1-hello-world.html

[1] "notebooks/1-hello-world.html"
```

## TODO

- Add Packrat for dependency management/vendoring.
