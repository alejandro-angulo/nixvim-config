{ lib, pkgs, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "mermaid"; # -> plugins.mermaid.*
  moduleName = "mermaid"; # -> require("mermaid").setup(settings)
  url = "https://github.com/kevalin/mermaid.nvim";
  description = "Preview, format, lint and render Mermaid diagrams.";
  maintainers = [ ];

  # Not in nixpkgs, so build it ourselves and expose it as the package option
  package = lib.mkOption {
    type = lib.types.package;
    description = "The mermaid.nvim package to use.";
    default = pkgs.vimUtils.buildVimPlugin {
      pname = "mermaid.nvim";
      version = "2026-10-23";
      src = pkgs.fetchFromGitHub {
        owner = "kevalin";
        repo = "mermaid.nvim";
        rev = "4da12693b3b4d63b67d07bafe8340b4abc265c70";
        hash = "sha256-SRg1V6fNlv+4Vrf1+mTNogIT/8X9DEl53+OhXm6crG8=";
      };
    };
  };

  # Point the linter at mermaid-cli from nixpkgs (still overridable via settings)
  extraConfig = cfg: {
    plugins.mermaid.settings = {
      lint.command = lib.mkDefault (lib.getExe pkgs.mermaid-cli);
    };
  };

  settingsExample = {
    format.shift_width = 4;
    lint.enabled = true;
    preview.renderer = "mermaid.js";
  };
}
