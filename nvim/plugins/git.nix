{ ... }:
{
  vim.git.gitsigns = {
    enable = true;

    mappings = {
      blameLine     = "<leader>hb";
      diffProject   = "<leader>hD";
      diffThis      = "<leader>hd";
      nextHunk      = "]c";
      previewHunk   = "<leader>hP";
      previousHunk  = "[c";
      resetBuffer   = "<leader>hR";
      resetHunk     = "<leader>hr";
      stageHunk     = "<leader>hs";
      toggleBlame   = "<leader>htb";
      toggleDeleted = "<leader>htd";
      undoStageHunk = "<leader>hu";
   };
  };

  vim.binds.whichKey.register = {
    "<leader>h" = "+Gitsigns";
    "<leader>ht" = "+Toggle";
  };

}
