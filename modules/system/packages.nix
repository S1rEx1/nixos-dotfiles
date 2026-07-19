{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.iosevka
    iosevka
    nerd-fonts.symbols-only
  ];
}
