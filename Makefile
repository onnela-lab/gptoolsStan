.PHONY : build check man vignettes

vignettes/getting_started.html : vignettes/getting_started.Rmd vignettes/getting_started.stan
	Rscript -e "devtools::build_rmd('$<')"

man :
	Rscript -e 'devtools::document()'

build :
	mkdir -p build
	cd build && R CMD build ..

check : build
	mkdir -p check
	cd check && R CMD check ../build/*.tar.gz
