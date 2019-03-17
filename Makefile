all: pdf

build:
	pdflatex main
	biber main
	pdflatex main
	pdflatex main

view: build
	chrome main.pdf

clean:
	rm main.aux main.bbl main.blg main.log main.toc main.bcf main.run.xml main.pdf main.out
