{
  # Import all your configuration modules here
  # imports = [./bufferline.nix];
  imports = [
    ./plugins/cmp.nix
    ./plugins/gitsigns.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/rhubarb.nix
    ./plugins/telescope.nix
    ./plugins/vim-obsession.nix
  ];

  colorschemes.base16 = {
    enable = true;
    colorscheme = "darktooth";
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
    {
      action = "<cmd>:TransparentToggle<CR>";
      key = "<leader>t";
    }
  ];

  autoCmd = [
    {
      event = ["BufEnter"];
      pattern = ["*"];
      command = "setlocal cursorline";
    }
    {
      event = ["BufLeave"];
      pattern = ["*"];
      command = "setlocal nocursorline";
    }
  ];

  plugins = {
    treesitter.enable = true;
    tmux-navigator.enable = true;
    fugitive.enable = true;
    comment.enable = true;
    rustaceanvim.enable = true;

    /*
    :TransparentEnable
    :TransparentDisable
    :TransparentToggle
    */
    transparent = {
      enable = true;
      settings.exclude_groups = [
        "CursorLine"
        "CursorLineNr"
      ];
    };
  };
}
