with (import <nixpkgs> {});

let
  pkg = import ./default.nix;

in dockerTools.buildImage {
  name = pkg.name;
  config = {
    Cmd = [
      # Note: "${pkg}" expands to /nix/store path of pkg
      "${pkg}/bin/timeservice"
    ];
    ExposedPorts = {
      "8080/tcp" = {};
    };
  };
}
