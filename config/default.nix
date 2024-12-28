{ ... }:
{
  # Import all your configuration modules here
  # imports = [./bufferline.nix];
  imports = [
    ./plugins/cmp.nix
    ./plugins/gitsigns.nix
    ./plugins/lazygit.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/rhubarb.nix
    ./plugins/telescope.nix
    ./plugins/vim-obsession.nix
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings.flavour = "mocha";
    settings.transparent_background = true;
  };

  opts = {
    expandtab = true;
    number = true;
    relativenumber = true;
    autoindent = true;
    termguicolors = true;
    tabstop = 4;
    shiftwidth = 4;
    mouse = "a";
    # Open files with all folds expanded (`zM` to collapse all)
    foldlevel = 99;
  };

  globals = {
    mapleader = "`";
  };

  keymaps = [
    {
      action = "<cmd>:set rnu!<CR>";
      key = "<leader>num";
    }
  ];

  autoCmd = [
    {
      event = [ "BufEnter" ];
      pattern = [ "*" ];
      command = "setlocal cursorline";
    }
    {
      event = [ "BufLeave" ];
      pattern = [ "*" ];
      command = "setlocal nocursorline";
    }
  ];

  plugins = {
    treesitter = {
      enable = true;
      settings.highlight.enable = true;
    };
    treesitter-context.enable = true;
    tmux-navigator.enable = true;
    fugitive.enable = true;
    comment.enable = true;
    fidget.enable = true;
  };
}
