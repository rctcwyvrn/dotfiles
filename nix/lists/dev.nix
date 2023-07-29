pkgs: with pkgs; 

let 
  py-pkg-list = import ./pip.nix;
in [
  # latex stuff
  texlive.combined.scheme-medium

  # python
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
  wireguard-tools
  google-cloud-sdk
]