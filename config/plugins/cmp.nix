{
  plugins.cmp = {
    enable = true;
    settings = {
      completion = {keyword_length = 2;};

      mapping = {
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-u>" = "cmp.mapping.scroll_docs(-4)";
        "<C-d>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        # Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        "<CR>" = "cmp.mapping.confirm({ select = true })";
      };

      snippet.expand = ''
        function(args)
          require('luasnip').lsp_expand(args.body)
        end
      '';

      sources = [
        {name = "nvim_lsp";}
        {name = "buffer";}
        {name = "cmdline";}
        {name = "cmp-clippy";}
        {name = "luasnip";}
        {name = "path";}
      ];
    };
  };

  plugins.luasnip.enable = true;
}
