{ pkgs, ... }:
{
  lsp = {
    inlayHints.enable = true;

    keymaps = [
      {
        lspBufAction = "hover";
        key = "K";
      }
      {
        lspBufAction = "references";
        key = "gD";
      }
      {
        lspBufAction = "definition";
        key = "gd";
      }
      {
        lspBufAction = "implementation";
        key = "gi";
      }
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

    servers = {
      # markdown
      rumdl.enable = true;

      # python
      ruff.enable = true;
      basedpyright.enable = true;

      # bash
      bashls.enable = true;

      # json
      jsonls.enable = true;

      # yaml
      yamlls.enable = true;

      # css
      cssls.enable = true;

      # c++
      clangd.enable = true;

      terraformls.enable = true;
      tflint.enable = true;

      # rust
      rust_analyzer = {
        enable = true;
        config.check.command = "clippy";
        # Rely on tooling from dev environment
        package = null;
      };

      # golang
      gopls.enable = true;

      # nix
      nixd = {
        enable = true;
        config.formatting.command = [ "${pkgs.nixfmt-rfc-style}/bin/nixfmt" ];
      };
    };
  };

  plugins.lspconfig.enable = true;
  plugins.lsp-format.enable = true;
  plugins.lsp-lines.enable = true;
}
