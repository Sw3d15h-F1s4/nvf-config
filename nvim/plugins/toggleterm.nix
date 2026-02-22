{ ... }:
{

  vim.terminal.toggleterm = {
    enable = true;

    lazygit = {
      enable = true;
      direction = "float";
      mappings.open = "gg";
      package = null;
    };

    mappings.open = "<A-i>";

    setupOpts = {
      direction = "float";

      float_opts = {
        border = "none";
        winblend = 0;
      };

      shade_terminals = false;

      # HACK: link to telescope since i dont feel like adding more
      highlights = {
        NormalFloat = {
          link = "TelescopeNormal";
        };
        FloatBorder = {
          link = "TelescopeBorder";
        };
      };
    };
  };

  vim.binds.whichKey.register = {
    "<leader>g"  = "+Git";
    "<leader>gg" = "Open LazyGit";
  };

}
