# Description

This repository can be used to pull default flake.nix files for different programming languages.

# Usage

Pull the files for a specific language by providing the language. For example:

```bash
nix flake init -t github:erwinmintiens/nix-templates#rust
```

creates the flake.nix which is in the `rust` directory.

# Notes

## Python

The Python flake.nix file comes pre-loaded with:
- pip
- uv
- ruff
- pre-commit

## Rust

The Rust flake.nix file comes pre-loaded with:
- rustc
- cargo
- rust-analyzer
