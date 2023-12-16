.PHONY : build clean

build :
	Rscript -e 'devtools::document()'
	rm -f *.tar.gz
	NOT_CRAN=true R CMD build .
	R CMD check --as-cran *.tar.gz

clean :
	rm -rf *.Rcheck *.tar.gz
