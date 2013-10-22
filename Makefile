targets=thymio-programming-exercises-en.zip
deps=$(wildcard */*/*.tex) $(wildcard images/*.png) $(wildcard images/*.jpg) $(wildcard programs/*.aesl) authors.txt

thymio-programming-exercises-%.pdf: docs/%/aseba.tex $(deps) Makefile build
	cd build/$* && TEXINPUTS=../../docs/$*:${TEXINPUTS} pdflatex ../../$<
	cd build/$* && TEXINPUTS=../../docs/$*:${TEXINPUTS} pdflatex ../../$<
	mv build/$*/aseba.pdf $@

thymio-programming-exercises-%.zip: thymio-programming-exercises-%.pdf
	rm -f thymio-programming-exercises-$*.zip
	zip $@ $^ programs/*.aesl authors.txt
	cd readmes/$* && zip ../../$@ *

all:	$(targets)

clean: buildclean

build:
	mkdir -p build/en

buildclean:
	rm -rf build *~ */*~ 

distclean: clean
	rm -f *.pdf $(targets)

.PHONY: clean buildclean distclean all dist
