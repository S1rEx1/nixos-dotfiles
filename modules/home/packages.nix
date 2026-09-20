{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    #############
    # Cli / TUI #
    #############
	  neovim
    fastfetch
    btop
    htop
    tmux
    brightnessctl
    tree
    ranger
    xclip
    feh
    alsa-utils
    bluetui
    localsend
    efibootmgr

    glib

    #########
    # Music #
    #########
    pulseaudio
    pavucontrol


    ##############
    # Messengers #
    ##############
    ayugram-desktop
    vesktop
    element-desktop
    zoom-us


    #######
    # Dev #
    #######
	  nil
	  nixpkgs-fmt
	  nodejs
	  gcc
    maim
    rofi
    python3
    ruff
    rustup

    picom
    killall

    #######
    # GUI #
    #######
    nemo
    obsidian
    electron
    alacritty
  ];
}
