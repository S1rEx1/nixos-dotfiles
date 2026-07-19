# modules/home/catppuccin.nix
{ config, pkgs, ... }:

{
  # Устанавливаем пакет с темой Catppuccin
  home.packages = with pkgs; [
    catppuccin-gtk  # Обязательно добавь это
  ];

  # Настройки GTK3
  xdg.configFile."gtk-3.0/settings.ini".text = ''
    [Settings]
    gtk-theme-name = catppuccin-mocha-lavender-standard
    gtk-application-prefer-dark-theme = 1
  '';

  # Настройки GTK4
  xdg.configFile."gtk-4.0/settings.ini".text = ''
    [Settings]
    gtk-theme-name = catppuccin-mocha-lavender-standard
    gtk-application-prefer-dark-theme = 1
  '';

  # Настройки GTK2 (для Pavucontrol и т.д.)
  home.file.".gtkrc-2.0".text = ''
    gtk-theme-name = "catppuccin-mocha-lavender"
  '';

  # Переменные окружения
  home.sessionVariables = {
    GTK_THEME = "catppuccin-mocha-lavender-standard";
    QT_QPA_PLATFORMTHEME = "gtk3";
  };
}
