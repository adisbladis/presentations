with (import (fetchTarball {
  url = https://github.com/NixOS/nixpkgs-channels/archive/2428f5dda13475afba2dee93f4beb2bd97086930.tar.gz;
  sha256 = "1iwl5yaz36lf7v4hps3z9dl3zyq363jmr5m7y4anf0lpn4lczh18";
}) {});

let
  pkg = import ./default.nix;

in mkShell {
  buildInputs = [
    python3Packages.jedi
    python3Packages.epc
    nixops
  ] ++ pkg.buildInputs ++ pkg.propagatedBuildInputs;
}
