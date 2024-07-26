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
      frecency.enable = true;
    };
  };

  keymaps = [
    {
      action = "<cmd>Telescope frecency<CR>";
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
