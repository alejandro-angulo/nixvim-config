{ ... }:
{
  # Use treesitter's indenting
  opts.autoindent = false;

  plugins.treesitter-context.enable = true;
  plugins.treesitter = {
    enable = true;
    settings = {
      highlight.enable = true;
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<CR>";
          node_decremental = "<CR>";
          node_incremental = "<TAB>";
          scope_incremental = "<S-TAB>";
        };
      };
      indent.enable = true;
    };
  };
}
