{ pkgs ? import <nixpkgs> { } }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium preprint lipsum;
  });
in pkgs.mkShell { packages = with pkgs; [ tex ]; }
