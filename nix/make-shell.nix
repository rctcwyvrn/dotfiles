{
    pkgs,
    list
}:

pkgs.mkShell {
    buildInputs = list;
}