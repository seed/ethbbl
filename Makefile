## settings

LATEX = latex
PDFLATEX = pdflatex
BIBTEX = bibtex


DEFAULT_GARBAGE = *.aux *.log *.toc *.idx *.rai *.rao *.bbl *.ind *.ilg *.blg *.out
DEFAULT_OUTPUT = *.pdf 
GARBAGE =
OUTPUT =


# special targets

default: pdf

## .DELETE_ON_ERROR:

## actions

nothing:

clean:
	@rm -f $(DEFAULT_GARBAGE) $(GARBAGE)



## dependencies


NAME = bcode_verif
FILES = bcode_verif.tex



pdf: $(NAME).pdf

$(NAME).pdf: $(FILES) 
	$(PDFLATEX) $(NAME)
	$(BIBTEX) $(NAME)
	$(PDFLATEX) $(NAME)
	$(PDFLATEX) $(NAME)
