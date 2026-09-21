{ config, pkgs, ... }:

{
  # services.xserver = {
  #   enable = true;
  #   autoRepeatDelay = 200;
  #   autoRepeatInterval = 35;
  #   windowManager.oxwm.enable = true;
  #   xkb = {
  #     layout = "us,ru";
  #     options = "grp:caps_toggle";
  #   };
  # };
  programs.niri = {
    enable = true;
    };
}
