{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
        settings = {
          hijack_netrw = true;
        };
      };
    };
    settings.defaults.mappings = {
      "i" = {
        "<C-n>" = {__raw = "require('telescope.actions').cycle_history_next";};
        "<C-p>" = {__raw = "require('telescope.actions').cycle_history_prev";};
      };
    };
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
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>";
      key = "<leader>b";
    }
    {
      action = "<cmd>Telescope file_browser<CR>";
      key = "<leader>B";
    }
  ];
}
