pkgs: with pkgs; 

let 
  py-pkg-list = import ./py_pkg.nix;
in [
    # python
    python3
    (python3.withPackages py-pkg-list)

    # sage
    sage

    # rust
    rustup
    rustc
    cargo

    # tools

    # misc
    nodejs
]