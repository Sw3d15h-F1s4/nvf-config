{ pkgs, lib, ... }:
{

  vim.telescope = {
    enable = true;

    extensions = [
      {
        name = "fzf";
        packages = [ pkgs.vimPlugins.telescope-fzf-native-nvim ];
        setup = { fzf = { fuzzy = true;}; };
      }
      {
        name = "ui-select";
        packages = [ pkgs.vimPlugins.telescope-ui-select-nvim ];
        setup = lib.generators.mkLuaInline ''
          require("telescope.themes").get_dropdown {}
        '';
      }
    ];

    mappings = {
      buffers             = "<leader><leader>";
      gitCommits          = "<leader>fcvw";
      findFiles           = "<leader>ff";
      liveGrep            = "<leader>fg";
      lspDefinitions      = "<leader>flD";
      diagnostics         = "<leader>fld";
      lspImplementations  = "<leader>fli";
      lspReferences       = "<leader>flr";
      lspWorkspaceSymbols = "<leader>flsw";
      lspDocumentSymbols  = "<leader>flsb";
      lspTypeDefinitions  = "<leader>flt";
      findProjects        = "<leader>fp";
      resume              = "<leader>fr";
      treesitter          = "<leader>fs";
      open                = "<leader>ft";
      gitBranches         = "<leader>fvb";
      gitBufferCommits    = "<leader>fvcb";
      gitFiles            = "<leader>fvf";
      gitStatus           = "<leader>fvs";
      gitStash            = "<leader>fvx";
    };

    setupOpts = {

      defaults = {
        prompt_prefix = "   ";
        selection_caret = "  ";
        sorting_strategy = "ascending";
        layout_strategy = "horizontal";
        layout_config = {
          horizontal = {
            prompt_position = "top";
            # height = 0.8;
            # width = 0.70;
            # preview_width = 0.45;
          };
        };
        file_ignore_patterns = [ "^%.git/" "^%.git$" ".DS_Store" ];
        border = true;
        borderchars = [ " " " " " " " " " " " " " " " " ];
        color_devicons = true;
      };
      pickers = {
        find_files = {
          hidden = true;
        };
        live_grep = {
          additional_args = [ "--hidden" ];
        };
        buffers = {
          sort_mru = true;
        };
        lsp_document_symbols = {
          symbol_width = 40;
        };
      };
      fzf = {
        fuzzy = true;                   # false will only do exact matching
        override_generic_sorter = true; # override the generic sorter
        override_file_sorter = true;    # override the file sorter
        case_mode = "smart_case";       # or "ignore_case" or "respect_case"
      };

    };
  };

  vim.binds.whichKey.register = {
    "<leader>f" = "+Telescope";
    "<leader>fc" = "Commits";
    "<leader>fl" = "+LSP";
    "<leader>fv" = "+Git";
  };

  vim.lazy.plugins.telescope = {
    #HACK it doesn't seem like lz.n's command loading actually works.
    # i tried to use it to load also on TodoTelescope but it didn't.
    # Keys seem to work. Set this to false since it's not really easy
    # to ensure this is loaded before anything that can call vim.ui.select.
    lazy = false;
  };

}
