.SUFFIXES: .pdf .png

.PRECIOUS: build/%.pdf %.png

%.png: build/%.pdf
	convert -density 300 -colorspace GRAY "$<" -background white -alpha remove "$@"

build/%.pdf: %.tex FORCE
	latexmk "$<"

.PHONY: all clean

all: questions

questions: name-resolution-1-question.png name-resolution-2-question.png

answers: scopegraph-construction-1-answer.png scopegraph-construction-2-answer.png

clean:
	latexmk -C

FORCE:
