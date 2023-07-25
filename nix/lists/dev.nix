pkgs: with pkgs; 

let 
  py-pkg-list = import ./py_pkg.nix;
  lily-vim = import ./vim.nix pkgs;
in [
    # vim
    lily-vim

    # latex stuff
    texlive.combined.scheme-medium

    # python
    python3
    (python3.withPackages py-pkg-list)

    # sage
    sage

    # rust
    # rustup
    rustc
    cargo

    # tools
    gdb

    # misc
    nodejs
    flamegraph
    docker
    jq
    nasm
]