{ ... }:
{

  vim.statusline.lualine = {
    enable = true;

    activeSection.a = [
      '' { "mode", icons_enabled = true, separator = { left = '', right = '' }, } ''
      '' { "", draw_empty = true, separator = { left = ' ', right = '' } } ''
    ];
    activeSection.b = [ 
      '' { "filetype", colored = true, icon_only = true, icon = { align = 'left' } } '' 
      '' { "filename", symbols = {modified = ' ', readonly = ' '}, separator = {right = ''} } '' 
      '' { "", draw_empty = true, separator = { left = ' ', right = '' } } ''
    ];
    activeSection.c = [ 
      '' { "diff", colored = false, 
            diff_color = { added = 'DiffAdd', modified = 'DiffChange', removed = 'DiffDelete', },
            symbols = {added = '+', modified = '~', removed = '-'},
            separator = {right = ''} } ''
    ];

    activeSection.x = [
      ''
        {
          -- Lsp server name
          function()
            local buf_ft = vim.bo.filetype
            local excluded_buf_ft = { toggleterm = true, NvimTree = true, ["neo-tree"] = true, TelescopePrompt = true }

            if excluded_buf_ft[buf_ft] then
              return ""
              end

            local bufnr = vim.api.nvim_get_current_buf()
            local clients = vim.lsp.get_clients({ bufnr = bufnr })

            if vim.tbl_isempty(clients) then
              return "No Active LSP"
            end

            local active_clients = {}
            for _, client in ipairs(clients) do
              table.insert(active_clients, client.name)
            end

            return table.concat(active_clients, ", ")
          end,
          icon = ' ',
          separator = {left = ''},
        }
      ''
      ''
        {
          "diagnostics",
          sources = {'nvim_lsp', 'nvim_diagnostic', 'nvim_diagnostic', 'vim_lsp', 'coc'},
          symbols = {error = '󰅙  ', warn = '  ', info = '  ', hint = '󰌵 '},
          colored = true,
          update_in_insert = false,
          always_visible = false,
          diagnostics_color = {
            color_error = { fg = 'red' },
            color_warn = { fg = 'yellow' },
            color_info = { fg = 'cyan' },
          },
        }
      ''
    ];

    activeSection.y =[
      ''
        {
          "",
          draw_empty = true,
          separator = { left = '', right = '' }
        }
      ''
      ''
        {
          'searchcount',
          maxcount = 999,
          timeout = 120,
          separator = {left = ''}
        }
      ''
      ''
        {
          "branch",
          icon = ' •',
          separator = {left = ''}
        }
      ''
    ];

    activeSection.z = [
      ''
        {
          "",
          draw_empty = true,
          separator = { left = '', right = '' }
        }
      ''
      ''
        {
          "progress",
          separator = {left = ''}
        }
      ''
      ''
        {"location"}
      ''
      ''
        {
          "fileformat",
          color = {fg='black'},
          symbols = {
            unix = '', -- e712
            dos = '',  -- e70f
            mac = '',  -- e711
          },
          separator = { right = '' }
        }
      ''
    ];

  };

  vim.theme = {
      enable = true;
      name = "everforest";
      style = "hard";
      transparent = true;

      extraConfig = ''
        vim.api.nvim_create_autocmd('ColorScheme', {
          group = vim.api.nvim_create_augroup('custom_highlights_everforest', {}),
          pattern = 'everforest',
          callback = function()
            local config = vim.fn['everforest#get_configuration']()
            local palette = vim.fn['everforest#get_palette'](config.background, config.colors_override)
            local set_hl = vim.fn['everforest#highlight']

            -- NvChad style telescope (it do look good!)
            set_hl('TelescopeNormal', palette.none, palette.bg1)
            set_hl('TelescopeBorder', palette.none, palette.bg1)
            set_hl('TelescopePreviewTitle', palette.bg0, palette.green)
            set_hl('TelescopePromptTitle', palette.bg0, palette.orange)
            set_hl('TelescopePromptNormal', palette.none, palette.bg2)
            set_hl('TelescopePromptBorder', palette.none, palette.bg2)
            set_hl('TelescopeResultsTitle', palette.bg0, palette.bg1)

            set_hl('WhichKeyNormal', palette.none, palette.bg1)
            set_hl('WhichKeyTitle', palette.none, palette.green)
          end
        })
      '';
    };

}
