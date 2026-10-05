{ pkgs, ... }:

{
	home.packages = with pkgs; [
			adwaita-icon-theme
			hicolor-icon-theme
			papirus-icon-theme
			qt6.qtsvg

			onlyoffice-desktopeditors

#############
# Cli / TUI #
#############
			alsa-utils
			bluetui
			brightnessctl
			btop
			efibootmgr
			fastfetch
			feh
			htop
			localsend
			neovim
			opencode
			ranger
			tmux
			tree
			unzip
			xclip
			xwayland-satellite

			glib

			go
			prismlauncher

			fzf

			ddcutil

			bc
			curl
			ffmpeg
			gpu-screen-recorder
			grim
			hyprpicker
			imagemagick
			jq
			mpv
			slurp
			tesseract
			zbar

#########
# Music #
#########
			pavucontrol
			pulseaudio


##############
# Messengers #
##############
			ayugram-desktop
			element-desktop
			vesktop
			zoom-us


#######
# Dev #
#######
			gcc
			lua-language-server
			maim
			nil
			nixd
			nixpkgs-fmt
			nodejs
			pyright
			python3
			rofi
			ruff
			rustup

			killall
			picom

#######
# GUI #
#######
			alacritty
			electron
			foot
			kdePackages.dolphin
			obsidian
			qgis
			tauon
			];
	gtk.iconTheme.name = "Papirus";
}
