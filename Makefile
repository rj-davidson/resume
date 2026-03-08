TEX = /Library/TeX/texbin/pdflatex
SRC = resume.tex
OUT = resume.pdf

.PHONY: all clean

all: $(OUT)

$(OUT): $(SRC) personal.tex
	$(TEX) $(SRC)
	$(TEX) $(SRC)

clean:
	rm -f *.aux *.log *.out *.synctex.gz $(OUT)
