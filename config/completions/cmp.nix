{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "git";}
        {name = "calc";}
      ];

      mapping = {
        "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-b>" = "cmp.mapping.scroll_docs(-4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
      };
    };
  };
}
