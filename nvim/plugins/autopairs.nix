{ lib, ... }:
{
  vim.autopairs = {
    nvim-autopairs = {
      enable = true;

      setupOpts = {
        enabled = lib.generators.mkLuaInline ''function(bufnr) return true end'';
        disable_filetype = [ "TelescopePrompt" "spectre_panel" "snacks_picker_input" "NvimTree"];
        disable_in_macro = true;
        disable_in_visualblock = false;
        disable_in_replace_mode = true;
        ignored_next_char = lib.generators.mkLuaInline ''[=[[%w%%%'%[%"%.%`%$]]=]'';
        enable_moveright = true;
        enable_afterquote = true;
        enable_check_bracket_line = true;
        enable_bracket_in_quote = true;
        enable_abbr = false;
        break_undo = true;
        check_ts = false;
        map_cr = true;
        map_bs = true;
        map_c_h = false;
        map_c_w = false;
      };
    };
  };
}
