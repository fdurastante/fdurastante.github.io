publish: build
	ghp-import -n -p -f _site
build:
	bundle exec jekyll build
serve:
	bundle exec jekyll serve
