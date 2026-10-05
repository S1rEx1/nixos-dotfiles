{ pkgs, ... }:

{
	stylix.targets.firefox.profileNames = [ "sirex" ];

	programs.firefox = {
		enable = true;

		profiles.sirex = {
			settings = {
				"toolkit.legacyUserProfileCustomizations.stylesheets" = true;
				"extensions.autoDisableScopes" = 0;
			};

			userContent = ''
				@-moz-document url-prefix("about:blank") {
					html, body {
						background-color: #121212 !important;
						color-scheme: dark !important;
					}
				}

			@-moz-document url-prefix("about:newtab") {
				:root {
					--newtab-background-color: #121212 !important;
				}

				html, body, #root {
					background-color: #121212 !important;
					color-scheme: dark !important;
				}
			}
			'';

			userChrome = ''
		#sidebar-panel-header {
	display: none;
}
#main-window {
#TabsToolbar > * {
display: none !important;
}

#nav-bar {
	border-color: transparent !important;
}

#sidebar-main, #sidebar-container, #sidebar-launcher-splitter {
display: none !important;
}

#sidebar-box {
padding: 0 !important;
				 border-radius: 0 !important;
border: none !important;
}

#sidebar-box #sidebar {
	box-shadow: none !important;
border: none !important;
outline: none !important;
				 border-radius: 0 !important;
}

#sidebar-splitter {
	--splitter-width: 3px !important;
	min-width: var(--splitter-width) !important;
width: var(--splitter-width) !important;
padding: 0 !important;
margin: 0 calc(-1*var(--splitter-width) + 1px) 0 0 !important;
border: 0 !important;
opacity: 0 !important;

#sidebar-header {
display: none !important;
}
}
}

#sidebar-header {
display: none !important;
}
'';

extensions = {
	packages = with pkgs.firefox-addons; [
		ublock-origin
			sponsorblock
			darkreader
			enhancer-for-youtube
			youtube-shorts-block
			clearurls
			decentraleyes
			sidebery
			vimium
	];
};

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
};
}
