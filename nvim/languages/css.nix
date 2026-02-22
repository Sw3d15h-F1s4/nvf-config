{ ... }:
{

  vim.languages.css = {
    enable = true;

    format = {
      enable = true;
      type = [ "biome" ];
    };

    lsp = {
      enable = true;
      servers = [ "cssls" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
