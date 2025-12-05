{
  description = "Python project flake.nix template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        python = pkgs.python3;
      in
      {
        devShells.default = pkgs.mkShell {
          name = "python-dev-shell";

          buildInputs = [
            python
            python.pkgs.pip
            pkgs.uv
            pkgs.ruff
            pkgs.pre-commit
          ];

          shellHook = ''
            echo "Python dev shell activated."
            echo "Using $(python --version)"
          '';
        };
      }
    );
}
