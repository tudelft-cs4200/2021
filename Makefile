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

bib: bib-yaml-visser bib-yaml-compact-visser

bib-html: bib-group bib-pie bib-ldwb bib-syntax-definition bib-spoofax bib-scope-graphs bib-visser bib-dynamic-semantics

bib-group:
	wget -O _includes/publications/tud-pl-tu-delft-programming-languages.html  https://researchr.org/downloadhtml/bibliography/tud-pl-tu-delft-programming-languages

bib-pie:
	wget -O _includes/publications/pie.html https://researchr.org/downloadhtml/bibliography/tud-pl-pie

bib-ldwb:
	wget -O _includes/publications/ldwb.html https://researchr.org/downloadhtml/bibliography/tud-pl-ldwb

bib-syntax-definition:
	wget -O _includes/publications/syntax-definition.html https://researchr.org/downloadhtml/bibliography/tud-pl-syntax-definition

bib-spoofax:
	wget -O _includes/publications/spoofax.html	https://researchr.org/downloadhtml/bibliography/tud-pl-spoofax

bib-scope-graphs:
	wget -O _includes/publications/scope-graphs.html https://researchr.org/downloadhtml/bibliography/tud-pl-scope-graphs

bib-visser:
	wget -O _includes/publications/eelcovisser.html https://researchr.org/downloadhtml/profile/eelcovisser

bib-dynamic-semantics:
		wget -O _includes/publications/dynamic-semantics.html https://researchr.org/downloadhtml/bibliography/tud-pl-dynamic-semantics

bib-yaml-visser:
	wget -O _data/publications/visser.yml https://researchr.org/downloadyaml/profile/eelcovisser

bib-yaml-compact-visser:
	wget -O _data/publications/visser-compact.yml https://researchr.org/downloadyaml/profile/eelcovisser/true
