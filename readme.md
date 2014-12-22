# knitr-make

by: Austin G. Davis-Richardson <harekrishna@gmail.com>

Example of using knitR + Make + RMarkdown for minimally replicable scientific
computing. Use this as a skeleton for new R projects.

## Instructions

1. Data goes in `data/` (I usually use symlinks or git modules and track this in
   a separate repository).
2. Rmarkdown files go in `notebooks`. I've been trying to treat them like a lab
   notebook and write one per day.
3. Type `make` (this renders all Rmarkdown files to HTML).

## TODO

- Add Packrat for dependency management/vendoring.
- Add support for rendering to PDF, markdown, etc...
