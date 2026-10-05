{ pkgs, ...}:

{
	stylix.enable = true;
	stylix.polarity = "dark";

	stylix.cursor = {
		package = pkgs.bibata-cursors;
		name = "Bibata-Modern-Ice";
		size = 24; 
	};

	stylix.base16Scheme = {
		base00 = "131314"; # Default Background (mSurface)
			base01 = "201f20"; # Lighter Background (mSurfaceVariant)
			base02 = "46464c"; # Selection Background (Terminal Selection)
			base03 = "909096"; # Comments, Invisibles (Bright Black)
			base04 = "c7c6cc"; # Dark Foreground (mOnSurfaceVariant)
			base05 = "e5e2e2"; # Default Foreground (mOnSurface)
			base06 = "e5e2e2"; # Light Foreground
			base07 = "c4c6d5"; # Light Background (mPrimary)
			base08 = "ffb4ab"; # Red (mError)
			base09 = "d7c0cd"; # Orange / Integers (mTertiary)
			base0A = "c7c6cc"; # Yellow / Classes (mSecondary)
			base0B = "c4c6d5"; # Green / Strings (mPrimary)
			base0C = "c7c6cc"; # Cyan / Regex (Terminal Cyan)
			base0D = "d7c0cd"; # Blue / Functions (mTertiary)
			base0E = "c4c6d5"; # Magenta / Keywords (Terminal Magenta)
			base0F = "909096"; # Deprecated / Tags
	};
}
