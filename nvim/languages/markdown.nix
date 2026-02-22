{...}: {

  vim.languages.markdown = {
    enable = true;

    extensions = {
      markview-nvim = {
        enable = true;
        setupOpts = {
          preview.iconProvider = "internal";
        };
      };
    };

    extraDiagnostics = {
      enable = true;
      types = [ "markdownlint-cli2" ];
    };

    format = {
      enable = true;
      extraFiletypes = [];
      type = [ "deno_fmt" ];
    };

    lsp = {
      enable = true;
      servers = [ "marksman" ];
    };

    treesitter = {
      enable = true;
    };
  };

}
