{ config, pkgs, ... }:

{
  users.users.sirex = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" ];
  };
}
