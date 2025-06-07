{ pkgs, ... }:
{
  plugins.lsp = {
    enable = true;
    inlayHints = true;

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
        settings.check.command = "clippy";
        # Rely on tooling from dev environment
        package = null;
        installCargo = false;
        installRustc = false;
      };

      # golang
      gopls.enable = true;

      # nix
      nixd = {
        enable = true;
        settings.formatting.command = [ "${pkgs.nixfmt-rfc-style}/bin/nixfmt" ];
      };
    };
  };

  plugins.lsp-format.enable = true;
  plugins.lsp-lines.enable = true;
}
