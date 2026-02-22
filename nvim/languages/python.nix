{ ... }:
{

  vim.languages.python = {
    enable = true;

    format = {
      enable = true;
      type = [ "black" ];
    };

    lsp = {
      enable = true;
      servers = [ "basedpyright" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
