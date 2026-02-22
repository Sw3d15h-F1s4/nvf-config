{ ... }:
{
  vim.filetree.nvimTree = {
    enable = true;

    mappings = {
      focus = "e";
      refresh = "<leader>tr";
      toggle = "<C-n>";
      findFile = "<leader>tg";
    };

    openOnSetup = false;

    setupOpts = {
      sync_root_with_cwd = true;
      view = {
        cursorline = true;
        width = 30;
      };
      git = {
        enable = true;
        show_on_dirs = true;
        show_on_open_dirs = true;
      };
      diagnostics = {
        enable = true;
      };
    };
  };

  # Required by nvimTree
  vim.visuals.nvim-web-devicons ={
    enable = true;
    setupOpts = {
      color_icons = true;
    };
  };

  vim.globals.loaded_netrw = 1;
  vim.globals.loaded_netrwPlugin = 1;
}
