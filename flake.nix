{
  description = "Tools for working with Coreboot and related [EDK2]";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";

    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = import ./shell.nix {inherit pkgs;};
    });
}
