{ pkgs ? import <nixpkgs> {} }:
let
  message = "hello world";
in 
pkgs.mkShellNoCC {
  buildInputs = with pkgs; [ cowsay ];
  shellHook = ''
    cowsay ${message}
  '';
}

