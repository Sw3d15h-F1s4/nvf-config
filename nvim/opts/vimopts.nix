{ lib, ... }:
{
  vim.globals = {

    loaded_perl_provider = 0;
    loaded_node_provider = 0;
    loaded_ruby_provider = 0;

    mapleader = " ";
    maplocalleader = " ";

  };

  vim.options = {

    breakindent = true;

    undofile = false;

    ignorecase = true;
    smartcase = true;

    signcolumn = "yes";

    updatetime = 250;
    timeoutlen = 300;

    splitright = true;
    splitbelow = true;

    list = true;
    listchars = "nbsp:␣,tab:» ,trail:·";

    cursorline = true;
    cursorlineopt = "both";

    scrolloff = 8;
    sidescroll = 8;

    incsearch = true;
    inccommand = "split";

    termguicolors = true;

    expandtab = true;
    tabstop = 2;
    shiftwidth = 2;

    fillchars = "eob: ";

    hlsearch = true;

  };
}

