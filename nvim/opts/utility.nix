{ lib, ... }:
{
  vim.utility = {
    surround = {
      enable = true;
      useVendoredKeybindings = true;

      setupOpts = {
        keymaps = {
          change          = "<leader>sr";
          change_line     = "<leader>sR";
          delete          = "<leader>sd";
          normal          = "<leader>sa";
          normal_cur      = "<leader>sA";
          normal_cur_line = "<leader>sI";
          normal_line     = "<leader>si";
          visual          = "<leader>si";
          visual_line     = "<leader>sI";
          insert          = "<C-s>";
          insert_line     = "<C-S>";
        };
      };
    };

    undotree = {
      enable = true;
    };
  };

  vim.mini.ai.enable = true;

  vim.augroups = [
    {
      enable = true;
      clear = true;
      name = "kickstart";
    }
  ];

  vim.autocmds = [
    {
      desc = "Highlight when yanking text";
      event = ["TextYankPost"];
      group = "kickstart";
      callback = lib.generators.mkLuaInline ''
        function()
          vim.highlight.on_yank()
        end
      '';
    }
  ];

  vim.binds.whichKey.register = {
    "<leader>s" = "+Surround";
  };

}
