pkgs: with pkgs; 

let 
    lily-vim = import ./vim.nix pkgs;
in [
    git
    lily-vim
    which
    htop
    xxd
    # nur.repos.mic92.hello-nur
    wget
    syncthing
    obsidian
]