{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [ vim-rhubarb ];

  keymaps = [
    {
      action = "<cmd>GBrowse<CR>";
      key = "<leader>bro";
      mode = [ "n" ];
    }
    {
      action = ":GBrowse<CR>";
      key = "<leader>bro";
      mode = [ "v" ];
    }
  ];
}
