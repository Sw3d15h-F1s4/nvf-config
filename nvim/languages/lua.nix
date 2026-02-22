{ ... }:
{

  vim.languages.lua = {
    enable = true;

    extraDiagnostics = {
      enable = true;
      types = [ "luacheck" ];
    };

    format = {
      enable = true;
      type = ["stylua"];
    };

    lsp = {
      enable = true;
      lazydev.enable = true;
      servers = [ "lua-language-server" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
