{
    pkgs,
    list,
    name
}:

pkgs.mkShell {
    buildInputs = list;
    shellHook = ''
    export PS1="\e[36m(${name})\e[0m $BASE_PS1"
    '';
    NIX_SHELL_NAME=name;
}