{ ...}:
{

  vim.binds.whichKey = {
    enable = true;

    register = {};

    setupOpts = {
      notify = false;
      preset = "modern";

      replace = {
        "<space>"   = "SPACE";
        "<leader>"  = "SPACE";
        "<cr>"      = "RETURN";
        "<tab>"     = "TAB";
      };

      win.border = "none";
      win.title = true;
    };
  };

}
