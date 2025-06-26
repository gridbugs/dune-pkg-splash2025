NAME=dunepkg2025

all: $(NAME).pdf

%.pdf: %.tex
	pdflatex $<

clean:
	rm -f *.pdf *.aux *.log

.PHONY: clean
