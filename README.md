# NVF config

This is a completely standalone Neovim config using NVF. You can try it out by 
running
```bash
nix run github:Sw3d15h-F1s4/nvf-config
```

You can install this in your NixOS configuration by adding the following to your
flake:
```nix
inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    nvf = {
        url = "github:Sw3d15h-F1s4/nvf-config";
        inputs.nixpkgs.follows = "nixpkgs"; #ensure my config is built using your nixpkgs
    };
};
```

and then somewhere else in your usual configuration
```nix
{ inputs, ... }:
{
    environment.systemPackages = [
        inputs.nvf.packages.x86_64-linux.default
    ];
}
```

There's other ways too, check out [nvf's docs](https://nvf.notashelf.dev/).

## My NixOS Config

You can find my nixos config [here](https://www.github.com/Sw3d15h-F1s4/nixos).


