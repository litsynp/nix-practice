{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = {
    self,
    systems,
    nixpkgs,
    ...
  } @ inputs: let
    eachSystem = f:
      nixpkgs.lib.genAttrs (import systems) (
        system:
          f nixpkgs.legacyPackages.${system}
      );
  in {
    packages = eachSystem (pkgs: {
    });

    devShells = eachSystem (pkgs: {
      default = pkgs.mkShell {
        buildInput = with pkgs; [
          # Development dependencies
          neovim
          vim
        ];

        shellHook = ''
          echo "hellow world"
        '';
      };
    });
  };
}
