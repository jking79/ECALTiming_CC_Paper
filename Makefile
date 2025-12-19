.PHONY: AnalysisNote.pdf all clean

all: AnalysisNote.pdf

# -pdf tells latexmk to generate PDF directly (instead of DVI).
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.

# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.

AnalysisNote.pdf: AnalysisNote.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make AnalysisNote.tex

clean:
	latexmk -CA
	rm -f *.aux
	rm -f *.gz
	rm -f *.log
	rm -f *-eps-converted-to.pdf

