.PHONY : build clean

build : build/gptoolsStan

build/gptoolsStan :
# Update documentation.
	Rscript -e 'devtools::document()'
# Clean up an potential previous builds and create a clean directory.
	rm -rf build && mkdir -p build
# Build, check, and extract the package.
	cd build \
		&& NOT_CRAN=true R CMD build .. \
		&& R CMD check --as-cran *.tar.gz \
		&& tar -xf *.tar.gz

clean :
	rm -rf build
