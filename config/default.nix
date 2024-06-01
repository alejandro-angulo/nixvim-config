{
  # Import all your configuration modules here
  # imports = [./bufferline.nix];
  imports = [
    ./plugins/gitsigns.nix
    ./plugins/lsp.nix
    ./plugins/rhubarb.nix
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
  };

  globals = {
    mapleader = "`";
  };

  keymaps = [
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>f";
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>g";
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
    lualine.enable = true;
    telescope.enable = true;
    treesitter.enable = true;
    tmux-navigator.enable = true;
    fugitive.enable = true;

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
