build:
	bundle exec jekyll build

trace:
	bundle exec jekyll build --trace

serve:
	bundle exec jekyll serve

serve-drafts:
	bundle exec jekyll serve --drafts

serve-inc:
	bundle exec jekyll serve --incremental

serve-inc-drafts:
	bundle exec jekyll serve --drafts --incremental

bib: bib-yaml bib-yaml-compact

bib-yaml:
	wget -O _data/publications/bib.yml https://researchr.org/downloadyaml/bibliography/compiler-construction-2020/false

bib-yaml-compact:
	wget -O _data/publications/bib-compact.yml https://researchr.org/downloadyaml/bibliography/compiler-construction-2020/true
