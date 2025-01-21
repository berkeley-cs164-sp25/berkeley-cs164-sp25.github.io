jekyll = bundle exec jekyll

.PHONY: install build serve 

install:
	bundle install --path vendor/bundle

build: install
	$(jekyll) build

serve: install
	$(jekyll) serve --livereload