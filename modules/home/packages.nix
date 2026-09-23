{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    papirus-icon-theme
    hicolor-icon-theme
    adwaita-icon-theme
    qt6.qtsvg
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
    opencode
    xwayland-satellite
    unzip

    glib

		go

	fzf

	ddcutil

	slurp
	grim
	hyprpicker
	tesseract
	imagemagick
	zbar
	curl
	jq
	ffmpeg
	bc
	mpv
	gpu-screen-recorder

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
    foot
  ];
  gtk.iconTheme.name = "Papirus";
}
