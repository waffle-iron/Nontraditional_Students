all: knitall

knitall: $(patsubst %.Rmd,%.html,$(wildcard *.Rmd))

%.html: %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_file = "$@")'

travis: check_secure.html
