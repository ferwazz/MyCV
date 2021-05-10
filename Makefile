#PHONY

.PHONY: clean


reports/CV.pdf: reports/CV.tex
	cd reports && pdflatex CV.tex
	cd reports && pdflatex CV.tex

clean:
	rm reports/*.pdf
	rm reports/*.aux
	rm reports/*.fdb_latexmk
	rm reports/*.log
	rm reports/*.fls
	rm reports/*.out
	rm reports/*.synctex.gz
