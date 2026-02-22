{ ... }:
{

  vim.languages.clang = {
    enable = true;

    cHeader = true;

    dap = {
      enable = false;
    };

    lsp = {
      enable = true;
      servers = [ "clangd" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
