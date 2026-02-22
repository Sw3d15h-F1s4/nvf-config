{ pkgs, lib, ... }:
{
  vim.lsp.servers.texlab = {
    cmd = [ (lib.getExe pkgs.texlab) ];
    root_markers = [ "Tectonic.toml" "texlabroot" ".latexmkrc" "main.tex"];
    filetypes = [ "tex" "plaintex" "bib" ];

    capabilities = {
    };

    settings.texlab = {
      build = {
        executable = "tectonic";
        args = [
          "-X"
          "compile"
          "%f"
          "--synctex"
          "--keep-logs"
          "--keep-intermediates"
        ];
      };

      completion.matcher = "fuzzy-ignore-case";

      diagnosticsDelay = 300;

      formatterLineLength = 120;
      bibtexFormatter = "texlab";
      latexFormatter = "latexindent";
    };

    # Disable inlay hints for texlab becuase they are REALLY annoying.
    on_attach = lib.generators.mkLuaInline ''
      function(client, buf)
        vim.lsp.inlay_hint.enable(false, {bufnr = buf})
      end
    '';
  };

  vim.globals.tex_flavor = "tex";

  vim.treesitter.enable = true;
  vim.treesitter.grammars = [
    pkgs.vimPlugins.nvim-treesitter-parsers.latex
    pkgs.vimPlugins.nvim-treesitter-parsers.bibtex
  ];

  vim.augroups = [
    {
      name = "mylatex";
      clear = true;
      enable = true;
    }
  ];

  vim.autocmds = [
    {
      enable = true;
      group = "mylatex";
      event = [ "FileType" ];
      pattern = [ "*.tex" "tex" ];
      desc = "Set Latex-specific file options.";
      once = false;
      nested = false;
      callback = lib.generators.mkLuaInline ''
        function()
          vim.opt_local.textwidth = 100
          vim.opt_local.wrap = true
        end
      '';
    }
  ];
}
