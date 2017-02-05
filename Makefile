##################################
## Makefile for RMarkdown sites ##
##################################

.PHONY : foo

all: SDM4_Site/_site/index.html

SDM4_Site/_site/index.html: SDM4_Site/_site.yml $(wildcard SDM4_Site/*.Rmd) $(wildcard SDM4_Site/chapterfiles/*.pdf)
	Rscript -e "rmarkdown::render_site('SDM4_Site')"

## produce pdf, html, docx from .Rmd files
*.pdf: ${@:.pdf=.Rmd}
*.html: ${@:.html=.Rmd}
*.docx: ${@:.docx=.Rmd}

include r-rules.mk