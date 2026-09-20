{ config, pkgs, ... }:

{
  imports = [
    ./modules/home/bash.nix
    ./modules/home/user.nix
    ./modules/home/dotfiles.nix
    ./modules/home/librewolf.nix
    ./modules/home/packages.nix
    ./modules/home/f4.nix
    ./modules/home/zathura.nix
    ./modules/home/catppuccin.nix
    ./modules/home/ssh.nix
    ./modules/home/serpantinum.nix
  ];
}
