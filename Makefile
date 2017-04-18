all_html = $(patsubst %.Rmd,%.html,$(wildcard *.Rmd))

all:
	@echo $(all_html)

%.html: %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_file = "$@")'
