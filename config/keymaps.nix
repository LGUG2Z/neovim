{
  config.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  config.keymaps = [
    {
      mode = "";
      key = "<Space>";
      action = "<Nop>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = {
        noremap = true;
        silent = true;
      };
    }

    # Window navigation
    {
      action = "<C-w>h";
      key = "<C-h>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Resize window with Ctrl + arrow keys
    {
      action = "<cmd>resize -4<CR>";
      key = "<C-Up>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>resize +4<CR>";
      key = "<C-Down>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>vertical resize -4<CR>";
      key = "<C-Left>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>vertical resize +4<CR>";
      key = "<C-Right>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Navigate buffers
    {
      action = "<cmd>bprevious<CR>";
      key = "[b";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "]b";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Navigate tabs
    {
      action = "<cmd>tabnew<CR>";
      key = "<C-t>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Move text up and down
    {
      action = "<cmd>move .+1<CR>==";
      key = "<A-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>move .-2<CR>==";
      key = "<A-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Turn off search highlight
    {
      action = "<cmd>nohl<CR>";
      key = "<C-n>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Save files
    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Close buffer
    {
      action = "<cmd>bdelete<CR>";
      key = "<C-x>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Close window
    {
      action = "<cmd>q<CR>";
      key = "<C-q>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Stay in visual mode while indenting
    {
      action = "<gv";
      key = "<";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    # Move text up and down in visual mode
    {
      action = ":move '>+1<CR>gv=gv";
      key = "<A-j>";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    {
      action = ":move '<-2<CR>gv=gv";
      key = "<A-k>";
      mode = "v";
      options = { noremap = true; silent = true; };
    }
    # Visual mode paste
    {
      action = ''"_dP'';
      key = "p";
      mode = "v";
      options = { noremap = true; silent = true; };
    }

    ## Plugins

    # Vim-tmux-navigator
    {
      action = "<cmd><C-U>TmuxNavigateLeft<CR>";
      key = "<C-h>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateDown<CR>";
      key = "<C-j>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateUp<CR>";
      key = "<C-k>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd><C-U>TmuxNavigateRight<CR>";
      key = "<C-l>";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # nvim-hlslens
    {
      action = "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>";
      key = "n";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>";
      key = "N";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "*<Cmd>lua require('hlslens').start()<CR>";
      key = "*";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "#<Cmd>lua require('hlslens').start()<CR>";
      key = "#";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "g*<Cmd>lua require('hlslens').start()<CR>";
      key = "g*";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "g#<Cmd>lua require('hlslens').start()<CR>";
      key = "g#";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Alpha dashboard
    {
      action = "<cmd>Alpha<CR>";
      key = "<Leader>a";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Nvim-tree
    {
      action = "<cmd>NvimTreeToggle<CR>";
      key = "<leader>/";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Luasnip
    {
      action = "<cmd>lua require'luasnip'.expand()<CR>";
      key = "<C-k>";
      mode = "i";
      options = { silent = true; };
    }

    ## Git
    # Fugitive
    {
      action = "<cmd>Gwrite<CR>";
      key = "<leader>ga";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Git commit<CR>";
      key = "<leader>gc";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Gitsigns
    {
      action = "<cmd>lua require('gitsigns').next_hunk()<cr>";
      key = "]x";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>lua require('gitsigns').prev_hunk()<cr>";
      key = "[x";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>lua require('gitsigns').preview_hunk()<cr>";
      key = "<leader>gp";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>lua require('gitsigns').stage_hunk()<cr>";
      key = "<leader>gs";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>";
      key = "<leader>gu";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>lua require('gitsigns').reset_hunk()<cr>";
      key = "<leader>gr";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Gitsigns diffthis HEAD<cr>";
      key = "<leader>gd";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Neogit
    {
      action = "<cmd>Neogit<CR>";
      key = "<leader>gg";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # Diffview
    {
      action = "<cmd>DiffviewOpen<CR>";
      key = "<leader>gD";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>DiffviewFileHistory<CR>";
      key = "<leader>gh";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    # LazyGit
    {
      action = "<cmd>LazyGit<CR>";
      key = "<leader>gl";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    ## LSP and diagnostics
    # Trouble
    {
      action = "<cmd>TroubleToggle<CR>";
      key = "<leader>dx";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Trouble workspace_diagnostics<cr>";
      key = "<leader>dw";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Trouble document_diagnostics<cr>";
      key = "<leader>dd";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Trouble loclist<cr>";
      key = "<leader>dl";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>Trouble quickfix<cr>";
      key = "<leader>dq";
      mode = "n";
      options = { noremap = true; silent = true; };
    }

    # Todo-comments
    {
      action = "<cmd>TodoTrouble<cr>";
      key = "<leader>dt";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>st";
      mode = "n";
      options = { noremap = true; silent = true; };
    }
  ];

}
