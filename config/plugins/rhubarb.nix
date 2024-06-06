{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [rhubarb];

  keymaps = [
    {
      action = "<cmd>GBrowse<CR>";
      key = "<leader>bro";
      mode = ["n"];
    }
    {
      action = ":GBrowse<CR>";
      key = "<leader>bro";
      mode = ["v"];
    }
  ];
}
