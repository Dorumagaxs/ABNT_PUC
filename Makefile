all: pdf

pdf: 
	pdflatex --output-directory=bin main

bbl: log
	bibtex ./bin/main
	pdflatex --output-directory=bin main

log: bin
	pdflatex --output-directory=bin main

bin:
	[ -d ./bin ] || mkdir ./bin

clean:
	rm ./bin/*
