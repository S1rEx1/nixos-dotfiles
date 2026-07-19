{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      cd = "z";
      btw = "echo I use NixOS btw";
      n = "nvim";
      buildb = "sudo nixos-rebuild boot --flake ~/nixos-dotfiles#nixos-btw";
      builds = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
      config = "nvim ~/nixos-dotfiles/";
      f      = "clear && fastfetch";
    };
    initExtra = ''
      export PS1="\[\e[38;2;137;180;250m\]\W \[\e[38;2;203;166;247m\]\$ \[\e[0m\]"
      '';
  };
}
