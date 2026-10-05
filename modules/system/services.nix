{ config, pkgs, ... }:

{
	networking = {
		hostName =  "nixos-btw";
		networkmanager.enable = true;
	};
	time.timeZone = "Europe/Moscow";

	hardware.bluetooth.enable = true;

	services = {
		printing.enable = true;
		power-profiles-daemon.enable = true;
	};
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "26.05";
}
