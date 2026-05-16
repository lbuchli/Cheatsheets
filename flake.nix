{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        docName = "formelsammlung";
        typstWithDeps = pkgs.typst.withPackages (ps: with ps; [
          cetz_0_3_4
          fletcher_0_5_8
        ]);
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = docName;
          version = "0.1.0";
          src = ./.;

          nativeBuildInputs = [ typstWithDeps ];

          buildPhase = ''
            typst compile ${docName}.typ
          '';

          installPhase = ''
            mkdir -p $out
            cp ${docName}.pdf $out/
          '';
        };

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            typstWithDeps
            tinymist
          ];
        };
      });
}
