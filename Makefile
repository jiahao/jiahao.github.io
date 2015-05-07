all:
	@#Requires pandoc and pandoc-citeproc installed, e.g. with cabal
	PATH=$(PATH):~/.cabal/bin pandoc --reference-links -s -S \
	     --biblio julia.bib --biblio mynppubs.bib --biblio mypreps.bib --biblio mypubs.bib --biblio=mytheses.bib \
	     -o pubs.html pubs_stub.md

