NAME = Palash_Pawar_Resume

.PHONY: pdf watch clean

pdf: $(NAME).pdf

$(NAME).pdf: resume.tex
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=$(NAME) resume.tex
	latexmk -c -jobname=$(NAME) resume.tex

# Rebuild on every save
watch:
	latexmk -pdf -pvc -interaction=nonstopmode -jobname=$(NAME) resume.tex

clean:
	latexmk -C -jobname=$(NAME) resume.tex
