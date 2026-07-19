{ config, pkgs, ... }:

{
  home.username = "sirex";
  home.homeDirectory = "/home/sirex";
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "S1rEx1";
        email = "amenhotepyous@gmail.com";
      };
      url."git@github.com:".insteadOf = "https://github.com/";
    };
    # extraConfig = {
    #   url."git@github.com/".insteadOf = "https://github.com/";
    # };
  };
  home.stateVersion = "26.05";
}
