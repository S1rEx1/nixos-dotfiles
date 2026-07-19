{ config, pkgs, ... }:

{
  home-manager.users.sirex = {
    dconf.settings = {
        color-scheme = "prefer-dark";
    };

    gtk = {
      enable = true;
      theme = {
        name = "Adwaita-dark";
        package = pkgs.gnome.gnome-themes-extra;
      };
    };
  };

  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita-dark";
  };
}
