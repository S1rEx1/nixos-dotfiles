{ ... }:

{
	programs.bash = {
		enable = true;
		shellAliases = {
			cd = "z";
			n = "nvim";
			buildb = "sudo nixos-rebuild boot --flake ~/nixos-dotfiles#nixos-btw";
			builds = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
			config = "nvim ~/nixos-dotfiles/";
			f      = "clear && fastfetch";
			nn = "cd ~/nixos-dotfiles; nvim; cd";
		};
		initExtra = ''
			export PS1='\[\e[38;2;200;200;200m\]\W \[\e[38;2;160;160;160m\]\$ \[\e[0m\]'
			'';
	};
}
