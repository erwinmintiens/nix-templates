{
  description = "Resuable nix flake templates";

  outputs = { self, ... }: {
    templates = {
      rust = {
        description = "Base template for Rust projects";
        path = ./templates/rust;
      };
      python = {
        description = "Base template for Python projects";
        path = ./templates/python;
      };
    };
  };
}
