site:
	git checkout mkdocs
	mkdocs build
	cp -R site/* .
	rm -rf site
	git add *
	git stash
	git checkout master
	git rm -rf *
	git stash pop
	echo Ready to commit and push

clean:
	git clean -xfd #Careful!!
