# constants for defining the author, title, etc.
FILENAME = thesis
TITLE = Developing a Rover-Following Application for APPSTACLE
AUTHOR = Daniel Paredes 
ADVISOR = Robert Höttger
UNIVERSITY = Fachhochschule Dortmund 
RESEARCH_GROUP = Institut für die Digitalisierung von Arbeits- und Lebens­welten (IDiAL)  
THESIS_TYPE = Research Project
DOCUMENT_LANG = english
SOURCE_FILES = abstract.md chapter1.md chapter2.md chapter3.md chapter4.md conclusions.md bibliography.md
APPENDIX_FILE = appendix.md

# variables for the PDF/HTML compiler
ARGS = \
	$(SOURCE_FILES) \
	--from=markdown \
	--variable=lang:"$(DOCUMENT_LANG)" \
	--variable=title:"$(TITLE)" \
	--variable=author:"$(AUTHOR)" \
	--variable=advisor:"$(ADVISOR)" \
	--variable=university:"$(UNIVERSITY)" \
	--variable=research-group:"$(RESEARCH_GROUP)" \
	--variable=thesis-type:"$(THESIS_TYPE)" \
	--variable=lof \
	--variable=lot \
	--standalone \
	--table-of-contents \
	--bibliography=bibliography.bib \

LATEX_ARGS = \
	$(ARGS) \
	--template=template.latex \
	--variable=documentclass:report \
	--variable=fontsize:11pt \
	--variable=papersize:a4paper \
	--variable=sides:oneside \
	--variable=numbersections \
	--natbib \
	--variable=biblio-files:"bibliography" \
	--variable=biblio-style:"plain" \

HTML_ARGS = \
	--mathjax \
	--filter pandoc-citeproc \

# rules

## rules for compiling the document

pdf: latex build-latex


# latex: compile-guideline-tex compile-appendix-tex
latex: compile-appendix-tex
	pandoc \
		$(LATEX_ARGS) \
		--to=latex \
		--output=$(FILENAME).tex \

html: compile-appendix-html
	pandoc \
		$(FILES) \
		$(ARGS) \
		$(HTML_ARGS) \
		--include-after-body=$(APPENDIX_FILE).html \
		--to=html \
		--output=$(FILENAME).html \
		--css=buttondown.css \

epub: compile-appendix-html
	pandoc \
		$(FILES) \
		$(ARGS) \
		--include-after-body=$(APPENDIX_FILE).html \
		--output=$(FILENAME).epub \
		--css=buttondown.css \
		--epub-metadata=metadata.xml \

build-latex:
	pdflatex $(FILENAME).tex
	bibtex $(FILENAME).aux
	pdflatex $(FILENAME).tex
	pdflatex $(FILENAME).tex

## rules for compiling the appendix

compile-appendix-tex:
	pandoc \
		$(APPENDIX_FILE) \
		--from=markdown \
		--to=latex \
		--variable=documentclass:report \
		--output=$(APPENDIX_FILE).tex \

compile-appendix-html:
	pandoc \
		$(APPENDIX_FILE) \
		$(HTML_ARGS) \
		--from=markdown \
		--to=html \
		--output=$(APPENDIX_FILE).html \

## misc rules

open:
	gnome-open \
		$(FILENAME).pdf \

clean:
	rm -f *.tex *.aux *.dvi *.log *.pdf *.html *.mobi *.out *.epub
