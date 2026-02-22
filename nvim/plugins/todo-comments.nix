{ ... }:
{
  vim.notes.todo-comments = {
    enable = true;

    mappings = {
      quickFix = "<leader>cdq";
      telescope = "<leader>cds";
      trouble = "<leader>cdt";
    };
  };

  vim.binds.whichKey.register = {
    "<leader>c" = "+Todo Comments";
    "<leader>cd" = "+Todo Comments";
  };
}
