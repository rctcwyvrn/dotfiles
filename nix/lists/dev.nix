pkgs: with pkgs; 

let 
  py-pkg-list = import ./pip.nix;
  lily-vim = import ./vim.nix pkgs;
in [
    # vim
    lily-vim # doesn't work

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

    # js
    nodejs

    # tools
    gdb

    # misc
    flamegraph
    docker
    jq
    nasm
]