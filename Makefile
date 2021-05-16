#PHONY

.PHONY: clean


reports/CV.pdf: reports/CV.tex
	cd reports && pdflatex CV.tex
	cd reports && bibtex CV
	cd reports && pdflatex CV.tex
	cd reports && pdflatex CV.tex

clean:
	rm -f reports/*.pdf
	rm -f reports/*.aux
	rm -f reports/*.fdb_latexmk
	rm -f reports/*.log
	rm -f reports/*.fls
	rm -f reports/*.out
	rm -f reports/*.synctex.gz
	rm -f reports/*.bbl
	rm -f reports/*.blg
