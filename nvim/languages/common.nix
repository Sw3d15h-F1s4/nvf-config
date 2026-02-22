{ ... }:
{

  vim.lsp = {
    enable = true;

    inlayHints.enable = true;

    lightbulb = {
      enable = false;
    };

    mappings = {
      hover = "K";

      codeAction            = "<leader>la";
      openDiagnosticFloat   = "<leader>le";
      format                = "<leader>lf";
      goToDeclaration       = "<leader>lgD";
      goToDefinition        = "<leader>lgd";
      listImplementations   = "<leader>lgi";
      nextDiagnostic        = "<leader>lgn";
      previousDiagnostic    = "<leader>lgp";
      listReferences        = "<leader>lgr";
      goToType              = "<leader>lgt";
      documentHighlight     = "<leader>lH";
      renameSymbol          = "<leader>ln";
      listDocumentSymbols   = "<leader>lS";
      signatureHelp         = "<leader>ls";
      toggleFormatOnSave    = "<leader>ltf";
      addWorkspaceFolder    = "<leader>lwa";
      listWorkspaceFolders  = "<leader>lwl";
      removeWorkspaceFolder = "<leader>lwr";
      listWorkspaceSymbols  = "<leader>lws";
    };

    servers = {
      "*" = {
        root_markers = [".git"];
      };
    };

  };

  vim.binds.whichKey.register = {
    "<leader>l" = "+LSP";
    "<leader>lg" = "+Go To...";
    "<leader>lt" = "+Toggle";
    "<leader>lw" = "+Workspace";
  };

}
