{ config, pkgs, ... }:

{
  programs.librewolf = {
    enable = true;

    profiles.sirex = {

      search.engines = {
        "Nix Packages" = {
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [
              { name = "type"; value = "packages"; }
              { name = "query"; value = "{searchTerms}"; }
            ];
          }];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snoflake.svg";
          definedAliases = [ "@np" ];
        };
      };
      search.force = true;
    };

#     profiles = {
#       default = {
#         isDefault = true;
#         userChrome = ''
#           /* =========================
#              Firefox UI — Catppuccin Mocha Lavender clean
#              ========================= */
#           #TabsToolbar { visibility: collapse !important; }
#           #sidebar-header, #sidebar-panel-header { display: none !important; }
#
#           :root {
#             --bg: #1e1e2e !important;
#             --bg2: #313244 !important;
#             --bg3: #45475a !important;
#             --fg: #cdd6f4 !important;
#             --fg-dim: #a6adc8 !important;
#             --accent: #b4befe !important;
#
#             --toolbarbutton-border-radius: 0px !important;
#             --tab-border-radius: 0px !important;
#             --arrowpanel-border-radius: 0px !important;
#             --panel-border-radius: 0px !important;
#           }
#
#           #main-window, #navigator-toolbox, #titlebar, #nav-bar, #PersonalToolbar {
#             background: var(--bg) !important; color: var(--fg) !important; border: 0 !important; box-shadow: none !important;
#           }
#           #nav-bar { border-bottom: 1px solid var(--bg3) !important; }
#           #PersonalToolbar { border-top: 1px solid var(--bg3) !important; }
#
#           toolbarbutton, .toolbarbutton-1, #back-button, #forward-button, #reload-button, #home-button, #PanelUI-menu-button {
#             background: transparent !important; border: 0 !important; border-radius: 0 !important; box-shadow: none !important; color: var(--fg-dim) !important; fill: var(--fg-dim) !important;
#           }
#           toolbarbutton:hover, .toolbarbutton-1:hover, #back-button:hover, #forward-button:hover, #reload-button:hover, #home-button:hover, #PanelUI-menu-button:hover {
#             background: var(--bg2) !important; color: var(--fg) !important; fill: var(--fg) !important;
#           }
#
#           #urlbar, #searchbar { border: 0 !important; border-radius: 0 !important; box-shadow: none !important; }
#           #urlbar-background { background: var(--bg2) !important; border: 1px solid var(--bg3) !important; border-radius: 0 !important; box-shadow: none !important; }
#           .urlbar-input-container, .urlbar-input-box, .searchbar-textbox { background: transparent !important; border: 0 !important; border-radius: 0 !important; box-shadow: none !important; }
#           #urlbar[focused="true"] #urlbar-background, #urlbar[open] #urlbar-background { border-color: var(--accent) !important; }
#           #urlbar-input, .searchbar-textbox input { color: var(--fg) !important; }
#
#           .urlbarView, .panel-arrowcontent, .panel-subview-body, menupopup, #appMenu-popup {
#             background: var(--bg) !important; color: var(--fg) !important; border: 1px solid var(--bg3) !important; border-radius: 0 !important; box-shadow: none !important;
#           }
#           .urlbarView-row[selected], menupopup > menuitem[selected], menupopup > menu[_moz-menuactive="true"], menuitem:hover, menu:hover {
#             background: var(--bg2) !important; color: var(--fg) !important;
#           }
#
#           *, *::before, *::after { border-radius: 0 !important; }
#         '';
#         extensions = {
#           force = true;
#         };
#       };
#     };
#     policies = {
#       Preferences = {
#         "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
#       };
#       Cookies = {
#         "Allow" = [
#           "https://element.io"
#           "https://discord.com"
#           "https://github.com"
#           "https://qwen.ai"
#         ];
#         "Locked" = true;
#       };
#       DisableTelemetry = true;
#       DisableFirefoxStudies = true;
#       ExtensionSettings = {
#         "{8446b178-c865-4f5c-8ccc-1d7887811ae3}" = {
#           install_url = "https://addons.mozilla.org/firefox/downloads/latest/catppuccin-mocha-lavender-git/latest.xpi";
#           installation_mode = "force_installed";
#         };
#         "{3c078156-979c-498b-8990-85f7987dd929}" = {
#           install_url = "https://addons.mozilla.org/firefox/downloads/latest/sidebery/latest.xpi";
#           installation_mode = "force_installed";
#         };
#         # Stylus
#         "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}" = {
#           install_url = "https://addons.mozilla.org/firefox/downloads/latest/styl-us/latest.xpi";
#           installation_mode = "force_installed";
#         };
#         "addon@darkreader.org" = {
#   install_url = "https://github.com/darkreader/darkreader/releases/latest/download/darkreader-firefox.xpi";
#   installation_mode = "force_installed";
# };
#       FirefoxHome = {
#         "Search" = false;
#       };
#       HardwareAcceleration = true;
#     };
#   };
};
}
