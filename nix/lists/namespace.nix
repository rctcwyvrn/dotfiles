{
    pkgs ? import <nixpkgs> {}
}:
{
    pkgs = pkgs;
    base = import ./base.nix pkgs;
    ctf = import ./ctf.nix pkgs;
    dev =  import ./dev.nix pkgs;
}