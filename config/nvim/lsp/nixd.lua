return {
    cmd = { 'nixd' },
    filetypes = { 'nix' },
    root_markers = { 'flake.nix', '.git' },
    settings = {
        nixd = {
            nixpkgs = {
                expr = 'import (builtins.getFlake "/home/sirex/nixos-dotfiles").inputs.nixpkgs.outPath { }',
            },
            formatting = {
                command = { 'nixpkgs-fmt' },
            },
            options = {
                nixos = {
                    expr = '(builtins.getFlake "/home/sirex/nixos-dotfiles").nixosConfigurations.nixos-btw.options',
                },
                home_manager = {
                    expr = '(builtins.getFlake "/home/sirex/nixos-dotfiles").nixosConfigurations.nixos-btw.options.home-manager.users.type.getSubOptions []',
                },
            },
        },
    },
}
