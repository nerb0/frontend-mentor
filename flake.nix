{
  description = "";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        config = { };
        pkgs = import nixpkgs { inherit system config; };
      in with pkgs; {
          devShells.default = mkShell {
            buildInputs = [
              live-server
            ];
          };
        });
}
