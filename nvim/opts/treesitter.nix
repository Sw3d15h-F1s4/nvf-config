{ ... }:
{
  vim.treesitter = {
    enable = true;

    addDefaultGrammars = true;

    fold = true;

    context = {
      enable = true;
    };

    highlight = {
      enable = true;
    };

    indent = {
      enable = false;
    };

    textobjects = {
      enable = true;
    };

  };
}
