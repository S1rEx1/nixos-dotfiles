# modules/home/zathura.nix
{ config, pkgs, ... }:

{
  programs.zathura = {
    enable = true;

    options = {
      statusbar-h-padding = 0;
      statusbar-v-padding = 0;
      font = "Iosevka 15";
      recolor = true;
      recolor-keephue = true;
      # default-bg = "rgba(40,40,40,1)"; # Раскомментируй, если хочешь кастомный фон
    };
  };
}
