{
    pkgs ? import <nixpkgs> {} # todo: pin here
}:
{
    pkgs = pkgs;
    base = import ./base.nix pkgs;
    apps = import ./apps.nix pkgs;
    ctf = import ./ctf.nix pkgs;
    dev =  import ./dev.nix pkgs;
}