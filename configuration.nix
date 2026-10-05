{ config, lib, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "electron-41.10.7"
    ];
  };
	   programs.nix-ld.enable = true;
   programs.nix-ld.libraries = with pkgs; [
     stdenv.cc.cc.lib # Базовые библиотеки C/C++
     # Если программа будет ругаться на нехватку библиотек, добавьте их сюда (например: zlib, openssl, xorg.libX11)
   ];

	imports =
		[
		./hardware-configuration.nix
			./modules/system/bootLoader.nix
			./modules/system/displayManager.nix
			./modules/system/gc.nix
			./modules/system/nixpkgs.nix
			./modules/system/packages.nix
			./modules/system/pipewire.nix
			./modules/system/services.nix
			./modules/system/throne.nix
			./modules/system/users.nix
			./modules/system/x11.nix
			./modules/system/zoxide.nix
			./modules/system/steam.nix
			./modules/system/stylix.nix
		];
	nix.settings = {
		warn-dirty = false;
		extra-substituters = [ "https://noctalia.cachix.org" ];
		extra-trusted-public-keys = [ "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" ];
	};
#  programs.serpantinum.enable = true;
}
