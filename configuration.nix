{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
			./modules/system/bootLoader.nix
			./modules/system/displayManager.nix
			./modules/system/nixpkgs.nix
			./modules/system/packages.nix
			./modules/system/pipewire.nix
			./modules/system/services.nix
			./modules/system/throne.nix
			./modules/system/users.nix
			./modules/system/x11.nix
			./modules/system/zoxide.nix
      ./modules/system/steam.nix
    ];
#  programs.serpantinum.enable = true;
}
