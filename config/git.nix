{
  plugins.gitsigns = {
    enable = true;
    settings = {
      attach_to_untracked = true;
      current_line_blame = false;
      trouble = true;
    };
  };
  plugins.neogit = {
    enable = true;
    settings.integrations = {
      diffview = true;
    };
  };
  plugins.diffview = {
    enable = true;
  };
  plugins.fugitive = {
    enable = true;
  };
}
