{ config, pkgs, ... }:

{
  home.file.".config/nvim".source = ../../config/nvim;
  home.file.".config/oxwm".source = ../../config/oxwm;
  home.file.".config/tmux".source = ../../config/tmux;
  home.file.".config/alacritty".source = ../../config/alacritty;
  home.file.".config/rofi".source = ../../config/rofi;
  home.file.".config/niri".source = ../../config/niri;
  home.file.".config/foot".source = ../../config/foot;
}
