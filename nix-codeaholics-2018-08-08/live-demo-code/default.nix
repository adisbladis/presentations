with (import <nixpkgs> {});

python3Packages.buildPythonApplication {

  pname = "timeservice";
  version = "0.0.1";

  propagatedBuildInputs = with python3Packages; [
    cherrypy
  ];

  src = lib.cleanSource ./.;

}
