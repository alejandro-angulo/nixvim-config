{
  plugins.lsp = {
    enable = true;
    servers = {
      # python
      ruff.enable = true;

      # lua (nvim config)
      lua-ls.enable = true;

      # rust
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };

      # ocaml
      ocamllsp.enable = true;

      # nix
      nixd.enable = true;
    };
  };
}
