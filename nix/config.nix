{ 
    allowUnfree = true; 
    packageOverrides = pkgs: {
        nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
            inherit pkgs;
            };
        nixGL = import (builtins.fetchTarball "https://github.com/guibou/nixGL/archive/main.tar.gz") {
            inherit pkgs;
            };
        lily = let 
          namespace = import "/home/lily/code/dotfiles/nix/lists/namespace.nix" {};
        in
            with namespace; {
                # inherit base apps dev ctf;
                dev = base ++ apps ++ dev;
                ctf = base ++ apps ++ dev ++ ctf;
                laptop = base ++ apps;
            };
        pathsToLink = ["/share" "/bin"];
    };
}