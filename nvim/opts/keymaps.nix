{ ... }:
{

  vim.keymaps = [
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
        desc = "Remove search highlights.";
        silent = true;
      }

      {
        mode = "t";
        key = "<Esc><Esc>";
        action = "<C-\\><C-n>";
        desc = "Exit terminal mode";
        silent = true;
      }
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w><C-h>";
        desc = "Move focus to the left window";
        silent = true;
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w><C-l>";
        desc = "Move focus to the right window";
        silent = true;
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w><C-j>";
        desc = "Move focus to the lower window";
        silent = true;
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w><C-k>";
        desc = "Move focus to the upper window";
        silent = true;
      }

      {
        mode = "n";
        key = "<C-d>";
        action = "<C-d>zz";
        silent = true;
      }
      {
        mode = "n";
        key = "<C-u>";
        action = "<C-u>zz";
        silent = true;
      }
      {
        mode = "n";
        key = "n";
        action = "nzzzv";
        silent = true;
      }
      {
        mode = "n";
        key = "N";
        action = "Nzzzv";
        silent = true;
      }
      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv=gv";
        silent = true;
      }
      {
        mode = "v";
        key = "K";
        action = ":m '<-2<CR>gv=gv";
        silent = true;
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
        silent = true;
      }
      {
        mode = "v";
        key = "<";
        action = "<gv";
        silent = true;
      }
  ];
}
