{ ... }:
{

  vim.lsp.harper-ls = {
    enable = true;

    settings = {

    };
  };

  vim.lsp.servers.harper-ls.filetypes = [ "plaintex" "tex" ];
}
