{ pkgs, lib, ... }:
{

  vim.autocomplete = {
    blink-cmp = {
      enable = true;

      friendly-snippets.enable = true;

      mappings = {
        complete        = "<C-y>";
        confirm         = "<C-space>";
        next            = "<Tab>";
        previous        = "<S-Tab>";
        close           = "<C-e>";
        scrollDocsUp    = "<C-d>";
        scrollDocsDown  = "<C-f>";
      };

      setupOpts = {
        sources = {
          default = [ "lsp" "path" "snippets" "buffer" "latex" ];

          providers = {

            latex = {
              opts = {
                insert_command = lib.generators.mkLuaInline ''
                  function(ctx)
                    local ft = vim.api.nvim_get_option_value("filetype", {
                      scope = "local",
                      buf = ctx.bufnr,
                    })
                    if ft == "tex" then
                      return true
                    end
                    return false
                    end
                '';
              };
            };

          };
        };

        cmdline = {
          sources = [ "cmdline" ];

          keymap = {
            preset = "cmdline";
          };
        };

        completion = {

          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };

          menu = {
            auto_show = true;
          };

        };

        fuzzy = {
          implementation = "prefer_rust";
          prebuilt_binaries.download = false;
        };

        keymap = {
          preset = "default";
        };
      };

      sourcePlugins = {
        spell = {
          enable = true;
          module = "blink-cmp-spell";
        };

        latex = {
          enable = true;
          module = "blink-cmp-latex";
          package = pkgs.vimPlugins.blink-cmp-latex;
        };

        # TODO: Add bibtex source package!
        # bibtex = {
        #   enable = true;
        #   module = "blink-cmp-bibtex";
        #   package = pkgs.vimPlugins.blink-cmp-bibtex;
        # };
      };

    };
  };
}
