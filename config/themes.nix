{
  colorschemes.catppuccin = {
    enable = true;
    flavour = "mocha";
    disableBold = false;
    disableItalic = false;
    background.dark = "mocha";
    background.light = "latte";
    styles = {
      functions = [ "italic" ];
      types = [ "italic" ];
    };
    integrations = {
      alpha = true;
      dap = {
        enable_ui = true;
        enabled = true;
      };
      cmp = true;
      leap = true;
      gitsigns = true;
      harpoon = true;
      headlines = true;
      illuminate = {
        enabled = true;
        lsp = true;
      };
      indent_blankline = {
        enabled = true;
        colored_indent_levels = true;
      };
      lsp_saga = true;
      lsp_trouble = true;
      markdown = true;
      mason = true;
      mini = {
        enabled = true;
      };
      native_lsp = {
        enabled = true;
        inlay_hints.background = true;
      };
      neogit = true;
      neotest = true;
      noice = true;
      notify = true;
      nvimtree = true;
      octo = true;
      ufo = true;
      overseer = true;
      rainbow_delimiters = true;
      telescope = {
        enabled = true;
      };
      symbols_outline = true;
      which_key = true;
    };
  };

  # Custom theming for Telescope
  extraConfigLua = ''
    local colors = require("catppuccin.palettes").get_palette()
    local TelescopeColor = {
      -- TelescopeBorder = { fg = colors.surface0, bg = colors.mantle },
      -- TelescopeNormal = { bg = colors.mantle },
    	TelescopeMatching = { fg = colors.flamingo },
    	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

    	TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
    	TelescopePreviewNormal = { bg = colors.mantle },
    	TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },

    	TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
    	TelescopePromptNormal = { bg = colors.surface0, fg = colors.pink },
    	TelescopePromptCounter = { bg = colors.surface0, fg = colors.pink },
    	TelescopePromptPrefix = { bg = colors.surface0, fg = colors.pink },
    	TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },

    	TelescopeResultsBorder = { bg = colors.surface0, fg = colors.surface0 },
    	TelescopeResultsNormal = { bg = colors.surface0 },
    	TelescopeResultsTitle = { bg = colors.pink, fg = colors.mantle },

    }

    for hl, col in pairs(TelescopeColor) do
    	vim.api.nvim_set_hl(0, hl, col)
    end
  '';
}
