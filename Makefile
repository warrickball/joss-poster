joss-poster.pdf: joss-poster.tex JOSS-flowchart-updated.pdf by.png joss-logo-transparent-crop.png joss-papers-per-year.png joss-qr.png
	pdflatex \\nonstopmode\\input joss-poster.tex

JOSS-flowchart-updated.pdf:
	rm -f $@
	wget https://ndownloader.figshare.com/files/26450954 -O $@

by.png:
	rm -f $@
	wget http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png

clean:
	rm joss-poster.{aux,log,out,pdf} by.png JOSS-flowchart-updated.pdf
