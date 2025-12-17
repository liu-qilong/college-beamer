# Use XeLaTeX by default (pdf_mode=5)
$pdf_mode = 5;

# Ensure shell-escape for minted and friends
$xelatex = 'xelatex -interaction=nonstopmode -synctex=1 -8bit -shell-escape %O %S';
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -8bit -shell-escape %O %S';

# Force biber for biblatex
$bibtex_use = 2;       # 0=bibtex, 1=auto, 2=biber
$biber = 'biber %O %B';

# Reduce noise and stop at errors
$silent = 0;
$force_mode = 0;

# Ensure miniconda bin is on PATH for runtime tools (e.g., minted executable, pygmentize)
$ENV{'PATH'} = '$YOUR_CUSTOM_FILE_PATH:' . $ENV{'PATH'};

# Clean up common aux files (including biblatex)
$clean_ext .= ' %R.bbl %R.bcf %R.run.xml %R.blg %R.fls %R.fdb_latexmk';
# Optionally clean minted cache folders on -C
# NOTE: latexmk doesn't remove directories; you can manually rm -rf _minted-* if needed.
