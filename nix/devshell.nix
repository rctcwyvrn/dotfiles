{
    pkgs ? import <nixpkgs> {}
}:

let 
  base = import ./lists/basic_packages.nix pkgs;
  dev = import ./lists/dev.nix pkgs;
in pkgs.mkShell {
    buildInputs = base ++ dev;
  }