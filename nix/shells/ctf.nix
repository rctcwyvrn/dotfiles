with (import ../lists/namespace.nix {});

import ./make-shell.nix {
    pkgs = pkgs; 
    list = (base ++ dev ++ ctf); 
    name = "ctf";
}