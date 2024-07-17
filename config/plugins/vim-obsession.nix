{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "vim-obsession";
      src = pkgs.fetchFromGitHub {
        owner = "tpope";
        repo = "vim-obsession";
        rev = "fe9d3e1a9a50171e7d316a52e1e56d868e4c1fe5";
        hash = "sha256-uf4BWCmKU22s5p+pKIM9DIzEFnqMgIOxSxSrhJeRwHQ=";
      };
    })
  ];
}
