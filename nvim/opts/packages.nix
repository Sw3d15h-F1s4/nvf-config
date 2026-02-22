{ pkgs, ... }:
{
  vim.extraPackages = with pkgs; [
    fzf
    ripgrep
    fd
    clang
    tree-sitter
  ];
}
