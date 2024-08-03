{
  plugins.lazygit = {
    enable = true;
  };

  keymaps = [
    {
      action = "<cmd>:LazyGit<CR>";
      key = "<leader>lg";
    }
    {
      action = "<cmd>:LazyGitFilter<CR>";
      key = "<leader>lc";
    }
  ];
}
