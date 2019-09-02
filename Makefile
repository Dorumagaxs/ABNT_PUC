all: build view

build:
	if [ ! -d bin/ ]; then mkdir bin/; fi
	pdflatex -output-directory=bin/ main
	biber --output-directory=bin/ --input-directory=bin/ main
	pdflatex -output-directory=bin/ main
	pdflatex -output-directory=bin/ main

view:
	zathura bin/main.pdf &

clean:
	rm bin/*
