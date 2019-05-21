build:
	if [ ! -d bin/ ]; then mkdir bin/; fi
	pdflatex -output-directory=bin/ main
	biber --output-directory=bin/ --input-directory=bin/ main
	pdflatex -output-directory=bin/ main
	pdflatex -output-directory=bin/ main

view:
	zathura bin/main.pdf &

clean:
	#rm main.aux main.bbl main.blg main.log main.toc main.bcf main.run.xml main.pdf main.out
	rm bin/*
