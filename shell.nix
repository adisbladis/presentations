with (import <nixpkgs> {});

let
 tl = (texlive.combine {
   inherit (texlive) scheme-medium wrapfig ulem capt-of
   titlesec preprint enumitem paralist ctex environ
   beamer trimspaces zhnumber changepage framed; });

in mkShell {
  buildInputs = [ tl emacs ];
}
