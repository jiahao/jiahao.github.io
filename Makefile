site:
	git checkout mkdocs
	mkdocs build
	git checkout master
	cp -R site/* .
	rm -rf site
	echo Ready to commit and push

clean:
	git reset --hard
	git checkout mkdocs
	git clean -xfd #Careful!!
