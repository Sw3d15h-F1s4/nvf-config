{
  description = "My Neovim Config (Standalone!)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ...} @ inputs: {

    packages.x86_64-linux.default = (inputs.nvf.lib.neovimConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;

      modules = [
        ./nvim
      ];

    }).neovim;

  };
}
