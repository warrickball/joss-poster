poster.pdf: poster.tex JOSS-flowchart-updated.pdf by.png joss-logo-transparent-crop.png joss-papers-per-year.png joss-qr.png
	pdflatex \\nonstopmode\\input poster.tex

JOSS-flowchart-updated.pdf:
	rm -f $@
	wget https://figshare.com/ndownloader/files/26450954 -O $@

by.png:
	rm -f $@
	wget http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png

clean:
	rm poster.{aux,log,out,pdf} by.png JOSS-flowchart-updated.pdf
