{ ... }:
{

  vim.languages.nix = {
    enable = true;

    extraDiagnostics = {
      enable = true;
      types = [ "statix" "deadnix" ];
    };

    format = {
      enable = true;
      type = ["nixfmt"];
    };

    lsp = {
      enable = true;
      servers = [ "nil" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
