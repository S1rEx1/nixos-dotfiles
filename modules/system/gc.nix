{ config, pkgs, ... }:

{
  nix.gc = {
    automatic = true;
    dates = [
      "03:15"
    ];
    options = "--delete-older-than 7d";
    persistent = true;
  };
}
