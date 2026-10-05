{ config, pkgs, inputs, ... }:

{
  nixpkgs.overlays = [ inputs.firefox-addons.overlays.default ];
}
