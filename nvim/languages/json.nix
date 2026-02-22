{ ... }:
{

  vim.languages.json = {
    enable = true;

    format = {
      enable = true;
      type = [ "jsonfmt" ];
    };

    lsp = {
      enable = true;
      servers = [ "jsonls" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
