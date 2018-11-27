with (import <nixpkgs> {});

let
 tl = (texlive.combine {
   inherit (texlive) scheme-medium wrapfig ulem capt-of
   titlesec preprint enumitem paralist ctex environ
   beamer trimspaces zhnumber changepage framed
   fvextra minted upquote ifplatform xstring; });
 pythonEnv = python3.withPackages(ps: [
   ps.pygments
 ]);

in mkShell {
  buildInputs = [
    pythonEnv
    emacs
    tl
  ];
}
