all: pdf

build:
	pdflatex -output-directory=bin/ main
	biber --output-directory=bin/ --input-directory=bin/ main
	pdflatex -output-directory=bin/ main
	pdflatex -output-directory=bin/ main

view: build
	chrome bin/main.pdf

clean:
	rm main.aux main.bbl main.blg main.log main.toc main.bcf main.run.xml main.pdf main.out
