publish: build
	ghp-import -n -p -f _site
	ghp-import -n -p -f -r codeberg -b pages _site
build:
	bundle exec jekyll build
serve:
	bundle exec jekyll serve
