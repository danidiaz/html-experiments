{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages =
         [
            (pkgs.haskellPackages.ghcWithPackages (hpkgs : [
                hpkgs.wai-app-static
                ]))
            pkgs.cabal-install
            pkgs.watchexec
         ];
}
