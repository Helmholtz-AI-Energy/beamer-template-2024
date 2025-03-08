slides=slides.tex
poster=poster.tex

# Default
all: $(slides)
	latexmk $<

# Build, watch, rebuild and open target in PDF viewer.
preview: $(slides)
	latexmk -pvc $<

# Build the poster
poster: $(poster)
	latexmk $<

# Preview the poster
preview-poster: $(poster)
	latexmk -pvc $<

# Cleanup
clean: _restclean
	latexmk -c

allclean: _restclean
	latexmk -C

# Seems like latexmk's "push @generated_exts" doesn't treat directories.
_restclean:
	rm -rf _minted-*