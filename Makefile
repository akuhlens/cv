DOCUMENTS=cv.pdf

.PHONY: all clean distclean publish

all: $(DOCUMENTS)

%.pdf : %.tex
	latexmk -pdf $*.tex

clean:
	latexmk -c

distclean:
	latexmk -C
