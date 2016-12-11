EMACS	?= $(shell which emacs)
TARGET	:= index.pdf

pdf: $(TARGET)
clean:; -rm $(TARGET) index.tex index.html *~
%.pdf: %.org; $(EMACS) $< -Q --batch --eval '(org-latex-export-to-pdf)'

.PHONY:	pdf clean
