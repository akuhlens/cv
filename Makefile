DOCUMENTS=cv.pdf

.PHONY: all clean distclean publish

all: $(DOCUMENTS)

%.pdf : %.tex
	latexmk -pdf $*.tex

publish: $(DOCUMENTS)
	cp $(DOCUMENTS) publish
	(cd publish;\
	 git commit -am "publishing";\
	 git push)

clean:
	latexmk -c

distclean:
	latexmk -C
