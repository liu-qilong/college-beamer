# .latexmkrc for institute-beamer

$pdf_mode = 1;
$out_dir  = 'build';
$aux_dir  = 'build';

# Engine rule:
# - If collegeBeamer options contain `zh`, use XeLaTeX (Chinese mode).
# - Otherwise, use pdfLaTeX.
#
# Chinese usage in pre.tex:
#   \usepackage[polyu,zh]{collegeBeamer}
#
# English usage in pre.tex:
#   \usepackage[polyu,en]{collegeBeamer}

$pdflatex = 'internal run_latex %O %S';

sub run_latex {
    my @args = @_;
    my $tex_file = pop @args;
    my @latexmk_opts = @args;

    open(my $fh, '<', $tex_file) or die "Cannot open $tex_file: $!";
    my $content = do { local $/; <$fh> };
    close($fh);

    my $engine = 'pdflatex';

    if ($content =~ /\\usepackage\s*\[([^\]]*)\]\s*\{collegeBeamer\}/i) {
        my $pkg_opts = $1;
        for my $opt (split /,/, $pkg_opts) {
            $opt =~ s/^\s+|\s+$//g;
            if (lc($opt) eq 'zh') {
                $engine = 'xelatex';
                last;
            }
        }
    }

    print "[latexmkrc] Using $engine for $tex_file\n";
    return system($engine, @latexmk_opts, $tex_file);
}

$bibtex    = 'bibtex %O %B';
$makeindex = 'makeindex %O -o %D %S';

$clean_ext = 'aux log out toc lof lot bbl blg idx ind ilg nav snm vrb synctex.gz fls fdb_latexmk run.xml bcf dvi ps xdv';
