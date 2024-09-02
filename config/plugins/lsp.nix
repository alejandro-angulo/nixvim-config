{pkgs, ...}: {
  plugins.lsp = {
    enable = true;

    keymaps.extra = [
      {
        action = "<cmd>LspStop<CR>";
        key = "<leader>lx";
      }
      {
        action = "<cmd>LspStart<CR>";
        key = "<leader>ls";
      }
      {
        action = "<cmd>LspRestart<CR>";
        key = "<leader>lr";
      }
      {
        action = "<cmd>split | lua vim.lsp.buf.definition()<CR>";
        key = "gs";
      }
      {
        action = "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>";
        key = "gv";
      }
      {
        action = "<cmd>tab split | lua vim.lsp.buf.definition()<CR>";
        key = "gn";
      }
    ];

    keymaps.lspBuf = {
      "K" = "hover";
      "gD" = "references";
      "gd" = "definition";
      "gi" = "implementation";
    };

    servers = {
      # python
      ruff.enable = true;
      pyright.enable = true;

      # lua (nvim config)
      lua-ls.enable = true;

      # bash
      bashls.enable = true;

      # haskell
      hls.enable = true;

      # json
      jsonls.enable = true;

      # yaml
      yamlls.enable = true;

      # css
      cssls.enable = true;

      # c++
      clangd.enable = true;

      # elixir
      elixirls.enable = true;

      # nix
      nixd = {
        enable = true;
        settings.formatting.command = ["${pkgs.alejandra}/bin/alejandra"];
      };
    };
  };

  plugins.lsp-format.enable = true;
  plugins.lsp-lines.enable = true;
}
