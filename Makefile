all: 
	Rscript -e 'rmarkdown::render(input = \"ap_dc.Rmd\", output_file = \"index.html\")'
